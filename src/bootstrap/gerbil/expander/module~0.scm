(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1784758125)
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
      (__make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args195568%_
        (apply make-instance gx#module-import::t _%$args195568%_)))
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
      (__make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args195565%_
        (apply make-instance gx#module-export::t _%$args195565%_)))
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
      (__make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args195562%_
        (apply make-instance gx#import-set::t _%$args195562%_)))
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
      (__make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args195559%_
        (apply make-instance gx#export-set::t _%$args195559%_)))
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
      (__make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args195556%_
        (apply make-instance gx#import-expander::t _%$args195556%_)))
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
      (__make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args195553%_
        (apply make-instance gx#export-expander::t _%$args195553%_)))
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
      (__make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args195550%_
        (apply make-instance gx#import-export-expander::t _%$args195550%_)))
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
      (lambda (_%path195547%_ _%fun195548%_)
        (call-with-input-file
         (cons 'path: (cons _%path195547%_ gx#source-file-settings))
         _%fun195548%_)))
    (define gx#module-context:::init!
      (lambda (_%self195530%_
               _%id195531%_
               _%super195532%_
               _%ns195533%_
               _%path195534%_)
        (let ((_%self195537%_ _%self195530%_))
          (if (##fx< '11 (##structure-length _%self195537%_))
              (begin
                (##unchecked-structure-set!
                 _%self195537%_
                 _%id195531%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195537%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195537%_
                 _%super195532%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195537%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self195537%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self195537%_
                 _%ns195533%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195537%_
                 _%path195534%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195537%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self195537%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self195537%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self195537%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self195537%_
                     '11
                     (##structure-length _%self195537%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self195363%_ _%ctx195364%_ _%root195365%_)
        (let* ((_%self195368%_ _%self195363%_)
               (_%super195384%_
                (let ((_%$e195378%_ _%root195365%_))
                  (if _%$e195378%_
                      _%$e195378%_
                      (let ((_%$e195381%_ (gx#core-context-root__0)))
                        (if _%$e195381%_
                            _%$e195381%_
                            (let ((__obj195612
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor195613
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj195612
                                      ':init!)))
                                (if __constructor195613
                                    (__constructor195613 __obj195612)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj195612)))))))
          (if _%ctx195364%_
              (let ((_%id195387%_
                     (##structure-ref
                      _%ctx195364%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path195388%_
                     (##structure-ref
                      _%ctx195364%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in195389%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx195364%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e195390%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx195364%_)))))
                (if (##fx< '8 (##structure-length _%self195368%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self195368%_
                       _%id195387%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       (make-hash-table-eq 'size: (##length _%in195389%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       _%super195384%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       _%path195388%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       _%in195389%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195368%_
                       _%e195390%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self195368%_
                           '8
                           (##structure-length _%self195368%_)))
                (##for-each
                 (lambda (_%$%g195391195393%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g195391195393%_
                    _%self195368%_))
                 _%in195389%_))
              (if (##fx< '8 (##structure-length _%self195368%_))
                  (begin
                    (##unchecked-structure-set! _%self195368%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self195368%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self195368%_
                     _%super195384%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self195368%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self195368%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self195368%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self195368%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self195368%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self195368%_
                         '8
                         (##structure-length _%self195368%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self195399%_ _%ctx195400%_)
        (let ((_%root195402%_ '#f))
          (gx#prelude-context:::init!__%
           _%self195399%_
           _%ctx195400%_
           _%root195402%_))))
    (define gx#prelude-context:::init!
      (lambda _g195619_
        (let ((_g195620_ (##length _g195619_)))
          (cond ((##fx= _g195620_ 2)
                 (apply gx#prelude-context:::init!__0 _g195619_))
                ((##fx= _g195620_ 3)
                 (apply gx#prelude-context:::init!__% _g195619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g195619_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self195237%_ _%e195238%_)
        (if (##fx< '3 (##structure-length _%self195237%_))
            (begin
              (##unchecked-structure-set!
               _%self195237%_
               _%e195238%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195237%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195237%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self195237%_
                   '3
                   (##structure-length _%self195237%_)))))
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
      (lambda (_%$%g194863194866%_ _%$%g194864194868%_)
        (gx#core-apply-user-expander__%
         _%$%g194863194866%_
         _%$%g194864194868%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g194734194737%_ _%$%g194735194739%_)
        (gx#core-apply-user-expander__%
         _%$%g194734194737%_
         _%$%g194735194739%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx194605%_)
        (let* ((_%path194607%_
                (##structure-ref _%ctx194605%_ '7 gx#module-context::t '#f))
               (_%path194609%_
                (if (pair? _%path194607%_)
                    (##last _%path194607%_)
                    _%path194607%_)))
          (if (string? _%path194609%_) _%path194609%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path194581%_ _%reload?194582%_ _%eval?194583%_)
        (let ((_%ctx194585%_
               ((gx#current-expander-module-import)
                _%path194581%_
                _%reload?194582%_)))
          (if (and _%ctx194585%_ _%eval?194583%_)
              (gx#eval-module _%ctx194585%_)
              '#!void)
          _%ctx194585%_)))
    (define gx#import-module__0
      (lambda (_%path194590%_)
        (let* ((_%reload?194592%_ '#f) (_%eval?194594%_ '#f))
          (gx#import-module__%
           _%path194590%_
           _%reload?194592%_
           _%eval?194594%_))))
    (define gx#import-module__1
      (lambda (_%path194596%_ _%reload?194597%_)
        (let ((_%eval?194599%_ '#f))
          (gx#import-module__%
           _%path194596%_
           _%reload?194597%_
           _%eval?194599%_))))
    (define gx#import-module
      (lambda _g195621_
        (let ((_g195622_ (##length _g195621_)))
          (cond ((##fx= _g195622_ 1) (apply gx#import-module__0 _g195621_))
                ((##fx= _g195622_ 2) (apply gx#import-module__1 _g195621_))
                ((##fx= _g195622_ 3) (apply gx#import-module__% _g195621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g195621_))))))
    (define gx#eval-module
      (lambda (_%mod194578%_)
        ((gx#current-expander-module-eval) _%mod194578%_)))
    (define gx#core-eval-module
      (lambda (_%obj194557%_)
        (letrec ((_%force-e194559%_
                  (lambda (_%getf194573%_ _%e194574%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf194573%_ _%e194574%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e194574%_))))
          (let _%recur194561%_ ((_%e194563%_ _%obj194557%_))
            (if (##structure-instance-of? _%e194563%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e194566%_
                         (gx#core-context-prelude__% _%e194563%_)))
                    (if _%$e194566%_ (_%recur194561%_ _%$e194566%_) '#!void))
                  (_%force-e194559%_ gx#module-context-e _%e194563%_))
                (if (##structure-instance-of?
                     _%e194563%_
                     'gx#prelude-context::t)
                    (_%force-e194559%_ gx#prelude-context-e _%e194563%_)
                    (if (gx#stx-string? _%e194563%_)
                        (_%recur194561%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e194563%_)))
                        (if (gx#core-library-module-path? _%e194563%_)
                            (_%recur194561%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e194563%_)))
                            (error '"cannot eval module" _%obj194557%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx194537%_)
        (let _%lp194539%_ ((_%e194541%_ _%ctx194537%_))
          (if (or (##structure-instance-of? _%e194541%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e194541%_ 'gx#local-context::t))
              (_%lp194539%_ (##unchecked-structure-ref _%e194541%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e194541%_ 'gx#prelude-context::t)
                  _%e194541%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx194553%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx194553%_))))
    (define gx#core-context-prelude
      (lambda _g195623_
        (let ((_g195624_ (##length _g195623_)))
          (cond ((##fx= _g195624_ 0)
                 (apply gx#core-context-prelude__0 _g195623_))
                ((##fx= _g195624_ 1)
                 (apply gx#core-context-prelude__% _g195623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g195623_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx194528%_)
        (let ((_%$e194530%_ (__hash-get gx#__module-registry _%ctx194528%_)))
          (if _%$e194530%_
              _%$e194530%_
              (let ((_%pre194534%_
                     (let ((__obj195614
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
                        __obj195614
                        _%ctx194528%_)
                       __obj195614)))
                (__hash-put! gx#__module-registry _%ctx194528%_ _%pre194534%_)
                _%pre194534%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath194396%_ _%reload?194397%_)
        (letrec ((_%import-source194399%_
                  (lambda (_%path194487%_)
                    (if (member _%path194487%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         (##append
                          (##member
                           _%path194487%_
                           (reverse (gx#current-expander-path)))
                          (cons _%path194487%_ '())))
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
                                      (let ((_g195625_
                                             (gx#core-read-module
                                              _%path194487%_)))
                                        (begin
                                          (let ((_g195626_
                                                 (if (##values? _g195625_)
                                                     (##values-length
                                                      _g195625_)
                                                     1)))
                                            (if (not (##fx= _g195626_ 4))
                                                (error "Context expects 4 values"
                                                       _g195626_)))
                                          (let ((_%pre194495%_
                                                 (##values-ref _g195625_ 0))
                                                (_%id194496%_
                                                 (##values-ref _g195625_ 1))
                                                (_%ns194497%_
                                                 (##values-ref _g195625_ 2))
                                                (_%body194498%_
                                                 (##values-ref _g195625_ 3)))
                                            (let* ((_%prelude194508%_
                                                    (if (##structure-instance-of?
                                                         _%pre194495%_
                                                         'gx#prelude-context::t)
                                                        _%pre194495%_
                                                        (if (##structure-instance-of?
                                                             _%pre194495%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre194495%_)
                                                            (if (string? _%pre194495%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre194495%_))
                        (if (not _%pre194495%_)
                            (let ((_%$e194504%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e194504%_
                                  _%$e194504%_
                                  (let ((__obj195615
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
                                     __obj195615
                                     '#f)
                                    __obj195615)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath194396%_
                                   _%pre194495%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx194510%_
                                                    (let ((__obj195616
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
                                                       __obj195616
                                                       _%id194496%_
                                                       _%prelude194508%_
                                                       _%ns194497%_
                                                       _%path194487%_)
                                                      __obj195616))
                                                   (_%body194512%_
                                                    (gx#core-expand-module-begin
                                                     _%body194498%_
                                                     _%ctx194510%_))
                                                   (_%body194514%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body194512%_)
                                                     _%path194487%_
                                                     _%ctx194510%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx194510%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body194514%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx194510%_
                                               _%body194514%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path194487%_
                                               _%ctx194510%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id194496%_
                                               _%ctx194510%_)
                                              _%ctx194510%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path194487%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule194400%_
                  (lambda (_%rpath194416%_)
                    (let* ((_%$%rpath194417194424%_ _%rpath194416%_)
                           (_%$%E194419194427%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath194417194424%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K194420194475%_
                            (lambda (_%refs194430%_ _%origin194431%_)
                              (let ((_%ctx194433%_
                                     (if _%origin194431%_
                                         (gx#core-import-module__%
                                          _%origin194431%_
                                          _%reload?194397%_)
                                         (gx#current-expander-context))))
                                (let _%lp194435%_ ((_%rest194437%_
                                                    _%refs194430%_)
                                                   (_%ctx194438%_
                                                    _%ctx194433%_))
                                  (let* ((_%$%rest194439194447%_
                                          _%rest194437%_)
                                         (_%$%else194441194455%_
                                          (lambda () _%ctx194438%_))
                                         (_%$%K194443194463%_
                                          (lambda (_%rest194458%_ _%id194459%_)
                                            (let ((_%bind194461%_
                                                   (gx#resolve-identifier__%
                                                    _%id194459%_
                                                    '0
                                                    _%ctx194438%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind194461%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind194461%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp194435%_
                                                   _%rest194458%_
                                                   (##unchecked-structure-ref
                                                    _%bind194461%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath194416%_
                                                         _%id194459%_
                                                         _%bind194461%_))))))
                                    (if (pair? _%$%rest194439194447%_)
                                        (let ((_%$%hd194444194466%_
                                               (##car _%$%rest194439194447%_))
                                              (_%$%tl194445194468%_
                                               (##cdr _%$%rest194439194447%_)))
                                          (let* ((_%id194471%_
                                                  _%$%hd194444194466%_)
                                                 (_%rest194473%_
                                                  _%$%tl194445194468%_))
                                            (_%$%K194443194463%_
                                             _%rest194473%_
                                             _%id194471%_)))
                                        (_%$%else194441194455%_))))))))
                      (if (pair? _%$%rpath194417194424%_)
                          (let ((_%$%hd194421194478%_
                                 (##car _%$%rpath194417194424%_))
                                (_%$%tl194422194480%_
                                 (##cdr _%$%rpath194417194424%_)))
                            (let* ((_%origin194483%_ _%$%hd194421194478%_)
                                   (_%refs194485%_ _%$%tl194422194480%_))
                              (_%$%K194420194475%_
                               _%refs194485%_
                               _%origin194483%_)))
                          (_%$%E194419194427%_))))))
          (let ((_%$e194402%_
                 (if (not _%reload?194397%_)
                     (__hash-get gx#__module-registry _%rpath194396%_)
                     '#f)))
            (if _%$e194402%_
                _%$e194402%_
                (if (list? _%rpath194396%_)
                    (_%import-submodule194400%_ _%rpath194396%_)
                    (if (gx#core-library-module-path? _%rpath194396%_)
                        (let ((_%ctx194407%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath194396%_)
                                _%reload?194397%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath194396%_
                           _%ctx194407%_)
                          _%ctx194407%_)
                        (let* ((_%npath194410%_
                                (path-normalize _%rpath194396%_))
                               (_%$e194412%_
                                (if (not _%reload?194397%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath194410%_)
                                    '#f)))
                          (if _%$e194412%_
                              _%$e194412%_
                              (_%import-source194399%_
                               _%npath194410%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath194521%_)
        (let ((_%reload?194523%_ '#f))
          (gx#core-import-module__% _%rpath194521%_ _%reload?194523%_))))
    (define gx#core-import-module
      (lambda _g195627_
        (let ((_g195628_ (##length _g195627_)))
          (cond ((##fx= _g195628_ 1)
                 (apply gx#core-import-module__0 _g195627_))
                ((##fx= _g195628_ 2)
                 (apply gx#core-import-module__% _g195627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g195627_))))))
    (define gx#core-read-module
      (lambda (_%path194378%_)
        (__with-catch
         (lambda (_%exn194380%_)
           (if (datum-parsing-exception? _%exn194380%_)
               (let ((_%pos194382%_
                      (datum-parsing-exception-filepos _%exn194380%_)))
                 (if (= _%pos194382%_ '0)
                     (gx#core-read-module/lang _%path194378%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path194378%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g194384194386%_)
                            (display-exception__%
                             _%exn194380%_
                             _%$%g194384194386%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos194382%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos194382%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path194378%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g194389194391%_)
                      (display-exception__%
                       _%exn194380%_
                       _%$%g194389194391%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path194378%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path194230%_)
        (let _%lp194232%_ ((_%body194234%_
                            (read-syntax-from-file _%path194230%_))
                           (_%pre194235%_ '#f)
                           (_%ns194236%_ '#f)
                           (_%pkg194237%_ '#f))
          (let* ((_%$%e194238194262%_ _%body194234%_)
                 (_%$%E194254194288%_
                  (lambda ()
                    (let ((_g195629_
                           (if _%pkg194237%_
                               (values _%pre194235%_
                                       _%ns194236%_
                                       _%pkg194237%_)
                               (gx#core-read-module-package
                                _%path194230%_
                                _%pre194235%_
                                _%ns194236%_))))
                      (begin
                        (let ((_g195630_
                               (if (##values? _g195629_)
                                   (##values-length _g195629_)
                                   1)))
                          (if (not (##fx= _g195630_ 3))
                              (error "Context expects 3 values" _g195630_)))
                        (let ((_%pre194266%_ (##values-ref _g195629_ 0))
                              (_%ns194267%_ (##values-ref _g195629_ 1))
                              (_%pkg194268%_ (##values-ref _g195629_ 2)))
                          (let* ((_%prelude194274%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre194266%_)
                                      (gx#syntax-local-e__0 _%pre194266%_)
                                      (if (gx#core-library-module-path?
                                           _%pre194266%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre194266%_)
                                          (if (gx#stx-string? _%pre194266%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre194266%_
                                               _%path194230%_)
                                              (gx#stx-e _%pre194266%_)))))
                                 (_%path-id194276%_
                                  (gx#core-module-path->namespace
                                   _%path194230%_))
                                 (_%pkg-id194278%_
                                  (if _%pkg194268%_
                                      (##string-append
                                       _%pkg194268%_
                                       '"/"
                                       _%path-id194276%_)
                                      _%path-id194276%_))
                                 (_%module-id194280%_
                                  (##string->symbol _%pkg-id194278%_))
                                 (_%module-ns194285%_
                                  (if (eq? _%ns194267%_ '#!void)
                                      '#f
                                      (let ((_%$e194282%_ _%ns194267%_))
                                        (if _%$e194282%_
                                            _%$e194282%_
                                            _%pkg-id194278%_)))))
                            (values _%prelude194274%_
                                    _%module-id194280%_
                                    _%module-ns194285%_
                                    _%body194234%_)))))))
                 (_%$%E194247194320%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194238194262%_)
                        (let ((_%$%e194255194292%_
                               (gx#syntax-e _%$%e194238194262%_)))
                          (let ((_%$%hd194256194295%_
                                 (##car _%$%e194255194292%_))
                                (_%$%tl194257194297%_
                                 (##cdr _%$%e194255194292%_)))
                            (if (eq? (gx#stx-e _%$%hd194256194295%_) 'package:)
                                (if (gx#stx-pair? _%$%tl194257194297%_)
                                    (let ((_%$%e194258194300%_
                                           (gx#syntax-e _%$%tl194257194297%_)))
                                      (let ((_%$%hd194259194303%_
                                             (##car _%$%e194258194300%_))
                                            (_%$%tl194260194305%_
                                             (##cdr _%$%e194258194300%_)))
                                        (let* ((_%pkg194308%_
                                                _%$%hd194259194303%_)
                                               (_%rest194310%_
                                                _%$%tl194260194305%_)
                                               (_%pkg194318%_
                                                (if (gx#identifier?
                                                     _%pkg194308%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg194308%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg194308%_)
                                                            (gx#stx-false?
                                                             _%pkg194308%_))
                                                        (gx#stx-e
                                                         _%pkg194308%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg194308%_)))))
                                          (_%lp194232%_
                                           _%rest194310%_
                                           _%pre194235%_
                                           _%ns194236%_
                                           _%pkg194318%_))))
                                    (_%$%E194254194288%_))
                                (_%$%E194254194288%_))))
                        (_%$%E194254194288%_))))
                 (_%$%E194240194350%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194238194262%_)
                        (let ((_%$%e194248194324%_
                               (gx#syntax-e _%$%e194238194262%_)))
                          (let ((_%$%hd194249194327%_
                                 (##car _%$%e194248194324%_))
                                (_%$%tl194250194329%_
                                 (##cdr _%$%e194248194324%_)))
                            (if (eq? (gx#stx-e _%$%hd194249194327%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl194250194329%_)
                                    (let ((_%$%e194251194332%_
                                           (gx#syntax-e _%$%tl194250194329%_)))
                                      (let ((_%$%hd194252194335%_
                                             (##car _%$%e194251194332%_))
                                            (_%$%tl194253194337%_
                                             (##cdr _%$%e194251194332%_)))
                                        (let* ((_%ns194340%_
                                                _%$%hd194252194335%_)
                                               (_%rest194342%_
                                                _%$%tl194253194337%_)
                                               (_%ns194348%_
                                                (if (gx#identifier?
                                                     _%ns194340%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns194340%_))
                                                    (if (gx#stx-string?
                                                         _%ns194340%_)
                                                        (gx#stx-e _%ns194340%_)
                                                        (if (gx#stx-false?
                                                             _%ns194340%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns194340%_))))))
                                          (_%lp194232%_
                                           _%rest194342%_
                                           _%pre194235%_
                                           _%ns194348%_
                                           _%pkg194237%_))))
                                    (_%$%E194247194320%_))
                                (_%$%E194247194320%_))))
                        (_%$%E194247194320%_))))
                 (_%$%E194239194374%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194238194262%_)
                        (let ((_%$%e194241194354%_
                               (gx#syntax-e _%$%e194238194262%_)))
                          (let ((_%$%hd194242194357%_
                                 (##car _%$%e194241194354%_))
                                (_%$%tl194243194359%_
                                 (##cdr _%$%e194241194354%_)))
                            (if (eq? (gx#stx-e _%$%hd194242194357%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl194243194359%_)
                                    (let ((_%$%e194244194362%_
                                           (gx#syntax-e _%$%tl194243194359%_)))
                                      (let ((_%$%hd194245194365%_
                                             (##car _%$%e194244194362%_))
                                            (_%$%tl194246194367%_
                                             (##cdr _%$%e194244194362%_)))
                                        (let* ((_%prelude194370%_
                                                _%$%hd194245194365%_)
                                               (_%rest194372%_
                                                _%$%tl194246194367%_))
                                          (_%lp194232%_
                                           _%rest194372%_
                                           _%prelude194370%_
                                           _%ns194236%_
                                           _%pkg194237%_))))
                                    (_%$%E194240194350%_))
                                (_%$%E194240194350%_))))
                        (_%$%E194240194350%_)))))
            (_%$%E194239194374%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path194051%_)
        (letrec ((_%default-read-module-body194053%_
                  (lambda (_%inp194222%_)
                    (let _%lp194224%_ ((_%body194226%_ '()))
                      (let ((_%next194228%_ (read-syntax__% _%inp194222%_)))
                        (if (eof-object? _%next194228%_)
                            (reverse _%body194226%_)
                            (_%lp194224%_
                             (cons _%next194228%_ _%body194226%_)))))))
                 (_%read-body194054%_
                  (lambda (_%inp194139%_
                           _%pre194140%_
                           _%ns194141%_
                           _%pkg194142%_
                           _%args194143%_)
                    (let ((_g195631_
                           (if _%pkg194142%_
                               (values _%pre194140%_
                                       _%ns194141%_
                                       _%pkg194142%_)
                               (gx#core-read-module-package
                                _%path194051%_
                                _%pre194140%_
                                _%ns194141%_))))
                      (begin
                        (let ((_g195632_
                               (if (##values? _g195631_)
                                   (##values-length _g195631_)
                                   1)))
                          (if (not (##fx= _g195632_ 3))
                              (error "Context expects 3 values" _g195632_)))
                        (let ((_%pre194145%_ (##values-ref _g195631_ 0))
                              (_%ns194146%_ (##values-ref _g195631_ 1))
                              (_%pkg194147%_ (##values-ref _g195631_ 2)))
                          (let* ((_%prelude194149%_
                                  (gx#import-module__0 _%pre194145%_))
                                 (_%read-module-body194204%_
                                  (let ((_%$e194195%_
                                         (__find (lambda (_%$%e194150194152%_)
                                                   (let* ((_%$%$%e194150194154194164%_
                                                           _%$%e194150194152%_)
                                                          (_%$%else194156194172%_
                                                           (lambda () '#f))
                                                          (_%$%K194158194176%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e194150194154194164%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e194159194179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e194150194154194164%_
                          '1
                          '#f
                          '#f))
                        (_%$%e194160194182%_
                         (##unchecked-structure-ref
                          _%$%$%e194150194154194164%_
                          '2
                          '#f
                          '#f))
                        (_%$%e194161194185%_
                         (##unchecked-structure-ref
                          _%$%$%e194150194154194164%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e194161194185%_ '1)
                       (let ((_%$%e194162194188%_
                              (##unchecked-structure-ref
                               _%$%$%e194150194154194164%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e194162194188%_ 'read-module-body)
                             (_%$%K194158194176%_)
                             (_%$%else194156194172%_)))
                       (_%$%else194156194172%_)))
                 (_%$%else194156194172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude194149%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e194195%_
                                        (let ((_%proc194201%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e194195%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc194201%_)
                                              _%proc194201%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path194051%_
                                               _%pre194145%_
                                               _%proc194201%_)))
                                        _%default-read-module-body194053%_)))
                                 (_%path-id194206%_
                                  (gx#core-module-path->namespace
                                   _%path194051%_))
                                 (_%pkg-id194208%_
                                  (if _%pkg194147%_
                                      (##string-append
                                       _%pkg194147%_
                                       '"/"
                                       _%path-id194206%_)
                                      _%path-id194206%_))
                                 (_%module-id194210%_
                                  (##string->symbol _%pkg-id194208%_))
                                 (_%module-ns194215%_
                                  (let ((_%$e194212%_ _%ns194146%_))
                                    (if _%$e194212%_
                                        _%$e194212%_
                                        _%pkg-id194208%_)))
                                 (_%body194219%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body194204%_
                                         _%inp194139%_))
                                      gx#current-module-reader-args
                                      _%args194143%_))
                                   gx#current-module-reader-path
                                   _%path194051%_)))
                            (values _%prelude194149%_
                                    _%module-id194210%_
                                    _%module-ns194215%_
                                    _%body194219%_)))))))
                 (_%string-e194055%_
                  (lambda (_%obj194133%_ _%what194134%_)
                    (if (string? _%obj194133%_)
                        _%obj194133%_
                        (if (symbol? _%obj194133%_)
                            (##symbol->string _%obj194133%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what194134%_)
                             _%path194051%_
                             _%obj194133%_)))))
                 (_%read-lang-args194056%_
                  (lambda (_%inp194088%_ _%args194089%_)
                    (let* ((_%$%args194090194098%_ _%args194089%_)
                           (_%$%else194092194106%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path194051%_)))
                           (_%$%K194094194121%_
                            (lambda (_%args194109%_ _%prelude194110%_)
                              (let* ((_%pkg194112%_
                                      (pgetq__0 'package: _%args194109%_))
                                     (_%pkg194114%_
                                      (if _%pkg194112%_
                                          (_%string-e194055%_
                                           _%pkg194112%_
                                           '"package")
                                          '#f))
                                     (_%ns194116%_
                                      (pgetq__0 'namespace: _%args194109%_))
                                     (_%ns194118%_
                                      (if _%ns194116%_
                                          (_%string-e194055%_
                                           _%ns194116%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body194054%_
                                 _%inp194088%_
                                 _%prelude194110%_
                                 _%ns194118%_
                                 _%pkg194114%_
                                 _%args194109%_)))))
                      (if (pair? _%$%args194090194098%_)
                          (let ((_%$%hd194095194124%_
                                 (##car _%$%args194090194098%_))
                                (_%$%tl194096194126%_
                                 (##cdr _%$%args194090194098%_)))
                            (let* ((_%prelude194129%_ _%$%hd194095194124%_)
                                   (_%args194131%_ _%$%tl194096194126%_))
                              (_%$%K194094194121%_
                               _%args194131%_
                               _%prelude194129%_)))
                          (_%$%else194092194106%_)))))
                 (_%read-lang194057%_
                  (lambda (_%inp194062%_)
                    (let* ((_%head194064%_ (read-line _%inp194062%_))
                           (_%$e194066%_
                            (string-index__0 _%head194064%_ '#\space)))
                      (if _%$e194066%_
                          (let ((_%lang194071%_
                                 (substring _%head194064%_ '0 _%$e194066%_)))
                            (if (equal? _%lang194071%_ '"#lang")
                                (let* ((_%rest194073%_
                                        (substring
                                         _%head194064%_
                                         (##fx+ _%$e194066%_ '1)
                                         (string-length _%head194064%_)))
                                       (_%args194084%_
                                        (__with-catch
                                         (lambda (_%$%g194074194076%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path194051%_
                                            _%$%g194074194076%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest194073%_
                                            (lambda (_%$%g194079194081%_)
                                              (read-all
                                               _%$%g194079194081%_
                                               read)))))))
                                  (_%read-lang-args194056%_
                                   _%inp194062%_
                                   _%args194084%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path194051%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path194051%_)))))
                 (_%read-e194058%_
                  (lambda (_%inp194060%_)
                    (if (eq? (peek-char _%inp194060%_) '#\#)
                        (_%read-lang194057%_ _%inp194060%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path194051%_)))))
          (gx#call-with-input-source-file _%path194051%_ _%read-e194058%_))))
    (define gx#core-read-module-package
      (lambda (_%path193999%_ _%pre194000%_ _%ns194001%_)
        (letrec ((_%string-e194003%_
                  (lambda (_%e194046%_)
                    (if (symbol? _%e194046%_)
                        (##symbol->string _%e194046%_)
                        (if (string? _%e194046%_)
                            _%e194046%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e194046%_))))))
          (let _%lp194005%_ ((_%dir194007%_ (path-directory _%path193999%_))
                             (_%pkg-path194008%_ '()))
            (let ((_%gerbil.pkg194010%_
                   (path-expand '"gerbil.pkg" _%dir194007%_)))
              (if (##file-exists? _%gerbil.pkg194010%_)
                  (let ((_%plist194012%_
                         (gx#core-library-package-plist__% _%dir194007%_ '#t)))
                    (if (null? _%plist194012%_)
                        (let ((_%pkg194015%_
                               (if (null? _%pkg-path194008%_)
                                   '#f
                                   (string-join _%pkg-path194008%_ '"/"))))
                          (values _%pre194000%_ _%ns194001%_ _%pkg194015%_))
                        (if (list? _%plist194012%_)
                            (let* ((_%root194018%_
                                    (pgetq__0 'package: _%plist194012%_))
                                   (_%pkg194022%_
                                    (let ((_%pkg-path194020%_
                                           (if _%root194018%_
                                               (cons (_%string-e194003%_
                                                      _%root194018%_)
                                                     _%pkg-path194008%_)
                                               _%pkg-path194008%_)))
                                      (if (null? _%pkg-path194020%_)
                                          '#f
                                          (string-join
                                           _%pkg-path194020%_
                                           '"/"))))
                                   (_%ns194029%_
                                    (let ((_%ns194027%_
                                           (let ((_%$e194024%_ _%ns194001%_))
                                             (if _%$e194024%_
                                                 _%$e194024%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist194012%_)))))
                                      (if _%ns194027%_
                                          (_%string-e194003%_ _%ns194027%_)
                                          '#f)))
                                   (_%pre194034%_
                                    (let ((_%$e194031%_ _%pre194000%_))
                                      (if _%$e194031%_
                                          _%$e194031%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist194012%_)))))
                              (values _%pre194034%_
                                      _%ns194029%_
                                      _%pkg194022%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist194012%_))))
                  (let ((_%dir*194038%_
                         (path-strip-trailing-directory-separator
                          _%dir194007%_)))
                    (if (or (__string-empty? _%dir*194038%_)
                            (equal? _%dir194007%_ _%dir*194038%_))
                        (values _%pre194000%_ _%ns194001%_ '#f)
                        (let ((_%xpath194043%_
                               (path-strip-directory _%dir*194038%_))
                              (_%xdir194044%_ (path-directory _%dir*194038%_)))
                          (_%lp194005%_
                           _%xdir194044%_
                           (cons _%xpath194043%_ _%pkg-path194008%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path193997%_)
        (path-strip-extension (path-strip-directory _%path193997%_))))
    (define gx#core-module-path->id
      (lambda (_%path193995%_)
        (##string->symbol (gx#core-module-path->namespace _%path193995%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path193974%_ _%rel193975%_)
        (let* ((_%path193977%_ (gx#stx-e _%stx-path193974%_))
               (_%path193979%_
                (if (__string-empty? (path-extension _%path193977%_))
                    (##string-append _%path193977%_ '".ss")
                    _%path193977%_)))
          (gx#core-resolve-path__%
           _%path193979%_
           (let ((_%$e193982%_ (gx#stx-source _%stx-path193974%_)))
             (if _%$e193982%_ _%$e193982%_ _%rel193975%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path193988%_)
        (let ((_%rel193990%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path193988%_ _%rel193990%_))))
    (define gx#core-resolve-module-path
      (lambda _g195633_
        (let ((_g195634_ (##length _g195633_)))
          (cond ((##fx= _g195634_ 1)
                 (apply gx#core-resolve-module-path__0 _g195633_))
                ((##fx= _g195634_ 2)
                 (apply gx#core-resolve-module-path__% _g195633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g195633_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath193859%_)
        (let* ((_%spath193861%_ (symbol->string (gx#stx-e _%libpath193859%_)))
               (_%spath193863%_
                (substring
                 _%spath193861%_
                 '1
                 (##string-length _%spath193861%_)))
               (_%ext193865%_ (path-extension _%spath193863%_))
               (_%ssi193867%_
                (if (__string-empty? _%ext193865%_)
                    (##string-append _%spath193863%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath193863%_)
                     '".ssi")))
               (_%srcs193871%_
                (if (__string-empty? _%ext193865%_)
                    (##map (lambda (_%ext193869%_)
                             (string-append _%spath193863%_ _%ext193869%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath193863%_ '()))))
          (let _%lp193874%_ ((_%rest193876%_ (load-path)))
            (let* ((_%$%rest193877193886%_ _%rest193876%_)
                   (_%$%E193880193890%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest193877193886%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K193882193961%_
                     (lambda (_%rest193901%_ _%dir193902%_)
                       (letrec ((_%resolve193904%_
                                 (lambda (_%ssi193917%_ _%srcs193918%_)
                                   (let ((_%compiled-path193920%_
                                          (path-expand
                                           _%ssi193917%_
                                           _%dir193902%_)))
                                     (if (##file-exists?
                                          _%compiled-path193920%_)
                                         (path-normalize
                                          _%compiled-path193920%_)
                                         (let _%lpr193922%_ ((_%rest-src193924%_
                                                              _%srcs193918%_))
                                           (let* ((_%$%rest-src193925193933%_
                                                   _%rest-src193924%_)
                                                  (_%$%else193927193941%_
                                                   (lambda ()
                                                     (_%lp193874%_
                                                      _%rest193901%_)))
                                                  (_%$%K193929193949%_
                                                   (lambda (_%rest-src193944%_
                                                            _%src193945%_)
                                                     (let ((_%src-path193947%_
                                                            (path-expand
                                                             _%src193945%_
                                                             _%dir193902%_)))
                                                       (if (##file-exists?
                                                            _%src-path193947%_)
                                                           (path-normalize
                                                            _%src-path193947%_)
                                                           (_%lpr193922%_
                                                            _%rest-src193944%_))))))
                                             (if (pair? _%$%rest-src193925193933%_)
                                                 (let ((_%$%hd193930193952%_
                                                        (##car _%$%rest-src193925193933%_))
                                                       (_%$%tl193931193954%_
                                                        (##cdr _%$%rest-src193925193933%_)))
                                                   (let* ((_%src193957%_
                                                           _%$%hd193930193952%_)
                                                          (_%rest-src193959%_
                                                           _%$%tl193931193954%_))
                                                     (_%$%K193929193949%_
                                                      _%rest-src193959%_
                                                      _%src193957%_)))
                                                 (_%$%else193927193941%_)))))))))
                         (let ((_%$e193906%_
                                (gx#core-library-package-path-prefix
                                 _%dir193902%_)))
                           (if _%$e193906%_
                               (if (string-prefix?
                                    _%$e193906%_
                                    _%spath193863%_)
                                   (let ((_%ssi193913%_
                                          (substring
                                           _%ssi193867%_
                                           (string-length _%$e193906%_)
                                           (##string-length _%ssi193867%_)))
                                         (_%srcs193914%_
                                          (##map (lambda (_%src193911%_)
                                                   (substring
                                                    _%src193911%_
                                                    (string-length
                                                     _%$e193906%_)
                                                    (string-length
                                                     _%src193911%_)))
                                                 _%srcs193871%_)))
                                     (_%resolve193904%_
                                      _%ssi193913%_
                                      _%srcs193914%_))
                                   (_%lp193874%_ _%rest193901%_))
                               (_%resolve193904%_
                                _%ssi193867%_
                                _%srcs193871%_))))))
                    (_%$%K193881193895%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath193859%_))))
                (let ((_%$%try-match193879193898%_
                       (lambda ()
                         (if (null? _%$%rest193877193886%_)
                             (_%$%K193881193895%_)
                             (_%$%E193880193890%_)))))
                  (if (pair? _%$%rest193877193886%_)
                      (let ((_%$%tl193884193966%_
                             (##cdr _%$%rest193877193886%_))
                            (_%$%hd193883193964%_
                             (##car _%$%rest193877193886%_)))
                        (let ((_%dir193969%_ _%$%hd193883193964%_)
                              (_%rest193971%_ _%$%tl193884193966%_))
                          (_%$%K193882193961%_ _%rest193971%_ _%dir193969%_)))
                      (_%$%try-match193879193898%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath193827%_)
        (letrec ((_%resolve193829%_
                  (lambda (_%path193850%_ _%base193851%_)
                    (let ((_%$e193853%_
                           (string-rindex__0 _%base193851%_ '#\/)))
                      (if _%$e193853%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base193851%_ '0 _%$e193853%_)
                             '"/"
                             _%path193850%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path193850%_))))))))
          (let ((_%spath193831%_ (symbol->string (gx#stx-e _%modpath193827%_)))
                (_%mod193832%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod193832%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath193827%_))
            (let ((_%mpath193834%_
                   (symbol->string
                    (##structure-ref
                     _%mod193832%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp193836%_ ((_%spath193838%_ _%spath193831%_)
                                 (_%mpath193839%_ _%mpath193834%_))
                (if (string-prefix? '"../" _%spath193838%_)
                    (let ((_%$e193842%_
                           (string-rindex__0 _%mpath193839%_ '#\/)))
                      (if _%$e193842%_
                          (_%lp193836%_
                           (substring
                            _%spath193838%_
                            '3
                            (string-length _%spath193838%_))
                           (substring _%mpath193839%_ '0 _%$e193842%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath193827%_)))
                    (if (string-prefix? '"./" _%spath193838%_)
                        (_%lp193836%_
                         (substring
                          _%spath193838%_
                          '2
                          (string-length _%spath193838%_))
                         _%mpath193839%_)
                        (_%resolve193829%_
                         _%spath193838%_
                         _%mpath193839%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir193819%_)
        (let ((_%$e193821%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir193819%_))))
          (if _%$e193821%_
              (##string-append (symbol->string _%$e193821%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir193789%_ _%exists?193790%_)
        (let ((_%$e193792%_ (__hash-get gx#__module-pkg-cache _%dir193789%_)))
          (if _%$e193792%_
              _%$e193792%_
              (let* ((_%gerbil.pkg193796%_
                      (path-expand '"gerbil.pkg" _%dir193789%_))
                     (_%plist193806%_
                      (if (or _%exists?193790%_
                              (##file-exists? _%gerbil.pkg193796%_))
                          (let ((_%e193801%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg193796%_
                                  read)))
                            (if (eof-object? _%e193801%_)
                                '()
                                (if (list? _%e193801%_)
                                    _%e193801%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg193796%_
                                     _%e193801%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir193789%_
                 _%plist193806%_)
                _%plist193806%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir193812%_)
        (let ((_%exists?193814%_ '#f))
          (gx#core-library-package-plist__% _%dir193812%_ _%exists?193814%_))))
    (define gx#core-library-package-plist
      (lambda _g195635_
        (let ((_g195636_ (##length _g195635_)))
          (cond ((##fx= _g195636_ 1)
                 (apply gx#core-library-package-plist__0 _g195635_))
                ((##fx= _g195636_ 2)
                 (apply gx#core-library-package-plist__% _g195635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g195635_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx193786%_)
        (gx#core-special-module-path? _%stx193786%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx193784%_)
        (gx#core-special-module-path? _%stx193784%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx193779%_ _%char193780%_)
        (if (gx#identifier? _%stx193779%_)
            (if (interned-symbol? (gx#stx-e _%stx193779%_))
                (let ((_%str193782%_
                       (symbol->string (gx#stx-e _%stx193779%_))))
                  (if (##fx> (##string-length _%str193782%_) '1)
                      (eq? (string-ref _%str193782%_ '0) _%char193780%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx193773%_)
        (gx#core-bound-identifier?__%
         _%stx193773%_
         (lambda (_%$%g193774193776%_)
           (gx#expander-binding?__%
            _%$%g193774193776%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx193767%_)
        (gx#core-bound-identifier?__%
         _%stx193767%_
         (lambda (_%$%g193768193770%_)
           (gx#expander-binding?__% _%$%g193768193770%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx193754%_)
        (letrec ((_%module-prelude?193756%_
                  (lambda (_%e193762%_)
                    (let ((_%$e193764%_
                           (##structure-instance-of?
                            _%e193762%_
                            'gx#module-context::t)))
                      (if _%$e193764%_
                          _%$e193764%_
                          (##structure-instance-of?
                           _%e193762%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx193754%_
           (lambda (_%$%g193757193759%_)
             (gx#expander-binding?__%
              _%$%g193757193759%_
              _%module-prelude?193756%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in193685%_ _%ctx193686%_ _%force-weak?193687%_)
        (let* ((_%$%in193688193697%_ _%in193685%_)
               (_%$%E193690193700%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in193688193697%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K193691193713%_
                (lambda (_%weak?193703%_
                         _%phi193704%_
                         _%key193705%_
                         _%source193706%_)
                  (gx#core-bind!__%
                   _%key193705%_
                   (let* ((_%e193708%_
                           (gx#core-resolve-module-export _%source193706%_))
                          (__obj195617
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
                      __obj195617
                      (##unchecked-structure-ref _%e193708%_ '1 '#f '#f)
                      _%key193705%_
                      _%phi193704%_
                      _%e193708%_
                      (##unchecked-structure-ref _%source193706%_ '1 '#f '#f)
                      (let ((_%$e193710%_ _%force-weak?193687%_))
                        (if _%$e193710%_ _%$e193710%_ _%weak?193703%_)))
                     __obj195617)
                   gx#core-context-rebind?
                   _%phi193704%_
                   _%ctx193686%_))))
          (if (##structure-direct-instance-of?
               _%$%in193688193697%_
               'gx#module-import::t)
              (let* ((_%$%e193692193716%_
                      (##unchecked-structure-ref
                       _%$%in193688193697%_
                       '1
                       '#f
                       '#f))
                     (_%source193719%_ _%$%e193692193716%_)
                     (_%$%e193693193721%_
                      (##unchecked-structure-ref
                       _%$%in193688193697%_
                       '2
                       '#f
                       '#f))
                     (_%key193724%_ _%$%e193693193721%_)
                     (_%$%e193694193726%_
                      (##unchecked-structure-ref
                       _%$%in193688193697%_
                       '3
                       '#f
                       '#f))
                     (_%phi193729%_ _%$%e193694193726%_)
                     (_%$%e193695193731%_
                      (##unchecked-structure-ref
                       _%$%in193688193697%_
                       '4
                       '#f
                       '#f))
                     (_%weak?193734%_ _%$%e193695193731%_))
                (_%$%K193691193713%_
                 _%weak?193734%_
                 _%phi193729%_
                 _%key193724%_
                 _%source193719%_))
              (_%$%E193690193700%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in193739%_)
        (let* ((_%ctx193741%_ (gx#current-expander-context))
               (_%force-weak?193743%_ '#f))
          (gx#core-bind-import!__%
           _%in193739%_
           _%ctx193741%_
           _%force-weak?193743%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in193745%_ _%ctx193746%_)
        (let ((_%force-weak?193748%_ '#f))
          (gx#core-bind-import!__%
           _%in193745%_
           _%ctx193746%_
           _%force-weak?193748%_))))
    (define gx#core-bind-import!
      (lambda _g195637_
        (let ((_g195638_ (##length _g195637_)))
          (cond ((##fx= _g195638_ 1) (apply gx#core-bind-import!__0 _g195637_))
                ((##fx= _g195638_ 2) (apply gx#core-bind-import!__1 _g195637_))
                ((##fx= _g195638_ 3) (apply gx#core-bind-import!__% _g195637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g195637_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in193671%_ _%ctx193672%_)
        (gx#core-bind-import!__% _%in193671%_ _%ctx193672%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in193677%_)
        (let ((_%ctx193679%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in193677%_ _%ctx193679%_))))
    (define gx#core-bind-weak-import!
      (lambda _g195639_
        (let ((_g195640_ (##length _g195639_)))
          (cond ((##fx= _g195640_ 1)
                 (apply gx#core-bind-weak-import!__0 _g195639_))
                ((##fx= _g195640_ 2)
                 (apply gx#core-bind-weak-import!__% _g195639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g195639_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out193564%_)
        (letrec ((_%subst193566%_
                  (lambda (_%key193611%_)
                    (let* ((_%$%key193612193620%_ _%key193611%_)
                           (_%$%else193614193628%_ (lambda () _%key193611%_))
                           (_%$%K193616193658%_
                            (lambda (_%mark193631%_ _%id193632%_)
                              (let* ((_%$%mark193633193639%_ _%mark193631%_)
                                     (_%$%E193635193642%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark193633193639%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K193636193650%_
                                      (lambda (_%subst193645%_)
                                        (let ((_%$e193647%_
                                               (if _%subst193645%_
                                                   (hash-get
                                                    _%subst193645%_
                                                    _%id193632%_)
                                                   '#f)))
                                          (if _%$e193647%_
                                              _%$e193647%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key193611%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark193633193639%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e193637193653%_
                                            (##unchecked-structure-ref
                                             _%$%mark193633193639%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst193656%_
                                            _%$%e193637193653%_))
                                      (_%$%K193636193650%_ _%subst193656%_))
                                    (_%$%E193635193642%_))))))
                      (if (pair? _%$%key193612193620%_)
                          (let ((_%$%hd193617193661%_
                                 (##car _%$%key193612193620%_))
                                (_%$%tl193618193663%_
                                 (##cdr _%$%key193612193620%_)))
                            (let* ((_%id193666%_ _%$%hd193617193661%_)
                                   (_%mark193668%_ _%$%tl193618193663%_))
                              (_%$%K193616193658%_
                               _%mark193668%_
                               _%id193666%_)))
                          (_%$%else193614193628%_))))))
          (let* ((_%$%out193567193577%_ _%out193564%_)
                 (_%$%E193569193580%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out193567193577%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K193570193587%_
                  (lambda (_%phi193583%_ _%key193584%_ _%ctx193585%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx193585%_ _%phi193583%_)
                     (_%subst193566%_ _%key193584%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out193567193577%_
                 'gx#module-export::t)
                (let* ((_%$%e193571193590%_
                        (##unchecked-structure-ref
                         _%$%out193567193577%_
                         '1
                         '#f
                         '#f))
                       (_%ctx193593%_ _%$%e193571193590%_)
                       (_%$%e193572193595%_
                        (##unchecked-structure-ref
                         _%$%out193567193577%_
                         '2
                         '#f
                         '#f))
                       (_%key193598%_ _%$%e193572193595%_)
                       (_%$%e193573193600%_
                        (##unchecked-structure-ref
                         _%$%out193567193577%_
                         '3
                         '#f
                         '#f))
                       (_%phi193603%_ _%$%e193573193600%_)
                       (_%$%e193574193605%_
                        (##unchecked-structure-ref
                         _%$%out193567193577%_
                         '4
                         '#f
                         '#f))
                       (_%$%e193575193608%_
                        (##unchecked-structure-ref
                         _%$%out193567193577%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K193570193587%_
                   _%phi193603%_
                   _%key193598%_
                   _%ctx193593%_))
                (_%$%E193569193580%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out193490%_ _%rename193491%_ _%dphi193492%_)
        (let* ((_%$%out193493193503%_ _%out193490%_)
               (_%$%E193495193506%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out193493193503%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K193496193518%_
                (lambda (_%weak?193509%_
                         _%name193510%_
                         _%phi193511%_
                         _%key193512%_
                         _%ctx193513%_)
                  (##structure
                   gx#module-import::t
                   _%out193490%_
                   (let ((_%$e193515%_ _%rename193491%_))
                     (if _%$e193515%_ _%$e193515%_ _%name193510%_))
                   (fx+ _%phi193511%_ _%dphi193492%_)
                   _%weak?193509%_))))
          (if (##structure-direct-instance-of?
               _%$%out193493193503%_
               'gx#module-export::t)
              (let* ((_%$%e193497193521%_
                      (##unchecked-structure-ref
                       _%$%out193493193503%_
                       '1
                       '#f
                       '#f))
                     (_%ctx193524%_ _%$%e193497193521%_)
                     (_%$%e193498193526%_
                      (##unchecked-structure-ref
                       _%$%out193493193503%_
                       '2
                       '#f
                       '#f))
                     (_%key193529%_ _%$%e193498193526%_)
                     (_%$%e193499193531%_
                      (##unchecked-structure-ref
                       _%$%out193493193503%_
                       '3
                       '#f
                       '#f))
                     (_%phi193534%_ _%$%e193499193531%_)
                     (_%$%e193500193536%_
                      (##unchecked-structure-ref
                       _%$%out193493193503%_
                       '4
                       '#f
                       '#f))
                     (_%name193539%_ _%$%e193500193536%_)
                     (_%$%e193501193541%_
                      (##unchecked-structure-ref
                       _%$%out193493193503%_
                       '5
                       '#f
                       '#f))
                     (_%weak?193544%_ _%$%e193501193541%_))
                (_%$%K193496193518%_
                 _%weak?193544%_
                 _%name193539%_
                 _%phi193534%_
                 _%key193529%_
                 _%ctx193524%_))
              (_%$%E193495193506%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out193549%_)
        (let* ((_%rename193551%_ '#f) (_%dphi193553%_ '0))
          (gx#core-module-export->import__%
           _%out193549%_
           _%rename193551%_
           _%dphi193553%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out193555%_ _%rename193556%_)
        (let ((_%dphi193558%_ '0))
          (gx#core-module-export->import__%
           _%out193555%_
           _%rename193556%_
           _%dphi193558%_))))
    (define gx#core-module-export->import
      (lambda _g195641_
        (let ((_g195642_ (##length _g195641_)))
          (cond ((##fx= _g195642_ 1)
                 (apply gx#core-module-export->import__0 _g195641_))
                ((##fx= _g195642_ 2)
                 (apply gx#core-module-export->import__1 _g195641_))
                ((##fx= _g195642_ 3)
                 (apply gx#core-module-export->import__% _g195641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g195641_))))))
    (define gx#core-expand-module%
      (lambda (_%stx193389%_)
        (letrec ((_%make-context193391%_
                  (lambda (_%id193468%_)
                    (let* ((_%super193470%_ (gx#current-expander-context))
                           (_%bind-id193472%_ (gx#stx-e _%id193468%_))
                           (_%mod-id193474%_
                            (if (##structure-instance-of?
                                 _%super193470%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super193470%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id193472%_)
                                _%bind-id193472%_))
                           (_%ns193476%_ (symbol->string _%mod-id193474%_))
                           (_%path193486%_
                            (if (##structure-instance-of?
                                 _%super193470%_
                                 'gx#module-context::t)
                                (let ((_%path193478%_
                                       (##unchecked-structure-ref
                                        _%super193470%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path193478%_)
                                          (null? _%path193478%_))
                                      (cons _%bind-id193472%_ _%path193478%_)
                                      (if (not _%path193478%_)
                                          _%bind-id193472%_
                                          (cons _%bind-id193472%_
                                                (cons _%path193478%_ '())))))
                                _%bind-id193472%_))
                           (__obj195618
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
                       __obj195618
                       _%mod-id193474%_
                       _%super193470%_
                       _%ns193476%_
                       _%path193486%_)
                      __obj195618)))
                 (_%valid-module-id?193392%_
                  (lambda (_%id193443%_)
                    (let* ((_%str193445%_ (symbol->string _%id193443%_))
                           (_%len193447%_ (##string-length _%str193445%_)))
                      (if (##fx>= _%len193447%_ '1)
                          (let _%loop193450%_ ((_%index193452%_
                                                (##fx- (##string-length
                                                        _%str193445%_)
                                                       '1)))
                            (if (##fx>= _%index193452%_ '0)
                                (let ((_%c193454%_
                                       (string-ref
                                        _%str193445%_
                                        _%index193452%_)))
                                  (if (or (and (##char>=? _%c193454%_ '#\a)
                                               (##char<=? _%c193454%_ '#\z))
                                          (and (##char>=? _%c193454%_ '#\A)
                                               (##char<=? _%c193454%_ '#\Z))
                                          (and (##char>=? _%c193454%_ '#\0)
                                               (##char<=? _%c193454%_ '#\9))
                                          (##char=? _%c193454%_ '#\_)
                                          (##char=? _%c193454%_ '#\-))
                                      (_%loop193450%_
                                       (##fx- _%index193452%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e193393193403%_ _%stx193389%_)
                 (_%$%E193395193407%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e193393193403%_)))
                 (_%$%E193394193439%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193393193403%_)
                        (let ((_%$%e193396193411%_
                               (gx#syntax-e _%$%e193393193403%_)))
                          (let ((_%$%hd193397193414%_
                                 (##car _%$%e193396193411%_))
                                (_%$%tl193398193416%_
                                 (##cdr _%$%e193396193411%_)))
                            (if (gx#stx-pair? _%$%tl193398193416%_)
                                (let ((_%$%e193399193419%_
                                       (gx#syntax-e _%$%tl193398193416%_)))
                                  (let ((_%$%hd193400193422%_
                                         (##car _%$%e193399193419%_))
                                        (_%$%tl193401193424%_
                                         (##cdr _%$%e193399193419%_)))
                                    (let* ((_%id193427%_ _%$%hd193400193422%_)
                                           (_%body193429%_
                                            _%$%tl193401193424%_))
                                      (if (and (gx#identifier? _%id193427%_)
                                               (gx#stx-list? _%body193429%_))
                                          (if (_%valid-module-id?193392%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx193431%_
                                                      (_%make-context193391%_
                                                       _%id193427%_))
                                                     (_%body193433%_
                                                      (gx#core-expand-module-begin
                                                       _%body193429%_
                                                       _%ctx193431%_))
                                                     (_%body193435%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body193433%_)
                                                       (gx#stx-source
                                                        _%stx193389%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx193431%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body193435%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx193431%_
                                                 _%body193435%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id193427%_
                                                 _%ctx193431%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id193427%_)
                                                  _%body193435%_)
                                                 (gx#stx-source
                                                  _%stx193389%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx193389%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E193395193407%_)))))
                                (_%$%E193395193407%_))))
                        (_%$%E193395193407%_)))))
            (_%$%E193394193439%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body193354%_ _%ctx193355%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx193359%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body193354%_)))
                     (_%$%e193360193367%_ _%stx193359%_)
                     (_%$%E193362193371%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx193359%_)))
                     (_%$%E193361193385%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e193360193367%_)
                            (let ((_%$%e193363193375%_
                                   (gx#syntax-e _%$%e193360193367%_)))
                              (let ((_%$%hd193364193378%_
                                     (##car _%$%e193363193375%_))
                                    (_%$%tl193365193380%_
                                     (##cdr _%$%e193363193375%_)))
                                (if (and (gx#identifier? _%$%hd193364193378%_)
                                         (gx#core-identifier=?
                                          _%$%hd193364193378%_
                                          '%#begin-module))
                                    (let ((_%body193383%_
                                           _%$%tl193365193380%_))
                                      (if (gx#sealed-syntax? _%stx193359%_)
                                          _%body193383%_
                                          (gx#core-expand-module-body
                                           _%body193383%_)))
                                    (_%$%E193362193371%_))))
                            (_%$%E193362193371%_)))))
                (_%$%E193361193385%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx193355%_)))
    (define gx#core-expand-module-body
      (lambda (_%body193051%_)
        (letrec ((_%expand-special193053%_
                  (lambda (_%hd193182%_ _%K193183%_ _%rest193184%_ _%r193185%_)
                    (let* ((_%$%e193186193226%_ _%hd193182%_)
                           (_%$%E193221193230%_
                            (lambda ()
                              (_%K193183%_
                               _%rest193184%_
                               (cons (gx#core-expand-top _%hd193182%_)
                                     _%r193185%_))))
                           (_%$%E193208193242%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193186193226%_)
                                  (let ((_%$%e193222193234%_
                                         (gx#syntax-e _%$%e193186193226%_)))
                                    (let ((_%$%hd193223193237%_
                                           (##car _%$%e193222193234%_))
                                          (_%$%tl193224193239%_
                                           (##cdr _%$%e193222193234%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193223193237%_)
                                               (gx#core-identifier=?
                                                _%$%hd193223193237%_
                                                '%#export))
                                          (_%K193183%_
                                           _%rest193184%_
                                           (cons _%hd193182%_ _%r193185%_))
                                          (_%$%E193221193230%_))))
                                  (_%$%E193221193230%_))))
                           (_%$%E193198193284%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193186193226%_)
                                  (let ((_%$%e193209193246%_
                                         (gx#syntax-e _%$%e193186193226%_)))
                                    (let ((_%$%hd193210193249%_
                                           (##car _%$%e193209193246%_))
                                          (_%$%tl193211193251%_
                                           (##cdr _%$%e193209193246%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193210193249%_)
                                               (gx#core-identifier=?
                                                _%$%hd193210193249%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193211193251%_)
                                              (let ((_%$%e193212193254%_
                                                     (gx#syntax-e
                                                      _%$%tl193211193251%_)))
                                                (let ((_%$%hd193213193257%_
                                                       (##car _%$%e193212193254%_))
                                                      (_%$%tl193214193259%_
                                                       (##cdr _%$%e193212193254%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193213193257%_)
                                                      (let ((_%$%e193218193262%_
                                                             (gx#syntax-e
                                                              _%$%hd193213193257%_)))
                                                        (let ((_%$%hd193219193265%_
                                                               (##car _%$%e193218193262%_))
                                                              (_%$%tl193220193267%_
                                                               (##cdr _%$%e193218193262%_)))
                                                          (let ((_%id193270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193219193265%_))
                    (if (gx#stx-null? _%$%tl193220193267%_)
                        (if (gx#stx-pair? _%$%tl193214193259%_)
                            (let ((_%$%e193215193272%_
                                   (gx#syntax-e _%$%tl193214193259%_)))
                              (let ((_%$%hd193216193275%_
                                     (##car _%$%e193215193272%_))
                                    (_%$%tl193217193277%_
                                     (##cdr _%$%e193215193272%_)))
                                (let ((_%props193280%_ _%$%hd193216193275%_))
                                  (if (gx#stx-null? _%$%tl193217193277%_)
                                      (let ((_%bind193282%_
                                             (gx#resolve-identifier__0
                                              _%id193270%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193282%_
                                         _%props193280%_)
                                        (_%K193183%_
                                         _%rest193184%_
                                         _%r193185%_))
                                      (_%$%E193208193242%_)))))
                            (_%$%E193208193242%_))
                        (_%$%E193208193242%_)))))
              (_%$%E193208193242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193208193242%_))
                                          (_%$%E193208193242%_))))
                                  (_%$%E193208193242%_))))
                           (_%$%E193188193316%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193186193226%_)
                                  (let ((_%$%e193199193288%_
                                         (gx#syntax-e _%$%e193186193226%_)))
                                    (let ((_%$%hd193200193291%_
                                           (##car _%$%e193199193288%_))
                                          (_%$%tl193201193293%_
                                           (##cdr _%$%e193199193288%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193200193291%_)
                                               (gx#core-identifier=?
                                                _%$%hd193200193291%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193201193293%_)
                                              (let ((_%$%e193202193296%_
                                                     (gx#syntax-e
                                                      _%$%tl193201193293%_)))
                                                (let ((_%$%hd193203193299%_
                                                       (##car _%$%e193202193296%_))
                                                      (_%$%tl193204193301%_
                                                       (##cdr _%$%e193202193296%_)))
                                                  (let ((_%hd-bind193304%_
                                                         _%$%hd193203193299%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193204193301%_)
                                                        (let ((_%$%e193205193306%_
                                                               (gx#syntax-e
                                                                _%$%tl193204193301%_)))
                                                          (let ((_%$%hd193206193309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193205193306%_))
                        (_%$%tl193207193311%_ (##cdr _%$%e193205193306%_)))
                    (let ((_%expr193314%_ _%$%hd193206193309%_))
                      (if (gx#stx-null? _%$%tl193207193311%_)
                          (if (gx#core-bind-values? _%hd-bind193304%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193304%_)
                                (_%K193183%_
                                 _%rest193184%_
                                 (cons _%hd193182%_ _%r193185%_)))
                              (_%$%E193198193284%_))
                          (_%$%E193198193284%_)))))
                (_%$%E193198193284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193198193284%_))
                                          (_%$%E193198193284%_))))
                                  (_%$%E193198193284%_))))
                           (_%$%E193187193350%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193186193226%_)
                                  (let ((_%$%e193189193320%_
                                         (gx#syntax-e _%$%e193186193226%_)))
                                    (let ((_%$%hd193190193323%_
                                           (##car _%$%e193189193320%_))
                                          (_%$%tl193191193325%_
                                           (##cdr _%$%e193189193320%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193190193323%_)
                                               (gx#core-identifier=?
                                                _%$%hd193190193323%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193191193325%_)
                                              (let ((_%$%e193192193328%_
                                                     (gx#syntax-e
                                                      _%$%tl193191193325%_)))
                                                (let ((_%$%hd193193193331%_
                                                       (##car _%$%e193192193328%_))
                                                      (_%$%tl193194193333%_
                                                       (##cdr _%$%e193192193328%_)))
                                                  (let ((_%hd-bind193336%_
                                                         _%$%hd193193193331%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193194193333%_)
                                                        (let ((_%$%e193195193338%_
                                                               (gx#syntax-e
                                                                _%$%tl193194193333%_)))
                                                          (let ((_%$%hd193196193341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193195193338%_))
                        (_%$%tl193197193343%_ (##cdr _%$%e193195193338%_)))
                    (let* ((_%expr193346%_ _%$%hd193196193341%_)
                           (_%props193348%_ _%$%tl193197193343%_))
                      (if (and (gx#core-bind-values? _%hd-bind193336%_)
                               (gx#stx-list? _%props193348%_)
                               (not (gx#stx-null? _%props193348%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193336%_)
                            (_%K193183%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193336%_
                                          (cons _%props193348%_ '())))
                                   _%rest193184%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193336%_
                                          (cons _%expr193346%_ '())))
                                   _%r193185%_)))
                          (_%$%E193188193316%_)))))
                (_%$%E193188193316%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193188193316%_))
                                          (_%$%E193188193316%_))))
                                  (_%$%E193188193316%_)))))
                      (_%$%E193187193350%_))))
                 (_%expand-body193054%_
                  (lambda (_%rbody193056%_)
                    (let _%lp193058%_ ((_%rest193060%_ _%rbody193056%_)
                                       (_%body193061%_ '()))
                      (let* ((_%$%rest193062193070%_ _%rest193060%_)
                             (_%$%else193064193078%_
                              (lambda () _%body193061%_))
                             (_%$%K193066193170%_
                              (lambda (_%rest193081%_ _%hd193082%_)
                                (let* ((_%$%e193083193104%_ _%hd193082%_)
                                       (_%$%E193099193108%_
                                        (lambda ()
                                          (_%lp193058%_
                                           _%rest193081%_
                                           (cons (gx#core-expand-expression
                                                  _%hd193082%_)
                                                 _%body193061%_))))
                                       (_%$%E193095193122%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193083193104%_)
                                              (let ((_%$%e193100193112%_
                                                     (gx#syntax-e
                                                      _%$%e193083193104%_)))
                                                (let ((_%$%hd193101193115%_
                                                       (##car _%$%e193100193112%_))
                                                      (_%$%tl193102193117%_
                                                       (##cdr _%$%e193100193112%_)))
                                                  (let ((_%form193120%_
                                                         _%$%hd193101193115%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form193120%_
                                                         gx#special-form-binding?)
                                                        (_%lp193058%_
                                                         _%rest193081%_
                                                         (cons _%hd193082%_
                                                               _%body193061%_))
                                                        (_%$%E193099193108%_)))))
                                              (_%$%E193099193108%_))))
                                       (_%$%E193085193134%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193083193104%_)
                                              (let ((_%$%e193096193126%_
                                                     (gx#syntax-e
                                                      _%$%e193083193104%_)))
                                                (let ((_%$%hd193097193129%_
                                                       (##car _%$%e193096193126%_))
                                                      (_%$%tl193098193131%_
                                                       (##cdr _%$%e193096193126%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193097193129%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193097193129%_
                                                            '%#export))
                                                      (_%lp193058%_
                                                       _%rest193081%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd193082%_)
                                                             _%body193061%_))
                                                      (_%$%E193095193122%_))))
                                              (_%$%E193095193122%_))))
                                       (_%$%E193084193166%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193083193104%_)
                                              (let ((_%$%e193086193138%_
                                                     (gx#syntax-e
                                                      _%$%e193083193104%_)))
                                                (let ((_%$%hd193087193141%_
                                                       (##car _%$%e193086193138%_))
                                                      (_%$%tl193088193143%_
                                                       (##cdr _%$%e193086193138%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193087193141%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193087193141%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl193088193143%_)
                                                          (let ((_%$%e193089193146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl193088193143%_)))
                    (let ((_%$%hd193090193149%_ (##car _%$%e193089193146%_))
                          (_%$%tl193091193151%_ (##cdr _%$%e193089193146%_)))
                      (let ((_%hd-bind193154%_ _%$%hd193090193149%_))
                        (if (gx#stx-pair? _%$%tl193091193151%_)
                            (let ((_%$%e193092193156%_
                                   (gx#syntax-e _%$%tl193091193151%_)))
                              (let ((_%$%hd193093193159%_
                                     (##car _%$%e193092193156%_))
                                    (_%$%tl193094193161%_
                                     (##cdr _%$%e193092193156%_)))
                                (let ((_%expr193164%_ _%$%hd193093193159%_))
                                  (if (gx#stx-null? _%$%tl193094193161%_)
                                      (_%lp193058%_
                                       _%rest193081%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind193154%_)
                                               (gx#core-expand-expression
                                                _%expr193164%_))
                                              (gx#stx-source _%hd193082%_))
                                             _%body193061%_))
                                      (_%$%E193085193134%_)))))
                            (_%$%E193085193134%_)))))
                  (_%$%E193085193134%_))
              (_%$%E193085193134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193085193134%_)))))
                                  (_%$%E193084193166%_)))))
                        (if (pair? _%$%rest193062193070%_)
                            (let ((_%$%hd193067193173%_
                                   (##car _%$%rest193062193070%_))
                                  (_%$%tl193068193175%_
                                   (##cdr _%$%rest193062193070%_)))
                              (let* ((_%hd193178%_ _%$%hd193067193173%_)
                                     (_%rest193180%_ _%$%tl193068193175%_))
                                (_%$%K193066193170%_
                                 _%rest193180%_
                                 _%hd193178%_)))
                            (_%$%else193064193078%_)))))))
          (_%expand-body193054%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body193051%_)
            _%expand-special193053%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx192892%_
               _%expanded?192893%_
               _%method192894%_
               _%current-phi192895%_
               _%expand1192896%_)
        (letrec ((_%K192898%_
                  (lambda (_%rest193018%_ _%r193019%_)
                    (let* ((_%$%e193020193027%_ _%rest193018%_)
                           (_%$%E193022193031%_ (lambda () _%r193019%_))
                           (_%$%E193021193047%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193020193027%_)
                                  (let ((_%$%e193023193035%_
                                         (gx#syntax-e _%$%e193020193027%_)))
                                    (let ((_%$%hd193024193038%_
                                           (##car _%$%e193023193035%_))
                                          (_%$%tl193025193040%_
                                           (##cdr _%$%e193023193035%_)))
                                      (let* ((_%hd193043%_
                                              _%$%hd193024193038%_)
                                             (_%rest193045%_
                                              _%$%tl193025193040%_))
                                        (_%step192899%_
                                         _%hd193043%_
                                         _%rest193045%_
                                         _%r193019%_))))
                                  (_%$%E193022193031%_)))))
                      (_%$%E193021193047%_))))
                 (_%step192899%_
                  (lambda (_%hd192932%_ _%rest192933%_ _%r192934%_)
                    (let* ((_%$%e192935192953%_ _%hd192932%_)
                           (_%$%E192948192957%_
                            (lambda ()
                              (if (_%expanded?192893%_ (gx#stx-e _%hd192932%_))
                                  (_%K192898%_
                                   _%rest192933%_
                                   (cons (gx#stx-e _%hd192932%_) _%r192934%_))
                                  (_%expand1192896%_
                                   _%hd192932%_
                                   _%K192898%_
                                   _%rest192933%_
                                   _%r192934%_))))
                           (_%$%E192944192973%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192935192953%_)
                                  (let ((_%$%e192949192961%_
                                         (gx#syntax-e _%$%e192935192953%_)))
                                    (let ((_%$%hd192950192964%_
                                           (##car _%$%e192949192961%_))
                                          (_%$%tl192951192966%_
                                           (##cdr _%$%e192949192961%_)))
                                      (let* ((_%macro192969%_
                                              _%$%hd192950192964%_)
                                             (_%body192971%_
                                              _%$%tl192951192966%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro192969%_
                                             gx#syntax-binding?)
                                            (_%K192898%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro192969%_)
                                                    _%hd192932%_
                                                    _%method192894%_)
                                                   _%rest192933%_)
                                             _%r192934%_)
                                            (_%$%E192948192957%_)))))
                                  (_%$%E192948192957%_))))
                           (_%$%E192937192987%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192935192953%_)
                                  (let ((_%$%e192945192977%_
                                         (gx#syntax-e _%$%e192935192953%_)))
                                    (let ((_%$%hd192946192980%_
                                           (##car _%$%e192945192977%_))
                                          (_%$%tl192947192982%_
                                           (##cdr _%$%e192945192977%_)))
                                      (if (eq? (gx#stx-e _%$%hd192946192980%_)
                                               'begin:)
                                          (let ((_%body192985%_
                                                 _%$%tl192947192982%_))
                                            (_%K192898%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest192933%_
                                              _%body192985%_)
                                             _%r192934%_))
                                          (_%$%E192944192973%_))))
                                  (_%$%E192944192973%_))))
                           (_%$%E192936193014%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192935192953%_)
                                  (let ((_%$%e192938192991%_
                                         (gx#syntax-e _%$%e192935192953%_)))
                                    (let ((_%$%hd192939192994%_
                                           (##car _%$%e192938192991%_))
                                          (_%$%tl192940192996%_
                                           (##cdr _%$%e192938192991%_)))
                                      (if (eq? (gx#stx-e _%$%hd192939192994%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl192940192996%_)
                                              (let ((_%$%e192941192999%_
                                                     (gx#syntax-e
                                                      _%$%tl192940192996%_)))
                                                (let ((_%$%hd192942193002%_
                                                       (##car _%$%e192941192999%_))
                                                      (_%$%tl192943193004%_
                                                       (##cdr _%$%e192941192999%_)))
                                                  (let* ((_%dphi193007%_
                                                          _%$%hd192942193002%_)
                                                         (_%body193009%_
                                                          _%$%tl192943193004%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi193007%_)
                                                        (let ((_%rbody193012%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K192898%_ _%body193009%_ '()))
                        _%current-phi192895%_
                        (fx+ (gx#stx-e _%dphi193007%_)
                             (_%current-phi192895%_)))))
                  (_%K192898%_
                   _%rest192933%_
                   (append _%rbody193012%_ _%r192934%_)))
                (_%$%E192937192987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192937192987%_))
                                          (_%$%E192937192987%_))))
                                  (_%$%E192937192987%_)))))
                      (_%$%E192936193014%_)))))
          (let* ((_%$%e192900192907%_ _%stx192892%_)
                 (_%$%E192902192911%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192900192907%_)))
                 (_%$%E192901192928%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192900192907%_)
                        (let ((_%$%e192903192915%_
                               (gx#syntax-e _%$%e192900192907%_)))
                          (let ((_%$%hd192904192918%_
                                 (##car _%$%e192903192915%_))
                                (_%$%tl192905192920%_
                                 (##cdr _%$%e192903192915%_)))
                            (let ((_%body192923%_ _%$%tl192905192920%_))
                              (if (_%current-phi192895%_)
                                  (_%K192898%_ _%body192923%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K192898%_ _%body192923%_ '()))
                                   _%current-phi192895%_
                                   (gx#current-expander-phi))))))
                        (_%$%E192902192911%_)))))
            (_%$%E192901192928%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx192546%_ _%internal-expand?192547%_)
        (letrec ((_%expand1192549%_
                  (lambda (_%hd192864%_ _%K192865%_ _%rest192866%_ _%r192867%_)
                    (if (gx#core-bound-module? _%hd192864%_)
                        (_%import1192550%_
                         (gx#syntax-local-e__0 _%hd192864%_)
                         _%K192865%_
                         _%rest192866%_
                         _%r192867%_)
                        (if (gx#core-library-module-path? _%hd192864%_)
                            (_%import1192550%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd192864%_))
                             _%K192865%_
                             _%rest192866%_
                             _%r192867%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd192864%_)
                                (_%import1192550%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd192864%_))
                                 _%K192865%_
                                 _%rest192866%_
                                 _%r192867%_)
                                (let ((_%e192873%_ (gx#stx-e _%hd192864%_)))
                                  (if (pair? _%e192873%_)
                                      (let ((_%$e192876%_
                                             (gx#stx-e (##car _%e192873%_))))
                                        (if (eq? 'spec: _%$e192876%_)
                                            (_%import-spec192553%_
                                             _%hd192864%_
                                             _%K192865%_
                                             _%rest192866%_
                                             _%r192867%_)
                                            (if (eq? 'in: _%$e192876%_)
                                                (_%import-submodule192551%_
                                                 _%hd192864%_
                                                 _%K192865%_
                                                 _%rest192866%_
                                                 _%r192867%_)
                                                (if (eq? 'runtime:
                                                         _%$e192876%_)
                                                    (_%import-runtime192552%_
                                                     _%hd192864%_
                                                     _%K192865%_
                                                     _%rest192866%_
                                                     _%r192867%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx192546%_
                                                     _%hd192864%_)))))
                                      (if (string? _%e192873%_)
                                          (_%import1192550%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd192864%_
                                             (gx#stx-source _%stx192546%_)))
                                           _%K192865%_
                                           _%rest192866%_
                                           _%r192867%_)
                                          (if (##structure-instance-of?
                                               _%e192873%_
                                               'gx#module-context::t)
                                              (_%K192865%_
                                               _%rest192866%_
                                               (cons _%e192873%_ _%r192867%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx192546%_
                                               _%hd192864%_))))))))))
                 (_%import1192550%_
                  (lambda (_%ctx192853%_
                           _%K192854%_
                           _%rest192855%_
                           _%r192856%_)
                    (let ((_%dphi192858%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K192854%_
                       _%rest192855%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx192853%_
                              _%dphi192858%_
                              (map (lambda (_%$%g192859192861%_)
                                     (gx#core-module-export->import__%
                                      _%$%g192859192861%_
                                      '#f
                                      _%dphi192858%_))
                                   (##unchecked-structure-ref
                                    _%ctx192853%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r192856%_)))))
                 (_%import-submodule192551%_
                  (lambda (_%hd192820%_ _%K192821%_ _%rest192822%_ _%r192823%_)
                    (let* ((_%$%e192824192831%_ _%hd192820%_)
                           (_%$%E192826192835%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192824192831%_)))
                           (_%$%E192825192849%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192824192831%_)
                                  (let ((_%$%e192827192839%_
                                         (gx#syntax-e _%$%e192824192831%_)))
                                    (let ((_%$%hd192828192842%_
                                           (##car _%$%e192827192839%_))
                                          (_%$%tl192829192844%_
                                           (##cdr _%$%e192827192839%_)))
                                      (let ((_%spath192847%_
                                             _%$%tl192829192844%_))
                                        (_%import1192550%_
                                         (_%import-spec-source192554%_
                                          _%spath192847%_)
                                         _%K192821%_
                                         _%rest192822%_
                                         _%r192823%_))))
                                  (_%$%E192826192835%_)))))
                      (_%$%E192825192849%_))))
                 (_%import-runtime192552%_
                  (lambda (_%hd192787%_ _%K192788%_ _%rest192789%_ _%r192790%_)
                    (let* ((_%$%e192791192798%_ _%hd192787%_)
                           (_%$%E192793192802%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192791192798%_)))
                           (_%$%E192792192816%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192791192798%_)
                                  (let ((_%$%e192794192806%_
                                         (gx#syntax-e _%$%e192791192798%_)))
                                    (let ((_%$%hd192795192809%_
                                           (##car _%$%e192794192806%_))
                                          (_%$%tl192796192811%_
                                           (##cdr _%$%e192794192806%_)))
                                      (let ((_%spath192814%_
                                             _%$%tl192796192811%_))
                                        (_%K192788%_
                                         _%rest192789%_
                                         (cons (_%import-spec-source192554%_
                                                _%spath192814%_)
                                               _%r192790%_)))))
                                  (_%$%E192793192802%_)))))
                      (_%$%E192792192816%_))))
                 (_%import-spec192553%_
                  (lambda (_%hd192625%_ _%K192626%_ _%rest192627%_ _%r192628%_)
                    (let* ((_%$%e192629192646%_ _%hd192625%_)
                           (_%$%E192638192650%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192629192646%_)))
                           (_%$%E192631192761%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192629192646%_)
                                  (let ((_%$%e192639192654%_
                                         (gx#syntax-e _%$%e192629192646%_)))
                                    (let ((_%$%hd192640192657%_
                                           (##car _%$%e192639192654%_))
                                          (_%$%tl192641192659%_
                                           (##cdr _%$%e192639192654%_)))
                                      (if (gx#stx-pair? _%$%tl192641192659%_)
                                          (let ((_%$%e192642192662%_
                                                 (gx#syntax-e
                                                  _%$%tl192641192659%_)))
                                            (let ((_%$%hd192643192665%_
                                                   (##car _%$%e192642192662%_))
                                                  (_%$%tl192644192667%_
                                                   (##cdr _%$%e192642192662%_)))
                                              (let* ((_%path192670%_
                                                      _%$%hd192643192665%_)
                                                     (_%specs192672%_
                                                      _%$%tl192644192667%_))
                                                (let ((_%src-ctx192674%_
                                                       (_%import-spec-source192554%_
                                                        _%path192670%_))
                                                      (_%exports192675%_
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
                                                      (_%specs192676%_
                                                       (gx#syntax->list
                                                        _%specs192672%_)))
                                                  (for-each
                                                   (lambda (_%out192678%_)
                                                     (__hash-put!
                                                      _%exports192675%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out192678%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out192678%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out192678%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx192674%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K192626%_
                                                   _%rest192627%_
                                                   (foldl__0
                                                    (lambda (_%spec192680%_
                                                             _%r192681%_)
                                                      (let* ((_%$%e192682192698%_
                                                              _%spec192680%_)
                                                             (_%$%E192684192702%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e192682192698%_)))
                     (_%$%E192683192757%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e192682192698%_)
                            (let ((_%$%e192685192706%_
                                   (gx#syntax-e _%$%e192682192698%_)))
                              (let ((_%$%hd192686192709%_
                                     (##car _%$%e192685192706%_))
                                    (_%$%tl192687192711%_
                                     (##cdr _%$%e192685192706%_)))
                                (let ((_%phi192714%_ _%$%hd192686192709%_))
                                  (if (gx#stx-pair? _%$%tl192687192711%_)
                                      (let ((_%$%e192688192716%_
                                             (gx#syntax-e
                                              _%$%tl192687192711%_)))
                                        (let ((_%$%hd192689192719%_
                                               (##car _%$%e192688192716%_))
                                              (_%$%tl192690192721%_
                                               (##cdr _%$%e192688192716%_)))
                                          (let ((_%name192724%_
                                                 _%$%hd192689192719%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl192690192721%_)
                                                (let ((_%$%e192691192726%_
                                                       (gx#syntax-e
                                                        _%$%tl192690192721%_)))
                                                  (let ((_%$%hd192692192729%_
                                                         (##car _%$%e192691192726%_))
                                                        (_%$%tl192693192731%_
                                                         (##cdr _%$%e192691192726%_)))
                                                    (let ((_%src-phi192734%_
                                                           _%$%hd192692192729%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192693192731%_)
                                                          (let ((_%$%e192694192736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192693192731%_)))
                    (let ((_%$%hd192695192739%_ (##car _%$%e192694192736%_))
                          (_%$%tl192696192741%_ (##cdr _%$%e192694192736%_)))
                      (let ((_%src-name192744%_ _%$%hd192695192739%_))
                        (if (gx#stx-null? _%$%tl192696192741%_)
                            (if (and (gx#stx-fixnum? _%src-phi192734%_)
                                     (gx#identifier? _%src-name192744%_)
                                     (gx#stx-fixnum? _%phi192714%_)
                                     (gx#identifier? _%name192724%_))
                                (let ((_%src-phi192746%_
                                       (gx#stx-e _%src-phi192734%_))
                                      (_%src-name192747%_
                                       (gx#core-identifier-key
                                        _%src-name192744%_))
                                      (_%phi192748%_ (gx#stx-e _%phi192714%_))
                                      (_%name192749%_
                                       (gx#core-identifier-key
                                        _%name192724%_)))
                                  (let ((_%$e192751%_
                                         (__hash-get
                                          _%exports192675%_
                                          (cons _%src-phi192746%_
                                                _%src-name192747%_))))
                                    (if _%$e192751%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e192751%_
                                               _%name192749%_
                                               (fx- _%phi192748%_
                                                    _%src-phi192746%_))
                                              _%r192681%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx192546%_
                                         _%hd192625%_))))
                                (_%$%E192684192702%_))
                            (_%$%E192684192702%_)))))
                  (_%$%E192684192702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E192684192702%_)))))
                                      (_%$%E192684192702%_)))))
                            (_%$%E192684192702%_)))))
                (_%$%E192683192757%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r192628%_
                                                    _%specs192676%_))))))
                                          (_%$%E192638192650%_))))
                                  (_%$%E192638192650%_))))
                           (_%$%E192630192783%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192629192646%_)
                                  (let ((_%$%e192632192765%_
                                         (gx#syntax-e _%$%e192629192646%_)))
                                    (let ((_%$%hd192633192768%_
                                           (##car _%$%e192632192765%_))
                                          (_%$%tl192634192770%_
                                           (##cdr _%$%e192632192765%_)))
                                      (if (gx#stx-pair? _%$%tl192634192770%_)
                                          (let ((_%$%e192635192773%_
                                                 (gx#syntax-e
                                                  _%$%tl192634192770%_)))
                                            (let ((_%$%hd192636192776%_
                                                   (##car _%$%e192635192773%_))
                                                  (_%$%tl192637192778%_
                                                   (##cdr _%$%e192635192773%_)))
                                              (let ((_%path192781%_
                                                     _%$%hd192636192776%_))
                                                (if (gx#stx-null?
                                                     _%$%tl192637192778%_)
                                                    (_%K192626%_
                                                     _%rest192627%_
                                                     (cons (_%import-spec-source192554%_
                                                            _%path192781%_)
                                                           _%r192628%_))
                                                    (_%$%E192631192761%_)))))
                                          (_%$%E192631192761%_))))
                                  (_%$%E192631192761%_)))))
                      (_%$%E192630192783%_))))
                 (_%import-spec-source192554%_
                  (lambda (_%spath192623%_)
                    (gx#core-import-nested-module
                     _%spath192623%_
                     _%stx192546%_)))
                 (_%import!192555%_
                  (lambda (_%rbody192568%_)
                    (letrec* ((_%current-ctx192570%_
                               (gx#current-expander-context))
                              (_%deps192571%_ (make-hash-table-eq))
                              (_%bind!192572%_
                               (lambda (_%hd192621%_)
                                 (gx#core-bind-import!__1
                                  _%hd192621%_
                                  _%current-ctx192570%_))))
                      (let _%lp192574%_ ((_%rest192576%_ _%rbody192568%_)
                                         (_%body192577%_ '()))
                        (let* ((_%$%rest192578192586%_ _%rest192576%_)
                               (_%$%else192580192597%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx192570%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx192570%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx192570%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body192577%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx192594%_ _%_192595%_)
                                     (gx#eval-module _%ctx192594%_))
                                   _%deps192571%_)
                                  _%body192577%_))
                               (_%$%K192582192609%_
                                (lambda (_%rest192600%_ _%hd192601%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd192601%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!192572%_ _%hd192601%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd192601%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd192601%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps192571%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd192601%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd192601%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!192572%_
                                             (##unchecked-structure-ref
                                              _%hd192601%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd192601%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps192571%_
                                                 (##unchecked-structure-ref
                                                  _%hd192601%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e192605%_
                                                 (##structure-instance-of?
                                                  _%hd192601%_
                                                  'gx#module-context::t)))
                                            (if _%$e192605%_
                                                _%$e192605%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx192546%_
                                                 _%hd192601%_)))))
                                  (_%lp192574%_
                                   _%rest192600%_
                                   (cons _%hd192601%_ _%body192577%_)))))
                          (if (pair? _%$%rest192578192586%_)
                              (let ((_%$%hd192583192612%_
                                     (##car _%$%rest192578192586%_))
                                    (_%$%tl192584192614%_
                                     (##cdr _%$%rest192578192586%_)))
                                (let* ((_%hd192617%_ _%$%hd192583192612%_)
                                       (_%rest192619%_ _%$%tl192584192614%_))
                                  (_%$%K192582192609%_
                                   _%rest192619%_
                                   _%hd192617%_)))
                              (_%$%else192580192597%_)))))))
                 (_%expanded-import?192556%_
                  (lambda (_%e192560%_)
                    (let ((_%$e192562%_
                           (##structure-direct-instance-of?
                            _%e192560%_
                            'gx#import-set::t)))
                      (if _%$e192562%_
                          _%$e192562%_
                          (let ((_%$e192565%_
                                 (##structure-direct-instance-of?
                                  _%e192560%_
                                  'gx#module-import::t)))
                            (if _%$e192565%_
                                _%$e192565%_
                                (##structure-instance-of?
                                 _%e192560%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody192558%_
                 (gx#core-expand-import/export
                  _%stx192546%_
                  _%expanded-import?192556%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1192549%_)))
            (if _%internal-expand?192547%_
                (reverse _%rbody192558%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!192555%_ _%rbody192558%_))
                 (gx#stx-source _%stx192546%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx192885%_)
        (let ((_%internal-expand?192887%_ '#f))
          (gx#core-expand-import%__%
           _%stx192885%_
           _%internal-expand?192887%_))))
    (define gx#core-expand-import%
      (lambda _g195643_
        (let ((_g195644_ (##length _g195643_)))
          (cond ((##fx= _g195644_ 1)
                 (apply gx#core-expand-import%__0 _g195643_))
                ((##fx= _g195644_ 2)
                 (apply gx#core-expand-import%__% _g195643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g195643_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath192473%_ _%where192474%_)
        (let* ((_%$%e192475192482%_ _%spath192473%_)
               (_%$%E192477192486%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192475192482%_)))
               (_%$%E192476192541%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192475192482%_)
                      (let ((_%$%e192478192490%_
                             (gx#syntax-e _%$%e192475192482%_)))
                        (let ((_%$%hd192479192493%_
                               (##car _%$%e192478192490%_))
                              (_%$%tl192480192495%_
                               (##cdr _%$%e192478192490%_)))
                          (let* ((_%origin192498%_ _%$%hd192479192493%_)
                                 (_%sub192500%_ _%$%tl192480192495%_)
                                 (_%origin-ctx192502%_
                                  (if (gx#stx-false? _%origin192498%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin192498%_))))
                            (let _%lp192504%_ ((_%rest192506%_ _%sub192500%_)
                                               (_%ctx192507%_
                                                _%origin-ctx192502%_))
                              (let* ((_%$%e192508192515%_ _%rest192506%_)
                                     (_%$%E192510192519%_
                                      (lambda () _%ctx192507%_))
                                     (_%$%E192509192537%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e192508192515%_)
                                            (let ((_%$%e192511192523%_
                                                   (gx#syntax-e
                                                    _%$%e192508192515%_)))
                                              (let ((_%$%hd192512192526%_
                                                     (##car _%$%e192511192523%_))
                                                    (_%$%tl192513192528%_
                                                     (##cdr _%$%e192511192523%_)))
                                                (let* ((_%id192531%_
                                                        _%$%hd192512192526%_)
                                                       (_%rest192533%_
                                                        _%$%tl192513192528%_)
                                                       (_%bind192535%_
                                                        (gx#resolve-identifier__%
                                                         _%id192531%_
                                                         '0
                                                         _%ctx192507%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind192535%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind192535%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where192474%_
                                                       _%spath192473%_
                                                       _%id192531%_))
                                                  (_%lp192504%_
                                                   _%rest192533%_
                                                   (##unchecked-structure-ref
                                                    _%bind192535%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E192510192519%_)))))
                                (_%$%E192509192537%_))))))
                      (_%$%E192477192486%_)))))
          (_%$%E192476192541%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd192471%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd192471%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx191966%_ _%internal-expand?191967%_)
        (letrec* ((_%make-export__195571195572%_
                   (lambda (_%bind192419%_
                            _%phi192420%_
                            _%ctx192421%_
                            _%name192422%_)
                     (let* ((_%key192424%_
                             (##unchecked-structure-ref
                              _%bind192419%_
                              '2
                              '#f
                              '#f))
                            (_%export-key192426%_
                             (if _%name192422%_
                                 (gx#core-identifier-key _%name192422%_)
                                 _%key192424%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx192421%_
                        _%key192424%_
                        _%phi192420%_
                        _%export-key192426%_
                        (let ((_%$e192429%_
                               (##structure-instance-of?
                                _%bind192419%_
                                'gx#extern-binding::t)))
                          (if _%$e192429%_
                              _%$e192429%_
                              (##structure-direct-instance-of?
                               _%bind192419%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__195573195576%_
                   (lambda (_%bind192435%_)
                     (let* ((_%phi192437%_ (gx#current-export-expander-phi))
                            (_%ctx192439%_ (gx#current-expander-context))
                            (_%name192441%_ '#f))
                       (_%make-export__195571195572%_
                        _%bind192435%_
                        _%phi192437%_
                        _%ctx192439%_
                        _%name192441%_))))
                  (_%make-export__1__195574195577%_
                   (lambda (_%bind192443%_ _%phi192444%_)
                     (let* ((_%ctx192446%_ (gx#current-expander-context))
                            (_%name192448%_ '#f))
                       (_%make-export__195571195572%_
                        _%bind192443%_
                        _%phi192444%_
                        _%ctx192446%_
                        _%name192448%_))))
                  (_%make-export__2__195575195578%_
                   (lambda (_%bind192450%_ _%phi192451%_ _%ctx192452%_)
                     (let ((_%name192454%_ '#f))
                       (_%make-export__195571195572%_
                        _%bind192450%_
                        _%phi192451%_
                        _%ctx192452%_
                        _%name192454%_))))
                  (_%make-export191969%_
                   (lambda _g195645_
                     (let ((_g195646_ (##length _g195645_)))
                       (cond ((##fx= _g195646_ 1)
                              (apply _%make-export__0__195573195576%_
                                     _g195645_))
                             ((##fx= _g195646_ 2)
                              (apply _%make-export__1__195574195577%_
                                     _g195645_))
                             ((##fx= _g195646_ 3)
                              (apply _%make-export__2__195575195578%_
                                     _g195645_))
                             ((##fx= _g195646_ 4)
                              (apply _%make-export__195571195572%_ _g195645_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g195645_))))))
                  (_%expand1191970%_
                   (lambda (_%hd192124%_
                            _%K192125%_
                            _%rest192126%_
                            _%r192127%_)
                     (let* ((_%$%e192128192160%_ _%hd192124%_)
                            (_%$%E192155192164%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx191966%_
                                _%hd192124%_)))
                            (_%$%E192145192248%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192128192160%_)
                                   (let ((_%$%e192156192168%_
                                          (gx#syntax-e _%$%e192128192160%_)))
                                     (let ((_%$%hd192157192171%_
                                            (##car _%$%e192156192168%_))
                                           (_%$%tl192158192173%_
                                            (##cdr _%$%e192156192168%_)))
                                       (if (eq? (gx#stx-e _%$%hd192157192171%_)
                                                'import:)
                                           (let ((_%in192176%_
                                                  _%$%tl192158192173%_))
                                             (if (gx#stx-list? _%in192176%_)
                                                 (let _%lp192178%_ ((_%in-rest192180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in192176%_)
                            (_%r192181%_ _%r192127%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e192182192189%_
                                                           _%in-rest192180%_)
                                                          (_%$%E192184192193%_
                                                           (lambda ()
                                                             (_%K192125%_
                                                              _%rest192126%_
                                                              _%r192181%_)))
                                                          (_%$%E192183192244%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e192182192189%_)
                         (let ((_%$%e192185192197%_
                                (gx#syntax-e _%$%e192182192189%_)))
                           (let ((_%$%hd192186192200%_
                                  (##car _%$%e192185192197%_))
                                 (_%$%tl192187192202%_
                                  (##cdr _%$%e192185192197%_)))
                             (let* ((_%hd192205%_ _%$%hd192186192200%_)
                                    (_%in-rest192207%_ _%$%tl192187192202%_)
                                    (_%src192242%_
                                     (if (gx#core-bound-module? _%hd192205%_)
                                         (gx#syntax-local-e__0 _%hd192205%_)
                                         (if (gx#core-library-module-path?
                                              _%hd192205%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd192205%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd192205%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd192205%_))
                                                 (if (gx#stx-string?
                                                      _%hd192205%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd192205%_
                                                       (gx#stx-source
                                                        _%stx191966%_)))
                                                     (let* ((_%$%e192213192220%_
                                                             _%hd192205%_)
                                                            (_%$%E192215192224%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx191966%_
                                                                _%hd192205%_)))
                                                            (_%$%E192214192238%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e192213192220%_)
                           (let ((_%$%e192216192228%_
                                  (gx#syntax-e _%$%e192213192220%_)))
                             (let ((_%$%hd192217192231%_
                                    (##car _%$%e192216192228%_))
                                   (_%$%tl192218192233%_
                                    (##cdr _%$%e192216192228%_)))
                               (if (eq? (gx#stx-e _%$%hd192217192231%_) 'in:)
                                   (let ((_%spath192236%_
                                          _%$%tl192218192233%_))
                                     (gx#core-import-nested-module
                                      _%spath192236%_
                                      _%stx191966%_))
                                   (_%$%E192215192224%_))))
                           (_%$%E192215192224%_)))))
               (_%$%E192214192238%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp192178%_
                                _%in-rest192207%_
                                (_%export-imports191971%_
                                 _%src192242%_
                                 _%r192181%_)))))
                         (_%$%E192184192193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E192183192244%_)))
                                                 (_%$%E192155192164%_)))
                                           (_%$%E192155192164%_))))
                                   (_%$%E192155192164%_))))
                            (_%$%E192132192288%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192128192160%_)
                                   (let ((_%$%e192146192252%_
                                          (gx#syntax-e _%$%e192128192160%_)))
                                     (let ((_%$%hd192147192255%_
                                            (##car _%$%e192146192252%_))
                                           (_%$%tl192148192257%_
                                            (##cdr _%$%e192146192252%_)))
                                       (if (eq? (gx#stx-e _%$%hd192147192255%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl192148192257%_)
                                               (let ((_%$%e192149192260%_
                                                      (gx#syntax-e
                                                       _%$%tl192148192257%_)))
                                                 (let ((_%$%hd192150192263%_
                                                        (##car _%$%e192149192260%_))
                                                       (_%$%tl192151192265%_
                                                        (##cdr _%$%e192149192260%_)))
                                                   (let ((_%id192268%_
                                                          _%$%hd192150192263%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl192151192265%_)
                                                         (let ((_%$%e192152192270%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl192151192265%_)))
                   (let ((_%$%hd192153192273%_ (##car _%$%e192152192270%_))
                         (_%$%tl192154192275%_ (##cdr _%$%e192152192270%_)))
                     (let ((_%name192278%_ _%$%hd192153192273%_))
                       (if (gx#stx-null? _%$%tl192154192275%_)
                           (let* ((_%phi192280%_
                                   (gx#current-export-expander-phi))
                                  (_%$e192282%_
                                   (gx#core-resolve-identifier__1
                                    _%id192268%_
                                    _%phi192280%_)))
                             (if _%$e192282%_
                                 (_%K192125%_
                                  _%rest192126%_
                                  (cons (_%make-export__195571195572%_
                                         _%$e192282%_
                                         _%phi192280%_
                                         (gx#current-expander-context)
                                         _%name192278%_)
                                        _%r192127%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx191966%_
                                  _%hd192124%_
                                  _%id192268%_)))
                           (_%$%E192145192248%_)))))
                 (_%$%E192145192248%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E192145192248%_))
                                           (_%$%E192145192248%_))))
                                   (_%$%E192145192248%_))))
                            (_%$%E192131192338%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192128192160%_)
                                   (let ((_%$%e192133192292%_
                                          (gx#syntax-e _%$%e192128192160%_)))
                                     (let ((_%$%hd192134192295%_
                                            (##car _%$%e192133192292%_))
                                           (_%$%tl192135192297%_
                                            (##cdr _%$%e192133192292%_)))
                                       (if (eq? (gx#stx-e _%$%hd192134192295%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl192135192297%_)
                                               (let ((_%$%e192136192300%_
                                                      (gx#syntax-e
                                                       _%$%tl192135192297%_)))
                                                 (let ((_%$%hd192137192303%_
                                                        (##car _%$%e192136192300%_))
                                                       (_%$%tl192138192305%_
                                                        (##cdr _%$%e192136192300%_)))
                                                   (let ((_%phi192308%_
                                                          _%$%hd192137192303%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl192138192305%_)
                                                         (let ((_%$%e192139192310%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl192138192305%_)))
                   (let ((_%$%hd192140192313%_ (##car _%$%e192139192310%_))
                         (_%$%tl192141192315%_ (##cdr _%$%e192139192310%_)))
                     (let ((_%id192318%_ _%$%hd192140192313%_))
                       (if (gx#stx-pair? _%$%tl192141192315%_)
                           (let ((_%$%e192142192320%_
                                  (gx#syntax-e _%$%tl192141192315%_)))
                             (let ((_%$%hd192143192323%_
                                    (##car _%$%e192142192320%_))
                                   (_%$%tl192144192325%_
                                    (##cdr _%$%e192142192320%_)))
                               (let ((_%name192328%_ _%$%hd192143192323%_))
                                 (if (gx#stx-null? _%$%tl192144192325%_)
                                     (if (and (gx#stx-fixnum? _%phi192308%_)
                                              (gx#identifier? _%id192318%_)
                                              (gx#identifier? _%name192328%_))
                                         (let* ((_%phi192330%_
                                                 (gx#stx-e _%phi192308%_))
                                                (_%$e192332%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id192318%_
                                                  _%phi192330%_)))
                                           (if _%$e192332%_
                                               (_%K192125%_
                                                _%rest192126%_
                                                (cons (_%make-export__195571195572%_
                                                       _%$e192332%_
                                                       _%phi192330%_
                                                       (gx#current-expander-context)
                                                       _%name192328%_)
                                                      _%r192127%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx191966%_
                                                _%hd192124%_
                                                _%id192318%_)))
                                         (_%$%E192132192288%_))
                                     (_%$%E192132192288%_)))))
                           (_%$%E192132192288%_)))))
                 (_%$%E192132192288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E192132192288%_))
                                           (_%$%E192132192288%_))))
                                   (_%$%E192132192288%_))))
                            (_%$%E192130192350%_
                             (lambda ()
                               (let ((_%id192342%_ _%$%e192128192160%_))
                                 (if (gx#identifier? _%id192342%_)
                                     (let ((_%$e192344%_
                                            (gx#core-resolve-identifier__1
                                             _%id192342%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e192344%_
                                           (_%K192125%_
                                            _%rest192126%_
                                            (cons (_%make-export__0__195573195576%_
                                                   _%$e192344%_)
                                                  _%r192127%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx191966%_
                                            _%hd192124%_)))
                                     (_%$%E192131192338%_)))))
                            (_%$%E192129192414%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e192128192160%_) '#t)
                                   (let* ((_%current-ctx192354%_
                                           (gx#current-expander-context))
                                          (_%current-phi192356%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx192358%_
                                           (gx#core-context-shift
                                            _%current-ctx192354%_
                                            _%current-phi192356%_))
                                          (_%phi-bind192360%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx192358%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp192363%_ ((_%bind-rest192365%_
                                                         _%phi-bind192360%_)
                                                        (_%set192366%_ '()))
                                       (let* ((_%$%bind-rest192367192377%_
                                               _%bind-rest192365%_)
                                              (_%$%else192369192385%_
                                               (lambda ()
                                                 (_%K192125%_
                                                  _%rest192126%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi192356%_
                                                         _%set192366%_)
                                                        _%r192127%_))))
                                              (_%$%K192371192395%_
                                               (lambda (_%bind-rest192388%_
                                                        _%bind192389%_
                                                        _%key192390%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind192389%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind192389%_))
                                                     (_%lp192363%_
                                                      _%bind-rest192388%_
                                                      _%set192366%_)
                                                     (_%lp192363%_
                                                      _%bind-rest192388%_
                                                      (cons (_%make-export__2__195575195578%_
                                                             _%bind192389%_
                                                             _%current-phi192356%_
                                                             _%current-ctx192354%_)
                                                            _%set192366%_))))))
                                         (if (pair? _%$%bind-rest192367192377%_)
                                             (let ((_%$%hd192372192398%_
                                                    (##car _%$%bind-rest192367192377%_))
                                                   (_%$%tl192373192400%_
                                                    (##cdr _%$%bind-rest192367192377%_)))
                                               (if (pair? _%$%hd192372192398%_)
                                                   (let ((_%$%hd192374192403%_
                                                          (##car _%$%hd192372192398%_))
                                                         (_%$%tl192375192405%_
                                                          (##cdr _%$%hd192372192398%_)))
                                                     (let* ((_%key192408%_
                                                             _%$%hd192374192403%_)
                                                            (_%bind192410%_
                                                             _%$%tl192375192405%_)
                                                            (_%bind-rest192412%_
                                                             _%$%tl192373192400%_))
                                                       (_%$%K192371192395%_
                                                        _%bind-rest192412%_
                                                        _%bind192410%_
                                                        _%key192408%_)))
                                                   (_%$%else192369192385%_)))
                                             (_%$%else192369192385%_)))))
                                   (_%$%E192130192350%_)))))
                       (_%$%E192129192414%_))))
                  (_%export-imports191971%_
                   (lambda (_%src192001%_ _%r192002%_)
                     (letrec* ((_%current-ctx192004%_
                                (gx#current-expander-context))
                               (_%current-phi192005%_
                                (gx#current-export-expander-phi))
                               (_%import->export192006%_
                                (lambda (_%in192087%_)
                                  (let* ((_%$%in192088192096%_ _%in192087%_)
                                         (_%$%E192090192099%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in192088192096%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K192091192106%_
                                          (lambda (_%phi192102%_
                                                   _%key192103%_
                                                   _%out192104%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx192004%_
                                             _%key192103%_
                                             _%phi192102%_
                                             _%key192103%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in192088192096%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e192092192109%_
                                                (##unchecked-structure-ref
                                                 _%$%in192088192096%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out192112%_
                                                _%$%e192092192109%_)
                                               (_%$%e192093192114%_
                                                (##unchecked-structure-ref
                                                 _%$%in192088192096%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key192117%_
                                                _%$%e192093192114%_)
                                               (_%$%e192094192119%_
                                                (##unchecked-structure-ref
                                                 _%$%in192088192096%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi192122%_
                                                _%$%e192094192119%_))
                                          (_%$%K192091192106%_
                                           _%phi192122%_
                                           _%key192117%_
                                           _%out192112%_))
                                        (_%$%E192090192099%_)))))
                               (_%fold-e192007%_
                                (lambda (_%in192009%_ _%r192010%_)
                                  (let* ((_%$%in192011192025%_ _%in192009%_)
                                         (_%$%else192014192033%_
                                          (lambda () _%r192010%_)))
                                    (let ((_%$%K192020192069%_
                                           (lambda (_%phi192065%_
                                                    _%key192066%_
                                                    _%out192067%_)
                                             (if (and (fx= _%phi192065%_
                                                           _%current-phi192005%_)
                                                      (eq? _%src192001%_
                                                           (##unchecked-structure-ref
                                                            _%out192067%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export192006%_
                                                        _%in192009%_)
                                                       _%r192010%_)
                                                 _%r192010%_)))
                                          (_%$%K192016192044%_
                                           (lambda (_%imports192037%_
                                                    _%phi192038%_
                                                    _%ctx192039%_)
                                             (if (and (fx= _%phi192038%_
                                                           _%current-phi192005%_)
                                                      (eq? _%src192001%_
                                                           _%ctx192039%_))
                                                 (foldl__0
                                                  (lambda (_%in192041%_
                                                           _%r192042%_)
                                                    (cons (_%import->export192006%_
                                                           _%in192041%_)
                                                          _%r192042%_))
                                                  _%r192010%_
                                                  _%imports192037%_)
                                                 _%r192010%_))))
                                      (let ((_%$%try-match192013192062%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in192011192025%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e192017192047%_
                                                           (##unchecked-structure-ref
                                                            _%$%in192011192025%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e192018192052%_
                                                           (##unchecked-structure-ref
                                                            _%$%in192011192025%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e192019192057%_
                                                           (##unchecked-structure-ref
                                                            _%$%in192011192025%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx192050%_
                                                            _%$%e192017192047%_)
                                                           (_%phi192055%_
                                                            _%$%e192018192052%_)
                                                           (_%imports192060%_
                                                            _%$%e192019192057%_))
                                                       (_%$%K192016192044%_
                                                        _%imports192060%_
                                                        _%phi192055%_
                                                        _%ctx192050%_)))
                                                   (_%$%else192014192033%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in192011192025%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e192021192072%_
                                                    (##unchecked-structure-ref
                                                     _%$%in192011192025%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e192022192077%_
                                                    (##unchecked-structure-ref
                                                     _%$%in192011192025%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e192023192082%_
                                                    (##unchecked-structure-ref
                                                     _%$%in192011192025%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out192075%_
                                                     _%$%e192021192072%_)
                                                    (_%key192080%_
                                                     _%$%e192022192077%_)
                                                    (_%phi192085%_
                                                     _%$%e192023192082%_))
                                                (_%$%K192020192069%_
                                                 _%phi192085%_
                                                 _%key192080%_
                                                 _%out192075%_)))
                                            (_%$%try-match192013192062%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src192001%_
                              _%current-phi192005%_
                              (foldl__0
                               _%fold-e192007%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx192004%_
                                '8
                                '#f
                                '#f)))
                             _%r192002%_))))
                  (_%export!191972%_
                   (lambda (_%rbody191988%_)
                     (letrec* ((_%current-ctx191990%_
                                (gx#current-expander-context))
                               (_%fold-e191991%_
                                (lambda (_%out191995%_ _%r191996%_)
                                  (if (##structure-direct-instance-of?
                                       _%out191995%_
                                       'gx#module-export::t)
                                      (cons _%out191995%_ _%r191996%_)
                                      (if (##structure-direct-instance-of?
                                           _%out191995%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r191996%_
                                           (##unchecked-structure-ref
                                            _%out191995%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r191996%_)))))
                       (let ((_%body191993%_ (reverse _%rbody191988%_)))
                         (##unchecked-structure-set!
                          _%current-ctx191990%_
                          (foldl__0
                           _%fold-e191991%_
                           (##unchecked-structure-ref
                            _%current-ctx191990%_
                            '9
                            '#f
                            '#f)
                           _%body191993%_)
                          '9
                          '#f
                          '#f)
                         _%body191993%_))))
                  (_%expanded-export?191973%_
                   (lambda (_%e191983%_)
                     (let ((_%$e191985%_
                            (##structure-direct-instance-of?
                             _%e191983%_
                             'gx#module-export::t)))
                       (if _%$e191985%_
                           _%$e191985%_
                           (##structure-direct-instance-of?
                            _%e191983%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?191967%_)
              (let ((_%rbody191979%_
                     (gx#core-expand-import/export
                      _%stx191966%_
                      _%expanded-export?191973%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1191970%_)))
                (if _%internal-expand?191967%_
                    (reverse _%rbody191979%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!191972%_ _%rbody191979%_))
                     (gx#stx-source _%stx191966%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx191966%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx191966%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx192464%_)
        (let ((_%internal-expand?192466%_ '#f))
          (gx#core-expand-export%__%
           _%stx192464%_
           _%internal-expand?192466%_))))
    (define gx#core-expand-export%
      (lambda _g195647_
        (let ((_g195648_ (##length _g195647_)))
          (cond ((##fx= _g195648_ 1)
                 (apply gx#core-expand-export%__0 _g195647_))
                ((##fx= _g195648_ 2)
                 (apply gx#core-expand-export%__% _g195647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g195647_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd191963%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd191963%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx191933%_)
        (let* ((_%$%e191934191941%_ _%stx191933%_)
               (_%$%E191936191945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191934191941%_)))
               (_%$%E191935191959%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191934191941%_)
                      (let ((_%$%e191937191949%_
                             (gx#syntax-e _%$%e191934191941%_)))
                        (let ((_%$%hd191938191952%_
                               (##car _%$%e191937191949%_))
                              (_%$%tl191939191954%_
                               (##cdr _%$%e191937191949%_)))
                          (let ((_%body191957%_ _%$%tl191939191954%_))
                            (if (gx#identifier-list? _%body191957%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body191957%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body191957%_))
                                   (gx#stx-source _%stx191933%_)))
                                (_%$%E191936191945%_)))))
                      (_%$%E191936191945%_)))))
          (_%$%E191935191959%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id191899%_ _%private?191900%_ _%phi191901%_ _%ctx191902%_)
        (gx#core-bind-syntax!__%
         _%id191899%_
         ((if _%private?191900%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id191899%_))
         _%private?191900%_
         _%phi191901%_
         _%ctx191902%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id191907%_)
        (let* ((_%private?191909%_ '#f)
               (_%phi191911%_ (gx#current-expander-phi))
               (_%ctx191913%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191907%_
           _%private?191909%_
           _%phi191911%_
           _%ctx191913%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id191915%_ _%private?191916%_)
        (let* ((_%phi191918%_ (gx#current-expander-phi))
               (_%ctx191920%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191915%_
           _%private?191916%_
           _%phi191918%_
           _%ctx191920%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id191922%_ _%private?191923%_ _%phi191924%_)
        (let ((_%ctx191926%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191922%_
           _%private?191923%_
           _%phi191924%_
           _%ctx191926%_))))
    (define gx#core-bind-feature!
      (lambda _g195649_
        (let ((_g195650_ (##length _g195649_)))
          (cond ((##fx= _g195650_ 1)
                 (apply gx#core-bind-feature!__0 _g195649_))
                ((##fx= _g195650_ 2)
                 (apply gx#core-bind-feature!__1 _g195649_))
                ((##fx= _g195650_ 3)
                 (apply gx#core-bind-feature!__2 _g195649_))
                ((##fx= _g195650_ 4)
                 (apply gx#core-bind-feature!__% _g195649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g195649_))))))))
