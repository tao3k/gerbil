(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1784461444)
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
      (lambda _%$args195347%_
        (apply make-instance gx#module-import::t _%$args195347%_)))
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
      (lambda _%$args195344%_
        (apply make-instance gx#module-export::t _%$args195344%_)))
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
      (lambda _%$args195341%_
        (apply make-instance gx#import-set::t _%$args195341%_)))
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
      (lambda _%$args195338%_
        (apply make-instance gx#export-set::t _%$args195338%_)))
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
      (lambda _%$args195335%_
        (apply make-instance gx#import-expander::t _%$args195335%_)))
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
      (lambda _%$args195332%_
        (apply make-instance gx#export-expander::t _%$args195332%_)))
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
      (lambda _%$args195329%_
        (apply make-instance gx#import-export-expander::t _%$args195329%_)))
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
      (lambda (_%path195326%_ _%fun195327%_)
        (call-with-input-file
         (cons 'path: (cons _%path195326%_ gx#source-file-settings))
         _%fun195327%_)))
    (define gx#module-context:::init!
      (lambda (_%self195309%_
               _%id195310%_
               _%super195311%_
               _%ns195312%_
               _%path195313%_)
        (let ((_%self195316%_ _%self195309%_))
          (if (##fx< '11 (##structure-length _%self195316%_))
              (begin
                (##unchecked-structure-set!
                 _%self195316%_
                 _%id195310%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195316%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195316%_
                 _%super195311%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195316%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self195316%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self195316%_
                 _%ns195312%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195316%_
                 _%path195313%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195316%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self195316%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self195316%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self195316%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self195316%_
                     '11
                     (##structure-length _%self195316%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self195142%_ _%ctx195143%_ _%root195144%_)
        (let* ((_%self195147%_ _%self195142%_)
               (_%super195163%_
                (let ((_%$e195157%_ _%root195144%_))
                  (if _%$e195157%_
                      _%$e195157%_
                      (let ((_%$e195160%_ (gx#core-context-root__0)))
                        (if _%$e195160%_
                            _%$e195160%_
                            (let ((__obj195391
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor195392
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj195391
                                      ':init!)))
                                (if __constructor195392
                                    (__constructor195392 __obj195391)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj195391)))))))
          (if _%ctx195143%_
              (let ((_%id195166%_
                     (##structure-ref
                      _%ctx195143%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path195167%_
                     (##structure-ref
                      _%ctx195143%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in195168%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx195143%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e195169%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx195143%_)))))
                (if (##fx< '8 (##structure-length _%self195147%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self195147%_
                       _%id195166%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       (make-hash-table-eq 'size: (##length _%in195168%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       _%super195163%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       _%path195167%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       _%in195168%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195147%_
                       _%e195169%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self195147%_
                           '8
                           (##structure-length _%self195147%_)))
                (##for-each
                 (lambda (_%$%g195170195172%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g195170195172%_
                    _%self195147%_))
                 _%in195168%_))
              (if (##fx< '8 (##structure-length _%self195147%_))
                  (begin
                    (##unchecked-structure-set! _%self195147%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self195147%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self195147%_
                     _%super195163%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self195147%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self195147%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self195147%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self195147%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self195147%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self195147%_
                         '8
                         (##structure-length _%self195147%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self195178%_ _%ctx195179%_)
        (let ((_%root195181%_ '#f))
          (gx#prelude-context:::init!__%
           _%self195178%_
           _%ctx195179%_
           _%root195181%_))))
    (define gx#prelude-context:::init!
      (lambda _g195398_
        (let ((_g195399_ (##length _g195398_)))
          (cond ((##fx= _g195399_ 2)
                 (apply gx#prelude-context:::init!__0 _g195398_))
                ((##fx= _g195399_ 3)
                 (apply gx#prelude-context:::init!__% _g195398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g195398_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self195016%_ _%e195017%_)
        (if (##fx< '3 (##structure-length _%self195016%_))
            (begin
              (##unchecked-structure-set!
               _%self195016%_
               _%e195017%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195016%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195016%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self195016%_
                   '3
                   (##structure-length _%self195016%_)))))
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
      (lambda (_%$%g194642194645%_ _%$%g194643194647%_)
        (gx#core-apply-user-expander__%
         _%$%g194642194645%_
         _%$%g194643194647%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g194513194516%_ _%$%g194514194518%_)
        (gx#core-apply-user-expander__%
         _%$%g194513194516%_
         _%$%g194514194518%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx194384%_)
        (let* ((_%path194386%_
                (##structure-ref _%ctx194384%_ '7 gx#module-context::t '#f))
               (_%path194388%_
                (if (pair? _%path194386%_)
                    (##last _%path194386%_)
                    _%path194386%_)))
          (if (string? _%path194388%_) _%path194388%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path194360%_ _%reload?194361%_ _%eval?194362%_)
        (let ((_%ctx194364%_
               ((gx#current-expander-module-import)
                _%path194360%_
                _%reload?194361%_)))
          (if (and _%ctx194364%_ _%eval?194362%_)
              (gx#eval-module _%ctx194364%_)
              '#!void)
          _%ctx194364%_)))
    (define gx#import-module__0
      (lambda (_%path194369%_)
        (let* ((_%reload?194371%_ '#f) (_%eval?194373%_ '#f))
          (gx#import-module__%
           _%path194369%_
           _%reload?194371%_
           _%eval?194373%_))))
    (define gx#import-module__1
      (lambda (_%path194375%_ _%reload?194376%_)
        (let ((_%eval?194378%_ '#f))
          (gx#import-module__%
           _%path194375%_
           _%reload?194376%_
           _%eval?194378%_))))
    (define gx#import-module
      (lambda _g195400_
        (let ((_g195401_ (##length _g195400_)))
          (cond ((##fx= _g195401_ 1) (apply gx#import-module__0 _g195400_))
                ((##fx= _g195401_ 2) (apply gx#import-module__1 _g195400_))
                ((##fx= _g195401_ 3) (apply gx#import-module__% _g195400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g195400_))))))
    (define gx#eval-module
      (lambda (_%mod194357%_)
        ((gx#current-expander-module-eval) _%mod194357%_)))
    (define gx#core-eval-module
      (lambda (_%obj194336%_)
        (letrec ((_%force-e194338%_
                  (lambda (_%getf194352%_ _%e194353%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf194352%_ _%e194353%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e194353%_))))
          (let _%recur194340%_ ((_%e194342%_ _%obj194336%_))
            (if (##structure-instance-of? _%e194342%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e194345%_
                         (gx#core-context-prelude__% _%e194342%_)))
                    (if _%$e194345%_ (_%recur194340%_ _%$e194345%_) '#!void))
                  (_%force-e194338%_ gx#module-context-e _%e194342%_))
                (if (##structure-instance-of?
                     _%e194342%_
                     'gx#prelude-context::t)
                    (_%force-e194338%_ gx#prelude-context-e _%e194342%_)
                    (if (gx#stx-string? _%e194342%_)
                        (_%recur194340%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e194342%_)))
                        (if (gx#core-library-module-path? _%e194342%_)
                            (_%recur194340%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e194342%_)))
                            (error '"cannot eval module" _%obj194336%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx194316%_)
        (let _%lp194318%_ ((_%e194320%_ _%ctx194316%_))
          (if (or (##structure-instance-of? _%e194320%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e194320%_ 'gx#local-context::t))
              (_%lp194318%_ (##unchecked-structure-ref _%e194320%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e194320%_ 'gx#prelude-context::t)
                  _%e194320%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx194332%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx194332%_))))
    (define gx#core-context-prelude
      (lambda _g195402_
        (let ((_g195403_ (##length _g195402_)))
          (cond ((##fx= _g195403_ 0)
                 (apply gx#core-context-prelude__0 _g195402_))
                ((##fx= _g195403_ 1)
                 (apply gx#core-context-prelude__% _g195402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g195402_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx194307%_)
        (let ((_%$e194309%_ (__hash-get gx#__module-registry _%ctx194307%_)))
          (if _%$e194309%_
              _%$e194309%_
              (let ((_%pre194313%_
                     (let ((__obj195393
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
                        __obj195393
                        _%ctx194307%_)
                       __obj195393)))
                (__hash-put! gx#__module-registry _%ctx194307%_ _%pre194313%_)
                _%pre194313%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath194175%_ _%reload?194176%_)
        (letrec ((_%import-source194178%_
                  (lambda (_%path194266%_)
                    (if (member _%path194266%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         _%path194266%_
                         (gx#current-expander-path))
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
                                      (let ((_g195404_
                                             (gx#core-read-module
                                              _%path194266%_)))
                                        (begin
                                          (let ((_g195405_
                                                 (if (##values? _g195404_)
                                                     (##values-length
                                                      _g195404_)
                                                     1)))
                                            (if (not (##fx= _g195405_ 4))
                                                (error "Context expects 4 values"
                                                       _g195405_)))
                                          (let ((_%pre194274%_
                                                 (##values-ref _g195404_ 0))
                                                (_%id194275%_
                                                 (##values-ref _g195404_ 1))
                                                (_%ns194276%_
                                                 (##values-ref _g195404_ 2))
                                                (_%body194277%_
                                                 (##values-ref _g195404_ 3)))
                                            (let* ((_%prelude194287%_
                                                    (if (##structure-instance-of?
                                                         _%pre194274%_
                                                         'gx#prelude-context::t)
                                                        _%pre194274%_
                                                        (if (##structure-instance-of?
                                                             _%pre194274%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre194274%_)
                                                            (if (string? _%pre194274%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre194274%_))
                        (if (not _%pre194274%_)
                            (let ((_%$e194283%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e194283%_
                                  _%$e194283%_
                                  (let ((__obj195394
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
                                     __obj195394
                                     '#f)
                                    __obj195394)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath194175%_
                                   _%pre194274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx194289%_
                                                    (let ((__obj195395
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
                                                       __obj195395
                                                       _%id194275%_
                                                       _%prelude194287%_
                                                       _%ns194276%_
                                                       _%path194266%_)
                                                      __obj195395))
                                                   (_%body194291%_
                                                    (gx#core-expand-module-begin
                                                     _%body194277%_
                                                     _%ctx194289%_))
                                                   (_%body194293%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body194291%_)
                                                     _%path194266%_
                                                     _%ctx194289%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx194289%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body194293%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx194289%_
                                               _%body194293%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path194266%_
                                               _%ctx194289%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id194275%_
                                               _%ctx194289%_)
                                              _%ctx194289%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path194266%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule194179%_
                  (lambda (_%rpath194195%_)
                    (let* ((_%$%rpath194196194203%_ _%rpath194195%_)
                           (_%$%E194198194206%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath194196194203%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K194199194254%_
                            (lambda (_%refs194209%_ _%origin194210%_)
                              (let ((_%ctx194212%_
                                     (if _%origin194210%_
                                         (gx#core-import-module__%
                                          _%origin194210%_
                                          _%reload?194176%_)
                                         (gx#current-expander-context))))
                                (let _%lp194214%_ ((_%rest194216%_
                                                    _%refs194209%_)
                                                   (_%ctx194217%_
                                                    _%ctx194212%_))
                                  (let* ((_%$%rest194218194226%_
                                          _%rest194216%_)
                                         (_%$%else194220194234%_
                                          (lambda () _%ctx194217%_))
                                         (_%$%K194222194242%_
                                          (lambda (_%rest194237%_ _%id194238%_)
                                            (let ((_%bind194240%_
                                                   (gx#resolve-identifier__%
                                                    _%id194238%_
                                                    '0
                                                    _%ctx194217%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind194240%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind194240%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp194214%_
                                                   _%rest194237%_
                                                   (##unchecked-structure-ref
                                                    _%bind194240%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath194195%_
                                                         _%id194238%_
                                                         _%bind194240%_))))))
                                    (if (pair? _%$%rest194218194226%_)
                                        (let ((_%$%hd194223194245%_
                                               (##car _%$%rest194218194226%_))
                                              (_%$%tl194224194247%_
                                               (##cdr _%$%rest194218194226%_)))
                                          (let* ((_%id194250%_
                                                  _%$%hd194223194245%_)
                                                 (_%rest194252%_
                                                  _%$%tl194224194247%_))
                                            (_%$%K194222194242%_
                                             _%rest194252%_
                                             _%id194250%_)))
                                        (_%$%else194220194234%_))))))))
                      (if (pair? _%$%rpath194196194203%_)
                          (let ((_%$%hd194200194257%_
                                 (##car _%$%rpath194196194203%_))
                                (_%$%tl194201194259%_
                                 (##cdr _%$%rpath194196194203%_)))
                            (let* ((_%origin194262%_ _%$%hd194200194257%_)
                                   (_%refs194264%_ _%$%tl194201194259%_))
                              (_%$%K194199194254%_
                               _%refs194264%_
                               _%origin194262%_)))
                          (_%$%E194198194206%_))))))
          (let ((_%$e194181%_
                 (if (not _%reload?194176%_)
                     (__hash-get gx#__module-registry _%rpath194175%_)
                     '#f)))
            (if _%$e194181%_
                _%$e194181%_
                (if (list? _%rpath194175%_)
                    (_%import-submodule194179%_ _%rpath194175%_)
                    (if (gx#core-library-module-path? _%rpath194175%_)
                        (let ((_%ctx194186%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath194175%_)
                                _%reload?194176%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath194175%_
                           _%ctx194186%_)
                          _%ctx194186%_)
                        (let* ((_%npath194189%_
                                (path-normalize _%rpath194175%_))
                               (_%$e194191%_
                                (if (not _%reload?194176%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath194189%_)
                                    '#f)))
                          (if _%$e194191%_
                              _%$e194191%_
                              (_%import-source194178%_
                               _%npath194189%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath194300%_)
        (let ((_%reload?194302%_ '#f))
          (gx#core-import-module__% _%rpath194300%_ _%reload?194302%_))))
    (define gx#core-import-module
      (lambda _g195406_
        (let ((_g195407_ (##length _g195406_)))
          (cond ((##fx= _g195407_ 1)
                 (apply gx#core-import-module__0 _g195406_))
                ((##fx= _g195407_ 2)
                 (apply gx#core-import-module__% _g195406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g195406_))))))
    (define gx#core-read-module
      (lambda (_%path194157%_)
        (__with-catch
         (lambda (_%exn194159%_)
           (if (datum-parsing-exception? _%exn194159%_)
               (let ((_%pos194161%_
                      (datum-parsing-exception-filepos _%exn194159%_)))
                 (if (= _%pos194161%_ '0)
                     (gx#core-read-module/lang _%path194157%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path194157%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g194163194165%_)
                            (display-exception__%
                             _%exn194159%_
                             _%$%g194163194165%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos194161%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos194161%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path194157%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g194168194170%_)
                      (display-exception__%
                       _%exn194159%_
                       _%$%g194168194170%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path194157%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path194009%_)
        (let _%lp194011%_ ((_%body194013%_
                            (read-syntax-from-file _%path194009%_))
                           (_%pre194014%_ '#f)
                           (_%ns194015%_ '#f)
                           (_%pkg194016%_ '#f))
          (let* ((_%$%e194017194041%_ _%body194013%_)
                 (_%$%E194033194067%_
                  (lambda ()
                    (let ((_g195408_
                           (if _%pkg194016%_
                               (values _%pre194014%_
                                       _%ns194015%_
                                       _%pkg194016%_)
                               (gx#core-read-module-package
                                _%path194009%_
                                _%pre194014%_
                                _%ns194015%_))))
                      (begin
                        (let ((_g195409_
                               (if (##values? _g195408_)
                                   (##values-length _g195408_)
                                   1)))
                          (if (not (##fx= _g195409_ 3))
                              (error "Context expects 3 values" _g195409_)))
                        (let ((_%pre194045%_ (##values-ref _g195408_ 0))
                              (_%ns194046%_ (##values-ref _g195408_ 1))
                              (_%pkg194047%_ (##values-ref _g195408_ 2)))
                          (let* ((_%prelude194053%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre194045%_)
                                      (gx#syntax-local-e__0 _%pre194045%_)
                                      (if (gx#core-library-module-path?
                                           _%pre194045%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre194045%_)
                                          (if (gx#stx-string? _%pre194045%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre194045%_
                                               _%path194009%_)
                                              (gx#stx-e _%pre194045%_)))))
                                 (_%path-id194055%_
                                  (gx#core-module-path->namespace
                                   _%path194009%_))
                                 (_%pkg-id194057%_
                                  (if _%pkg194047%_
                                      (##string-append
                                       _%pkg194047%_
                                       '"/"
                                       _%path-id194055%_)
                                      _%path-id194055%_))
                                 (_%module-id194059%_
                                  (##string->symbol _%pkg-id194057%_))
                                 (_%module-ns194064%_
                                  (if (eq? _%ns194046%_ '#!void)
                                      '#f
                                      (let ((_%$e194061%_ _%ns194046%_))
                                        (if _%$e194061%_
                                            _%$e194061%_
                                            _%pkg-id194057%_)))))
                            (values _%prelude194053%_
                                    _%module-id194059%_
                                    _%module-ns194064%_
                                    _%body194013%_)))))))
                 (_%$%E194026194099%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194017194041%_)
                        (let ((_%$%e194034194071%_
                               (gx#syntax-e _%$%e194017194041%_)))
                          (let ((_%$%hd194035194074%_
                                 (##car _%$%e194034194071%_))
                                (_%$%tl194036194076%_
                                 (##cdr _%$%e194034194071%_)))
                            (if (eq? (gx#stx-e _%$%hd194035194074%_) 'package:)
                                (if (gx#stx-pair? _%$%tl194036194076%_)
                                    (let ((_%$%e194037194079%_
                                           (gx#syntax-e _%$%tl194036194076%_)))
                                      (let ((_%$%hd194038194082%_
                                             (##car _%$%e194037194079%_))
                                            (_%$%tl194039194084%_
                                             (##cdr _%$%e194037194079%_)))
                                        (let* ((_%pkg194087%_
                                                _%$%hd194038194082%_)
                                               (_%rest194089%_
                                                _%$%tl194039194084%_)
                                               (_%pkg194097%_
                                                (if (gx#identifier?
                                                     _%pkg194087%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg194087%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg194087%_)
                                                            (gx#stx-false?
                                                             _%pkg194087%_))
                                                        (gx#stx-e
                                                         _%pkg194087%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg194087%_)))))
                                          (_%lp194011%_
                                           _%rest194089%_
                                           _%pre194014%_
                                           _%ns194015%_
                                           _%pkg194097%_))))
                                    (_%$%E194033194067%_))
                                (_%$%E194033194067%_))))
                        (_%$%E194033194067%_))))
                 (_%$%E194019194129%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194017194041%_)
                        (let ((_%$%e194027194103%_
                               (gx#syntax-e _%$%e194017194041%_)))
                          (let ((_%$%hd194028194106%_
                                 (##car _%$%e194027194103%_))
                                (_%$%tl194029194108%_
                                 (##cdr _%$%e194027194103%_)))
                            (if (eq? (gx#stx-e _%$%hd194028194106%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl194029194108%_)
                                    (let ((_%$%e194030194111%_
                                           (gx#syntax-e _%$%tl194029194108%_)))
                                      (let ((_%$%hd194031194114%_
                                             (##car _%$%e194030194111%_))
                                            (_%$%tl194032194116%_
                                             (##cdr _%$%e194030194111%_)))
                                        (let* ((_%ns194119%_
                                                _%$%hd194031194114%_)
                                               (_%rest194121%_
                                                _%$%tl194032194116%_)
                                               (_%ns194127%_
                                                (if (gx#identifier?
                                                     _%ns194119%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns194119%_))
                                                    (if (gx#stx-string?
                                                         _%ns194119%_)
                                                        (gx#stx-e _%ns194119%_)
                                                        (if (gx#stx-false?
                                                             _%ns194119%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns194119%_))))))
                                          (_%lp194011%_
                                           _%rest194121%_
                                           _%pre194014%_
                                           _%ns194127%_
                                           _%pkg194016%_))))
                                    (_%$%E194026194099%_))
                                (_%$%E194026194099%_))))
                        (_%$%E194026194099%_))))
                 (_%$%E194018194153%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194017194041%_)
                        (let ((_%$%e194020194133%_
                               (gx#syntax-e _%$%e194017194041%_)))
                          (let ((_%$%hd194021194136%_
                                 (##car _%$%e194020194133%_))
                                (_%$%tl194022194138%_
                                 (##cdr _%$%e194020194133%_)))
                            (if (eq? (gx#stx-e _%$%hd194021194136%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl194022194138%_)
                                    (let ((_%$%e194023194141%_
                                           (gx#syntax-e _%$%tl194022194138%_)))
                                      (let ((_%$%hd194024194144%_
                                             (##car _%$%e194023194141%_))
                                            (_%$%tl194025194146%_
                                             (##cdr _%$%e194023194141%_)))
                                        (let* ((_%prelude194149%_
                                                _%$%hd194024194144%_)
                                               (_%rest194151%_
                                                _%$%tl194025194146%_))
                                          (_%lp194011%_
                                           _%rest194151%_
                                           _%prelude194149%_
                                           _%ns194015%_
                                           _%pkg194016%_))))
                                    (_%$%E194019194129%_))
                                (_%$%E194019194129%_))))
                        (_%$%E194019194129%_)))))
            (_%$%E194018194153%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path193830%_)
        (letrec ((_%default-read-module-body193832%_
                  (lambda (_%inp194001%_)
                    (let _%lp194003%_ ((_%body194005%_ '()))
                      (let ((_%next194007%_ (read-syntax__% _%inp194001%_)))
                        (if (eof-object? _%next194007%_)
                            (reverse _%body194005%_)
                            (_%lp194003%_
                             (cons _%next194007%_ _%body194005%_)))))))
                 (_%read-body193833%_
                  (lambda (_%inp193918%_
                           _%pre193919%_
                           _%ns193920%_
                           _%pkg193921%_
                           _%args193922%_)
                    (let ((_g195410_
                           (if _%pkg193921%_
                               (values _%pre193919%_
                                       _%ns193920%_
                                       _%pkg193921%_)
                               (gx#core-read-module-package
                                _%path193830%_
                                _%pre193919%_
                                _%ns193920%_))))
                      (begin
                        (let ((_g195411_
                               (if (##values? _g195410_)
                                   (##values-length _g195410_)
                                   1)))
                          (if (not (##fx= _g195411_ 3))
                              (error "Context expects 3 values" _g195411_)))
                        (let ((_%pre193924%_ (##values-ref _g195410_ 0))
                              (_%ns193925%_ (##values-ref _g195410_ 1))
                              (_%pkg193926%_ (##values-ref _g195410_ 2)))
                          (let* ((_%prelude193928%_
                                  (gx#import-module__0 _%pre193924%_))
                                 (_%read-module-body193983%_
                                  (let ((_%$e193974%_
                                         (__find (lambda (_%$%e193929193931%_)
                                                   (let* ((_%$%$%e193929193933193943%_
                                                           _%$%e193929193931%_)
                                                          (_%$%else193935193951%_
                                                           (lambda () '#f))
                                                          (_%$%K193937193955%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e193929193933193943%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e193938193958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e193929193933193943%_
                          '1
                          '#f
                          '#f))
                        (_%$%e193939193961%_
                         (##unchecked-structure-ref
                          _%$%$%e193929193933193943%_
                          '2
                          '#f
                          '#f))
                        (_%$%e193940193964%_
                         (##unchecked-structure-ref
                          _%$%$%e193929193933193943%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e193940193964%_ '1)
                       (let ((_%$%e193941193967%_
                              (##unchecked-structure-ref
                               _%$%$%e193929193933193943%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e193941193967%_ 'read-module-body)
                             (_%$%K193937193955%_)
                             (_%$%else193935193951%_)))
                       (_%$%else193935193951%_)))
                 (_%$%else193935193951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude193928%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e193974%_
                                        (let ((_%proc193980%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e193974%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc193980%_)
                                              _%proc193980%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path193830%_
                                               _%pre193924%_
                                               _%proc193980%_)))
                                        _%default-read-module-body193832%_)))
                                 (_%path-id193985%_
                                  (gx#core-module-path->namespace
                                   _%path193830%_))
                                 (_%pkg-id193987%_
                                  (if _%pkg193926%_
                                      (##string-append
                                       _%pkg193926%_
                                       '"/"
                                       _%path-id193985%_)
                                      _%path-id193985%_))
                                 (_%module-id193989%_
                                  (##string->symbol _%pkg-id193987%_))
                                 (_%module-ns193994%_
                                  (let ((_%$e193991%_ _%ns193925%_))
                                    (if _%$e193991%_
                                        _%$e193991%_
                                        _%pkg-id193987%_)))
                                 (_%body193998%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body193983%_
                                         _%inp193918%_))
                                      gx#current-module-reader-args
                                      _%args193922%_))
                                   gx#current-module-reader-path
                                   _%path193830%_)))
                            (values _%prelude193928%_
                                    _%module-id193989%_
                                    _%module-ns193994%_
                                    _%body193998%_)))))))
                 (_%string-e193834%_
                  (lambda (_%obj193912%_ _%what193913%_)
                    (if (string? _%obj193912%_)
                        _%obj193912%_
                        (if (symbol? _%obj193912%_)
                            (##symbol->string _%obj193912%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what193913%_)
                             _%path193830%_
                             _%obj193912%_)))))
                 (_%read-lang-args193835%_
                  (lambda (_%inp193867%_ _%args193868%_)
                    (let* ((_%$%args193869193877%_ _%args193868%_)
                           (_%$%else193871193885%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path193830%_)))
                           (_%$%K193873193900%_
                            (lambda (_%args193888%_ _%prelude193889%_)
                              (let* ((_%pkg193891%_
                                      (pgetq__0 'package: _%args193888%_))
                                     (_%pkg193893%_
                                      (if _%pkg193891%_
                                          (_%string-e193834%_
                                           _%pkg193891%_
                                           '"package")
                                          '#f))
                                     (_%ns193895%_
                                      (pgetq__0 'namespace: _%args193888%_))
                                     (_%ns193897%_
                                      (if _%ns193895%_
                                          (_%string-e193834%_
                                           _%ns193895%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body193833%_
                                 _%inp193867%_
                                 _%prelude193889%_
                                 _%ns193897%_
                                 _%pkg193893%_
                                 _%args193888%_)))))
                      (if (pair? _%$%args193869193877%_)
                          (let ((_%$%hd193874193903%_
                                 (##car _%$%args193869193877%_))
                                (_%$%tl193875193905%_
                                 (##cdr _%$%args193869193877%_)))
                            (let* ((_%prelude193908%_ _%$%hd193874193903%_)
                                   (_%args193910%_ _%$%tl193875193905%_))
                              (_%$%K193873193900%_
                               _%args193910%_
                               _%prelude193908%_)))
                          (_%$%else193871193885%_)))))
                 (_%read-lang193836%_
                  (lambda (_%inp193841%_)
                    (let* ((_%head193843%_ (read-line _%inp193841%_))
                           (_%$e193845%_
                            (string-index__0 _%head193843%_ '#\space)))
                      (if _%$e193845%_
                          (let ((_%lang193850%_
                                 (substring _%head193843%_ '0 _%$e193845%_)))
                            (if (equal? _%lang193850%_ '"#lang")
                                (let* ((_%rest193852%_
                                        (substring
                                         _%head193843%_
                                         (##fx+ _%$e193845%_ '1)
                                         (string-length _%head193843%_)))
                                       (_%args193863%_
                                        (__with-catch
                                         (lambda (_%$%g193853193855%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path193830%_
                                            _%$%g193853193855%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest193852%_
                                            (lambda (_%$%g193858193860%_)
                                              (read-all
                                               _%$%g193858193860%_
                                               read)))))))
                                  (_%read-lang-args193835%_
                                   _%inp193841%_
                                   _%args193863%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path193830%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path193830%_)))))
                 (_%read-e193837%_
                  (lambda (_%inp193839%_)
                    (if (eq? (peek-char _%inp193839%_) '#\#)
                        (_%read-lang193836%_ _%inp193839%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path193830%_)))))
          (gx#call-with-input-source-file _%path193830%_ _%read-e193837%_))))
    (define gx#core-read-module-package
      (lambda (_%path193778%_ _%pre193779%_ _%ns193780%_)
        (letrec ((_%string-e193782%_
                  (lambda (_%e193825%_)
                    (if (symbol? _%e193825%_)
                        (##symbol->string _%e193825%_)
                        (if (string? _%e193825%_)
                            _%e193825%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e193825%_))))))
          (let _%lp193784%_ ((_%dir193786%_ (path-directory _%path193778%_))
                             (_%pkg-path193787%_ '()))
            (let ((_%gerbil.pkg193789%_
                   (path-expand '"gerbil.pkg" _%dir193786%_)))
              (if (##file-exists? _%gerbil.pkg193789%_)
                  (let ((_%plist193791%_
                         (gx#core-library-package-plist__% _%dir193786%_ '#t)))
                    (if (null? _%plist193791%_)
                        (let ((_%pkg193794%_
                               (if (null? _%pkg-path193787%_)
                                   '#f
                                   (string-join _%pkg-path193787%_ '"/"))))
                          (values _%pre193779%_ _%ns193780%_ _%pkg193794%_))
                        (if (list? _%plist193791%_)
                            (let* ((_%root193797%_
                                    (pgetq__0 'package: _%plist193791%_))
                                   (_%pkg193801%_
                                    (let ((_%pkg-path193799%_
                                           (if _%root193797%_
                                               (cons (_%string-e193782%_
                                                      _%root193797%_)
                                                     _%pkg-path193787%_)
                                               _%pkg-path193787%_)))
                                      (if (null? _%pkg-path193799%_)
                                          '#f
                                          (string-join
                                           _%pkg-path193799%_
                                           '"/"))))
                                   (_%ns193808%_
                                    (let ((_%ns193806%_
                                           (let ((_%$e193803%_ _%ns193780%_))
                                             (if _%$e193803%_
                                                 _%$e193803%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist193791%_)))))
                                      (if _%ns193806%_
                                          (_%string-e193782%_ _%ns193806%_)
                                          '#f)))
                                   (_%pre193813%_
                                    (let ((_%$e193810%_ _%pre193779%_))
                                      (if _%$e193810%_
                                          _%$e193810%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist193791%_)))))
                              (values _%pre193813%_
                                      _%ns193808%_
                                      _%pkg193801%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist193791%_))))
                  (let ((_%dir*193817%_
                         (path-strip-trailing-directory-separator
                          _%dir193786%_)))
                    (if (or (__string-empty? _%dir*193817%_)
                            (equal? _%dir193786%_ _%dir*193817%_))
                        (values _%pre193779%_ _%ns193780%_ '#f)
                        (let ((_%xpath193822%_
                               (path-strip-directory _%dir*193817%_))
                              (_%xdir193823%_ (path-directory _%dir*193817%_)))
                          (_%lp193784%_
                           _%xdir193823%_
                           (cons _%xpath193822%_ _%pkg-path193787%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path193776%_)
        (path-strip-extension (path-strip-directory _%path193776%_))))
    (define gx#core-module-path->id
      (lambda (_%path193774%_)
        (##string->symbol (gx#core-module-path->namespace _%path193774%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path193753%_ _%rel193754%_)
        (let* ((_%path193756%_ (gx#stx-e _%stx-path193753%_))
               (_%path193758%_
                (if (__string-empty? (path-extension _%path193756%_))
                    (##string-append _%path193756%_ '".ss")
                    _%path193756%_)))
          (gx#core-resolve-path__%
           _%path193758%_
           (let ((_%$e193761%_ (gx#stx-source _%stx-path193753%_)))
             (if _%$e193761%_ _%$e193761%_ _%rel193754%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path193767%_)
        (let ((_%rel193769%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path193767%_ _%rel193769%_))))
    (define gx#core-resolve-module-path
      (lambda _g195412_
        (let ((_g195413_ (##length _g195412_)))
          (cond ((##fx= _g195413_ 1)
                 (apply gx#core-resolve-module-path__0 _g195412_))
                ((##fx= _g195413_ 2)
                 (apply gx#core-resolve-module-path__% _g195412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g195412_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath193638%_)
        (let* ((_%spath193640%_ (symbol->string (gx#stx-e _%libpath193638%_)))
               (_%spath193642%_
                (substring
                 _%spath193640%_
                 '1
                 (##string-length _%spath193640%_)))
               (_%ext193644%_ (path-extension _%spath193642%_))
               (_%ssi193646%_
                (if (__string-empty? _%ext193644%_)
                    (##string-append _%spath193642%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath193642%_)
                     '".ssi")))
               (_%srcs193650%_
                (if (__string-empty? _%ext193644%_)
                    (##map (lambda (_%ext193648%_)
                             (string-append _%spath193642%_ _%ext193648%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath193642%_ '()))))
          (let _%lp193653%_ ((_%rest193655%_ (load-path)))
            (let* ((_%$%rest193656193665%_ _%rest193655%_)
                   (_%$%E193659193669%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest193656193665%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K193661193740%_
                     (lambda (_%rest193680%_ _%dir193681%_)
                       (letrec ((_%resolve193683%_
                                 (lambda (_%ssi193696%_ _%srcs193697%_)
                                   (let ((_%compiled-path193699%_
                                          (path-expand
                                           _%ssi193696%_
                                           _%dir193681%_)))
                                     (if (##file-exists?
                                          _%compiled-path193699%_)
                                         (path-normalize
                                          _%compiled-path193699%_)
                                         (let _%lpr193701%_ ((_%rest-src193703%_
                                                              _%srcs193697%_))
                                           (let* ((_%$%rest-src193704193712%_
                                                   _%rest-src193703%_)
                                                  (_%$%else193706193720%_
                                                   (lambda ()
                                                     (_%lp193653%_
                                                      _%rest193680%_)))
                                                  (_%$%K193708193728%_
                                                   (lambda (_%rest-src193723%_
                                                            _%src193724%_)
                                                     (let ((_%src-path193726%_
                                                            (path-expand
                                                             _%src193724%_
                                                             _%dir193681%_)))
                                                       (if (##file-exists?
                                                            _%src-path193726%_)
                                                           (path-normalize
                                                            _%src-path193726%_)
                                                           (_%lpr193701%_
                                                            _%rest-src193723%_))))))
                                             (if (pair? _%$%rest-src193704193712%_)
                                                 (let ((_%$%hd193709193731%_
                                                        (##car _%$%rest-src193704193712%_))
                                                       (_%$%tl193710193733%_
                                                        (##cdr _%$%rest-src193704193712%_)))
                                                   (let* ((_%src193736%_
                                                           _%$%hd193709193731%_)
                                                          (_%rest-src193738%_
                                                           _%$%tl193710193733%_))
                                                     (_%$%K193708193728%_
                                                      _%rest-src193738%_
                                                      _%src193736%_)))
                                                 (_%$%else193706193720%_)))))))))
                         (let ((_%$e193685%_
                                (gx#core-library-package-path-prefix
                                 _%dir193681%_)))
                           (if _%$e193685%_
                               (if (string-prefix?
                                    _%$e193685%_
                                    _%spath193642%_)
                                   (let ((_%ssi193692%_
                                          (substring
                                           _%ssi193646%_
                                           (string-length _%$e193685%_)
                                           (##string-length _%ssi193646%_)))
                                         (_%srcs193693%_
                                          (##map (lambda (_%src193690%_)
                                                   (substring
                                                    _%src193690%_
                                                    (string-length
                                                     _%$e193685%_)
                                                    (string-length
                                                     _%src193690%_)))
                                                 _%srcs193650%_)))
                                     (_%resolve193683%_
                                      _%ssi193692%_
                                      _%srcs193693%_))
                                   (_%lp193653%_ _%rest193680%_))
                               (_%resolve193683%_
                                _%ssi193646%_
                                _%srcs193650%_))))))
                    (_%$%K193660193674%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath193638%_))))
                (let ((_%$%try-match193658193677%_
                       (lambda ()
                         (if (null? _%$%rest193656193665%_)
                             (_%$%K193660193674%_)
                             (_%$%E193659193669%_)))))
                  (if (pair? _%$%rest193656193665%_)
                      (let ((_%$%tl193663193745%_
                             (##cdr _%$%rest193656193665%_))
                            (_%$%hd193662193743%_
                             (##car _%$%rest193656193665%_)))
                        (let ((_%dir193748%_ _%$%hd193662193743%_)
                              (_%rest193750%_ _%$%tl193663193745%_))
                          (_%$%K193661193740%_ _%rest193750%_ _%dir193748%_)))
                      (_%$%try-match193658193677%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath193606%_)
        (letrec ((_%resolve193608%_
                  (lambda (_%path193629%_ _%base193630%_)
                    (let ((_%$e193632%_
                           (string-rindex__0 _%base193630%_ '#\/)))
                      (if _%$e193632%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base193630%_ '0 _%$e193632%_)
                             '"/"
                             _%path193629%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path193629%_))))))))
          (let ((_%spath193610%_ (symbol->string (gx#stx-e _%modpath193606%_)))
                (_%mod193611%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod193611%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath193606%_))
            (let ((_%mpath193613%_
                   (symbol->string
                    (##structure-ref
                     _%mod193611%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp193615%_ ((_%spath193617%_ _%spath193610%_)
                                 (_%mpath193618%_ _%mpath193613%_))
                (if (string-prefix? '"../" _%spath193617%_)
                    (let ((_%$e193621%_
                           (string-rindex__0 _%mpath193618%_ '#\/)))
                      (if _%$e193621%_
                          (_%lp193615%_
                           (substring
                            _%spath193617%_
                            '3
                            (string-length _%spath193617%_))
                           (substring _%mpath193618%_ '0 _%$e193621%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath193606%_)))
                    (if (string-prefix? '"./" _%spath193617%_)
                        (_%lp193615%_
                         (substring
                          _%spath193617%_
                          '2
                          (string-length _%spath193617%_))
                         _%mpath193618%_)
                        (_%resolve193608%_
                         _%spath193617%_
                         _%mpath193618%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir193598%_)
        (let ((_%$e193600%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir193598%_))))
          (if _%$e193600%_
              (##string-append (symbol->string _%$e193600%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir193568%_ _%exists?193569%_)
        (let ((_%$e193571%_ (__hash-get gx#__module-pkg-cache _%dir193568%_)))
          (if _%$e193571%_
              _%$e193571%_
              (let* ((_%gerbil.pkg193575%_
                      (path-expand '"gerbil.pkg" _%dir193568%_))
                     (_%plist193585%_
                      (if (or _%exists?193569%_
                              (##file-exists? _%gerbil.pkg193575%_))
                          (let ((_%e193580%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg193575%_
                                  read)))
                            (if (eof-object? _%e193580%_)
                                '()
                                (if (list? _%e193580%_)
                                    _%e193580%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg193575%_
                                     _%e193580%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir193568%_
                 _%plist193585%_)
                _%plist193585%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir193591%_)
        (let ((_%exists?193593%_ '#f))
          (gx#core-library-package-plist__% _%dir193591%_ _%exists?193593%_))))
    (define gx#core-library-package-plist
      (lambda _g195414_
        (let ((_g195415_ (##length _g195414_)))
          (cond ((##fx= _g195415_ 1)
                 (apply gx#core-library-package-plist__0 _g195414_))
                ((##fx= _g195415_ 2)
                 (apply gx#core-library-package-plist__% _g195414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g195414_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx193565%_)
        (gx#core-special-module-path? _%stx193565%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx193563%_)
        (gx#core-special-module-path? _%stx193563%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx193558%_ _%char193559%_)
        (if (gx#identifier? _%stx193558%_)
            (if (interned-symbol? (gx#stx-e _%stx193558%_))
                (let ((_%str193561%_
                       (symbol->string (gx#stx-e _%stx193558%_))))
                  (if (##fx> (##string-length _%str193561%_) '1)
                      (eq? (string-ref _%str193561%_ '0) _%char193559%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx193552%_)
        (gx#core-bound-identifier?__%
         _%stx193552%_
         (lambda (_%$%g193553193555%_)
           (gx#expander-binding?__%
            _%$%g193553193555%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx193546%_)
        (gx#core-bound-identifier?__%
         _%stx193546%_
         (lambda (_%$%g193547193549%_)
           (gx#expander-binding?__% _%$%g193547193549%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx193533%_)
        (letrec ((_%module-prelude?193535%_
                  (lambda (_%e193541%_)
                    (let ((_%$e193543%_
                           (##structure-instance-of?
                            _%e193541%_
                            'gx#module-context::t)))
                      (if _%$e193543%_
                          _%$e193543%_
                          (##structure-instance-of?
                           _%e193541%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx193533%_
           (lambda (_%$%g193536193538%_)
             (gx#expander-binding?__%
              _%$%g193536193538%_
              _%module-prelude?193535%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in193464%_ _%ctx193465%_ _%force-weak?193466%_)
        (let* ((_%$%in193467193476%_ _%in193464%_)
               (_%$%E193469193479%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in193467193476%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K193470193492%_
                (lambda (_%weak?193482%_
                         _%phi193483%_
                         _%key193484%_
                         _%source193485%_)
                  (gx#core-bind!__%
                   _%key193484%_
                   (let* ((_%e193487%_
                           (gx#core-resolve-module-export _%source193485%_))
                          (__obj195396
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
                      __obj195396
                      (##unchecked-structure-ref _%e193487%_ '1 '#f '#f)
                      _%key193484%_
                      _%phi193483%_
                      _%e193487%_
                      (##unchecked-structure-ref _%source193485%_ '1 '#f '#f)
                      (let ((_%$e193489%_ _%force-weak?193466%_))
                        (if _%$e193489%_ _%$e193489%_ _%weak?193482%_)))
                     __obj195396)
                   gx#core-context-rebind?
                   _%phi193483%_
                   _%ctx193465%_))))
          (if (##structure-direct-instance-of?
               _%$%in193467193476%_
               'gx#module-import::t)
              (let* ((_%$%e193471193495%_
                      (##unchecked-structure-ref
                       _%$%in193467193476%_
                       '1
                       '#f
                       '#f))
                     (_%source193498%_ _%$%e193471193495%_)
                     (_%$%e193472193500%_
                      (##unchecked-structure-ref
                       _%$%in193467193476%_
                       '2
                       '#f
                       '#f))
                     (_%key193503%_ _%$%e193472193500%_)
                     (_%$%e193473193505%_
                      (##unchecked-structure-ref
                       _%$%in193467193476%_
                       '3
                       '#f
                       '#f))
                     (_%phi193508%_ _%$%e193473193505%_)
                     (_%$%e193474193510%_
                      (##unchecked-structure-ref
                       _%$%in193467193476%_
                       '4
                       '#f
                       '#f))
                     (_%weak?193513%_ _%$%e193474193510%_))
                (_%$%K193470193492%_
                 _%weak?193513%_
                 _%phi193508%_
                 _%key193503%_
                 _%source193498%_))
              (_%$%E193469193479%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in193518%_)
        (let* ((_%ctx193520%_ (gx#current-expander-context))
               (_%force-weak?193522%_ '#f))
          (gx#core-bind-import!__%
           _%in193518%_
           _%ctx193520%_
           _%force-weak?193522%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in193524%_ _%ctx193525%_)
        (let ((_%force-weak?193527%_ '#f))
          (gx#core-bind-import!__%
           _%in193524%_
           _%ctx193525%_
           _%force-weak?193527%_))))
    (define gx#core-bind-import!
      (lambda _g195416_
        (let ((_g195417_ (##length _g195416_)))
          (cond ((##fx= _g195417_ 1) (apply gx#core-bind-import!__0 _g195416_))
                ((##fx= _g195417_ 2) (apply gx#core-bind-import!__1 _g195416_))
                ((##fx= _g195417_ 3) (apply gx#core-bind-import!__% _g195416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g195416_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in193450%_ _%ctx193451%_)
        (gx#core-bind-import!__% _%in193450%_ _%ctx193451%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in193456%_)
        (let ((_%ctx193458%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in193456%_ _%ctx193458%_))))
    (define gx#core-bind-weak-import!
      (lambda _g195418_
        (let ((_g195419_ (##length _g195418_)))
          (cond ((##fx= _g195419_ 1)
                 (apply gx#core-bind-weak-import!__0 _g195418_))
                ((##fx= _g195419_ 2)
                 (apply gx#core-bind-weak-import!__% _g195418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g195418_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out193343%_)
        (letrec ((_%subst193345%_
                  (lambda (_%key193390%_)
                    (let* ((_%$%key193391193399%_ _%key193390%_)
                           (_%$%else193393193407%_ (lambda () _%key193390%_))
                           (_%$%K193395193437%_
                            (lambda (_%mark193410%_ _%id193411%_)
                              (let* ((_%$%mark193412193418%_ _%mark193410%_)
                                     (_%$%E193414193421%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark193412193418%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K193415193429%_
                                      (lambda (_%subst193424%_)
                                        (let ((_%$e193426%_
                                               (if _%subst193424%_
                                                   (hash-get
                                                    _%subst193424%_
                                                    _%id193411%_)
                                                   '#f)))
                                          (if _%$e193426%_
                                              _%$e193426%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key193390%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark193412193418%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e193416193432%_
                                            (##unchecked-structure-ref
                                             _%$%mark193412193418%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst193435%_
                                            _%$%e193416193432%_))
                                      (_%$%K193415193429%_ _%subst193435%_))
                                    (_%$%E193414193421%_))))))
                      (if (pair? _%$%key193391193399%_)
                          (let ((_%$%hd193396193440%_
                                 (##car _%$%key193391193399%_))
                                (_%$%tl193397193442%_
                                 (##cdr _%$%key193391193399%_)))
                            (let* ((_%id193445%_ _%$%hd193396193440%_)
                                   (_%mark193447%_ _%$%tl193397193442%_))
                              (_%$%K193395193437%_
                               _%mark193447%_
                               _%id193445%_)))
                          (_%$%else193393193407%_))))))
          (let* ((_%$%out193346193356%_ _%out193343%_)
                 (_%$%E193348193359%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out193346193356%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K193349193366%_
                  (lambda (_%phi193362%_ _%key193363%_ _%ctx193364%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx193364%_ _%phi193362%_)
                     (_%subst193345%_ _%key193363%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out193346193356%_
                 'gx#module-export::t)
                (let* ((_%$%e193350193369%_
                        (##unchecked-structure-ref
                         _%$%out193346193356%_
                         '1
                         '#f
                         '#f))
                       (_%ctx193372%_ _%$%e193350193369%_)
                       (_%$%e193351193374%_
                        (##unchecked-structure-ref
                         _%$%out193346193356%_
                         '2
                         '#f
                         '#f))
                       (_%key193377%_ _%$%e193351193374%_)
                       (_%$%e193352193379%_
                        (##unchecked-structure-ref
                         _%$%out193346193356%_
                         '3
                         '#f
                         '#f))
                       (_%phi193382%_ _%$%e193352193379%_)
                       (_%$%e193353193384%_
                        (##unchecked-structure-ref
                         _%$%out193346193356%_
                         '4
                         '#f
                         '#f))
                       (_%$%e193354193387%_
                        (##unchecked-structure-ref
                         _%$%out193346193356%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K193349193366%_
                   _%phi193382%_
                   _%key193377%_
                   _%ctx193372%_))
                (_%$%E193348193359%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out193269%_ _%rename193270%_ _%dphi193271%_)
        (let* ((_%$%out193272193282%_ _%out193269%_)
               (_%$%E193274193285%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out193272193282%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K193275193297%_
                (lambda (_%weak?193288%_
                         _%name193289%_
                         _%phi193290%_
                         _%key193291%_
                         _%ctx193292%_)
                  (##structure
                   gx#module-import::t
                   _%out193269%_
                   (let ((_%$e193294%_ _%rename193270%_))
                     (if _%$e193294%_ _%$e193294%_ _%name193289%_))
                   (fx+ _%phi193290%_ _%dphi193271%_)
                   _%weak?193288%_))))
          (if (##structure-direct-instance-of?
               _%$%out193272193282%_
               'gx#module-export::t)
              (let* ((_%$%e193276193300%_
                      (##unchecked-structure-ref
                       _%$%out193272193282%_
                       '1
                       '#f
                       '#f))
                     (_%ctx193303%_ _%$%e193276193300%_)
                     (_%$%e193277193305%_
                      (##unchecked-structure-ref
                       _%$%out193272193282%_
                       '2
                       '#f
                       '#f))
                     (_%key193308%_ _%$%e193277193305%_)
                     (_%$%e193278193310%_
                      (##unchecked-structure-ref
                       _%$%out193272193282%_
                       '3
                       '#f
                       '#f))
                     (_%phi193313%_ _%$%e193278193310%_)
                     (_%$%e193279193315%_
                      (##unchecked-structure-ref
                       _%$%out193272193282%_
                       '4
                       '#f
                       '#f))
                     (_%name193318%_ _%$%e193279193315%_)
                     (_%$%e193280193320%_
                      (##unchecked-structure-ref
                       _%$%out193272193282%_
                       '5
                       '#f
                       '#f))
                     (_%weak?193323%_ _%$%e193280193320%_))
                (_%$%K193275193297%_
                 _%weak?193323%_
                 _%name193318%_
                 _%phi193313%_
                 _%key193308%_
                 _%ctx193303%_))
              (_%$%E193274193285%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out193328%_)
        (let* ((_%rename193330%_ '#f) (_%dphi193332%_ '0))
          (gx#core-module-export->import__%
           _%out193328%_
           _%rename193330%_
           _%dphi193332%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out193334%_ _%rename193335%_)
        (let ((_%dphi193337%_ '0))
          (gx#core-module-export->import__%
           _%out193334%_
           _%rename193335%_
           _%dphi193337%_))))
    (define gx#core-module-export->import
      (lambda _g195420_
        (let ((_g195421_ (##length _g195420_)))
          (cond ((##fx= _g195421_ 1)
                 (apply gx#core-module-export->import__0 _g195420_))
                ((##fx= _g195421_ 2)
                 (apply gx#core-module-export->import__1 _g195420_))
                ((##fx= _g195421_ 3)
                 (apply gx#core-module-export->import__% _g195420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g195420_))))))
    (define gx#core-expand-module%
      (lambda (_%stx193168%_)
        (letrec ((_%make-context193170%_
                  (lambda (_%id193247%_)
                    (let* ((_%super193249%_ (gx#current-expander-context))
                           (_%bind-id193251%_ (gx#stx-e _%id193247%_))
                           (_%mod-id193253%_
                            (if (##structure-instance-of?
                                 _%super193249%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super193249%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id193251%_)
                                _%bind-id193251%_))
                           (_%ns193255%_ (symbol->string _%mod-id193253%_))
                           (_%path193265%_
                            (if (##structure-instance-of?
                                 _%super193249%_
                                 'gx#module-context::t)
                                (let ((_%path193257%_
                                       (##unchecked-structure-ref
                                        _%super193249%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path193257%_)
                                          (null? _%path193257%_))
                                      (cons _%bind-id193251%_ _%path193257%_)
                                      (if (not _%path193257%_)
                                          _%bind-id193251%_
                                          (cons _%bind-id193251%_
                                                (cons _%path193257%_ '())))))
                                _%bind-id193251%_))
                           (__obj195397
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
                       __obj195397
                       _%mod-id193253%_
                       _%super193249%_
                       _%ns193255%_
                       _%path193265%_)
                      __obj195397)))
                 (_%valid-module-id?193171%_
                  (lambda (_%id193222%_)
                    (let* ((_%str193224%_ (symbol->string _%id193222%_))
                           (_%len193226%_ (##string-length _%str193224%_)))
                      (if (##fx>= _%len193226%_ '1)
                          (let _%loop193229%_ ((_%index193231%_
                                                (##fx- (##string-length
                                                        _%str193224%_)
                                                       '1)))
                            (if (##fx>= _%index193231%_ '0)
                                (let ((_%c193233%_
                                       (string-ref
                                        _%str193224%_
                                        _%index193231%_)))
                                  (if (or (and (##char>=? _%c193233%_ '#\a)
                                               (##char<=? _%c193233%_ '#\z))
                                          (and (##char>=? _%c193233%_ '#\A)
                                               (##char<=? _%c193233%_ '#\Z))
                                          (and (##char>=? _%c193233%_ '#\0)
                                               (##char<=? _%c193233%_ '#\9))
                                          (##char=? _%c193233%_ '#\_)
                                          (##char=? _%c193233%_ '#\-))
                                      (_%loop193229%_
                                       (##fx- _%index193231%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e193172193182%_ _%stx193168%_)
                 (_%$%E193174193186%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e193172193182%_)))
                 (_%$%E193173193218%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193172193182%_)
                        (let ((_%$%e193175193190%_
                               (gx#syntax-e _%$%e193172193182%_)))
                          (let ((_%$%hd193176193193%_
                                 (##car _%$%e193175193190%_))
                                (_%$%tl193177193195%_
                                 (##cdr _%$%e193175193190%_)))
                            (if (gx#stx-pair? _%$%tl193177193195%_)
                                (let ((_%$%e193178193198%_
                                       (gx#syntax-e _%$%tl193177193195%_)))
                                  (let ((_%$%hd193179193201%_
                                         (##car _%$%e193178193198%_))
                                        (_%$%tl193180193203%_
                                         (##cdr _%$%e193178193198%_)))
                                    (let* ((_%id193206%_ _%$%hd193179193201%_)
                                           (_%body193208%_
                                            _%$%tl193180193203%_))
                                      (if (and (gx#identifier? _%id193206%_)
                                               (gx#stx-list? _%body193208%_))
                                          (if (_%valid-module-id?193171%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx193210%_
                                                      (_%make-context193170%_
                                                       _%id193206%_))
                                                     (_%body193212%_
                                                      (gx#core-expand-module-begin
                                                       _%body193208%_
                                                       _%ctx193210%_))
                                                     (_%body193214%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body193212%_)
                                                       (gx#stx-source
                                                        _%stx193168%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx193210%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body193214%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx193210%_
                                                 _%body193214%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id193206%_
                                                 _%ctx193210%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id193206%_)
                                                  _%body193214%_)
                                                 (gx#stx-source
                                                  _%stx193168%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx193168%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E193174193186%_)))))
                                (_%$%E193174193186%_))))
                        (_%$%E193174193186%_)))))
            (_%$%E193173193218%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body193133%_ _%ctx193134%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx193138%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body193133%_)))
                     (_%$%e193139193146%_ _%stx193138%_)
                     (_%$%E193141193150%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx193138%_)))
                     (_%$%E193140193164%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e193139193146%_)
                            (let ((_%$%e193142193154%_
                                   (gx#syntax-e _%$%e193139193146%_)))
                              (let ((_%$%hd193143193157%_
                                     (##car _%$%e193142193154%_))
                                    (_%$%tl193144193159%_
                                     (##cdr _%$%e193142193154%_)))
                                (if (and (gx#identifier? _%$%hd193143193157%_)
                                         (gx#core-identifier=?
                                          _%$%hd193143193157%_
                                          '%#begin-module))
                                    (let ((_%body193162%_
                                           _%$%tl193144193159%_))
                                      (if (gx#sealed-syntax? _%stx193138%_)
                                          _%body193162%_
                                          (gx#core-expand-module-body
                                           _%body193162%_)))
                                    (_%$%E193141193150%_))))
                            (_%$%E193141193150%_)))))
                (_%$%E193140193164%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx193134%_)))
    (define gx#core-expand-module-body
      (lambda (_%body192830%_)
        (letrec ((_%expand-special192832%_
                  (lambda (_%hd192961%_ _%K192962%_ _%rest192963%_ _%r192964%_)
                    (let* ((_%$%e192965193005%_ _%hd192961%_)
                           (_%$%E193000193009%_
                            (lambda ()
                              (_%K192962%_
                               _%rest192963%_
                               (cons (gx#core-expand-top _%hd192961%_)
                                     _%r192964%_))))
                           (_%$%E192987193021%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192965193005%_)
                                  (let ((_%$%e193001193013%_
                                         (gx#syntax-e _%$%e192965193005%_)))
                                    (let ((_%$%hd193002193016%_
                                           (##car _%$%e193001193013%_))
                                          (_%$%tl193003193018%_
                                           (##cdr _%$%e193001193013%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193002193016%_)
                                               (gx#core-identifier=?
                                                _%$%hd193002193016%_
                                                '%#export))
                                          (_%K192962%_
                                           _%rest192963%_
                                           (cons _%hd192961%_ _%r192964%_))
                                          (_%$%E193000193009%_))))
                                  (_%$%E193000193009%_))))
                           (_%$%E192977193063%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192965193005%_)
                                  (let ((_%$%e192988193025%_
                                         (gx#syntax-e _%$%e192965193005%_)))
                                    (let ((_%$%hd192989193028%_
                                           (##car _%$%e192988193025%_))
                                          (_%$%tl192990193030%_
                                           (##cdr _%$%e192988193025%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192989193028%_)
                                               (gx#core-identifier=?
                                                _%$%hd192989193028%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl192990193030%_)
                                              (let ((_%$%e192991193033%_
                                                     (gx#syntax-e
                                                      _%$%tl192990193030%_)))
                                                (let ((_%$%hd192992193036%_
                                                       (##car _%$%e192991193033%_))
                                                      (_%$%tl192993193038%_
                                                       (##cdr _%$%e192991193033%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd192992193036%_)
                                                      (let ((_%$%e192997193041%_
                                                             (gx#syntax-e
                                                              _%$%hd192992193036%_)))
                                                        (let ((_%$%hd192998193044%_
                                                               (##car _%$%e192997193041%_))
                                                              (_%$%tl192999193046%_
                                                               (##cdr _%$%e192997193041%_)))
                                                          (let ((_%id193049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd192998193044%_))
                    (if (gx#stx-null? _%$%tl192999193046%_)
                        (if (gx#stx-pair? _%$%tl192993193038%_)
                            (let ((_%$%e192994193051%_
                                   (gx#syntax-e _%$%tl192993193038%_)))
                              (let ((_%$%hd192995193054%_
                                     (##car _%$%e192994193051%_))
                                    (_%$%tl192996193056%_
                                     (##cdr _%$%e192994193051%_)))
                                (let ((_%props193059%_ _%$%hd192995193054%_))
                                  (if (gx#stx-null? _%$%tl192996193056%_)
                                      (let ((_%bind193061%_
                                             (gx#resolve-identifier__0
                                              _%id193049%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193061%_
                                         _%props193059%_)
                                        (_%K192962%_
                                         _%rest192963%_
                                         _%r192964%_))
                                      (_%$%E192987193021%_)))))
                            (_%$%E192987193021%_))
                        (_%$%E192987193021%_)))))
              (_%$%E192987193021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192987193021%_))
                                          (_%$%E192987193021%_))))
                                  (_%$%E192987193021%_))))
                           (_%$%E192967193095%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192965193005%_)
                                  (let ((_%$%e192978193067%_
                                         (gx#syntax-e _%$%e192965193005%_)))
                                    (let ((_%$%hd192979193070%_
                                           (##car _%$%e192978193067%_))
                                          (_%$%tl192980193072%_
                                           (##cdr _%$%e192978193067%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192979193070%_)
                                               (gx#core-identifier=?
                                                _%$%hd192979193070%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192980193072%_)
                                              (let ((_%$%e192981193075%_
                                                     (gx#syntax-e
                                                      _%$%tl192980193072%_)))
                                                (let ((_%$%hd192982193078%_
                                                       (##car _%$%e192981193075%_))
                                                      (_%$%tl192983193080%_
                                                       (##cdr _%$%e192981193075%_)))
                                                  (let ((_%hd-bind193083%_
                                                         _%$%hd192982193078%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192983193080%_)
                                                        (let ((_%$%e192984193085%_
                                                               (gx#syntax-e
                                                                _%$%tl192983193080%_)))
                                                          (let ((_%$%hd192985193088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192984193085%_))
                        (_%$%tl192986193090%_ (##cdr _%$%e192984193085%_)))
                    (let ((_%expr193093%_ _%$%hd192985193088%_))
                      (if (gx#stx-null? _%$%tl192986193090%_)
                          (if (gx#core-bind-values? _%hd-bind193083%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193083%_)
                                (_%K192962%_
                                 _%rest192963%_
                                 (cons _%hd192961%_ _%r192964%_)))
                              (_%$%E192977193063%_))
                          (_%$%E192977193063%_)))))
                (_%$%E192977193063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192977193063%_))
                                          (_%$%E192977193063%_))))
                                  (_%$%E192977193063%_))))
                           (_%$%E192966193129%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192965193005%_)
                                  (let ((_%$%e192968193099%_
                                         (gx#syntax-e _%$%e192965193005%_)))
                                    (let ((_%$%hd192969193102%_
                                           (##car _%$%e192968193099%_))
                                          (_%$%tl192970193104%_
                                           (##cdr _%$%e192968193099%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd192969193102%_)
                                               (gx#core-identifier=?
                                                _%$%hd192969193102%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl192970193104%_)
                                              (let ((_%$%e192971193107%_
                                                     (gx#syntax-e
                                                      _%$%tl192970193104%_)))
                                                (let ((_%$%hd192972193110%_
                                                       (##car _%$%e192971193107%_))
                                                      (_%$%tl192973193112%_
                                                       (##cdr _%$%e192971193107%_)))
                                                  (let ((_%hd-bind193115%_
                                                         _%$%hd192972193110%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl192973193112%_)
                                                        (let ((_%$%e192974193117%_
                                                               (gx#syntax-e
                                                                _%$%tl192973193112%_)))
                                                          (let ((_%$%hd192975193120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e192974193117%_))
                        (_%$%tl192976193122%_ (##cdr _%$%e192974193117%_)))
                    (let* ((_%expr193125%_ _%$%hd192975193120%_)
                           (_%props193127%_ _%$%tl192976193122%_))
                      (if (and (gx#core-bind-values? _%hd-bind193115%_)
                               (gx#stx-list? _%props193127%_)
                               (not (gx#stx-null? _%props193127%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193115%_)
                            (_%K192962%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193115%_
                                          (cons _%props193127%_ '())))
                                   _%rest192963%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193115%_
                                          (cons _%expr193125%_ '())))
                                   _%r192964%_)))
                          (_%$%E192967193095%_)))))
                (_%$%E192967193095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192967193095%_))
                                          (_%$%E192967193095%_))))
                                  (_%$%E192967193095%_)))))
                      (_%$%E192966193129%_))))
                 (_%expand-body192833%_
                  (lambda (_%rbody192835%_)
                    (let _%lp192837%_ ((_%rest192839%_ _%rbody192835%_)
                                       (_%body192840%_ '()))
                      (let* ((_%$%rest192841192849%_ _%rest192839%_)
                             (_%$%else192843192857%_
                              (lambda () _%body192840%_))
                             (_%$%K192845192949%_
                              (lambda (_%rest192860%_ _%hd192861%_)
                                (let* ((_%$%e192862192883%_ _%hd192861%_)
                                       (_%$%E192878192887%_
                                        (lambda ()
                                          (_%lp192837%_
                                           _%rest192860%_
                                           (cons (gx#core-expand-expression
                                                  _%hd192861%_)
                                                 _%body192840%_))))
                                       (_%$%E192874192901%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192862192883%_)
                                              (let ((_%$%e192879192891%_
                                                     (gx#syntax-e
                                                      _%$%e192862192883%_)))
                                                (let ((_%$%hd192880192894%_
                                                       (##car _%$%e192879192891%_))
                                                      (_%$%tl192881192896%_
                                                       (##cdr _%$%e192879192891%_)))
                                                  (let ((_%form192899%_
                                                         _%$%hd192880192894%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form192899%_
                                                         gx#special-form-binding?)
                                                        (_%lp192837%_
                                                         _%rest192860%_
                                                         (cons _%hd192861%_
                                                               _%body192840%_))
                                                        (_%$%E192878192887%_)))))
                                              (_%$%E192878192887%_))))
                                       (_%$%E192864192913%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192862192883%_)
                                              (let ((_%$%e192875192905%_
                                                     (gx#syntax-e
                                                      _%$%e192862192883%_)))
                                                (let ((_%$%hd192876192908%_
                                                       (##car _%$%e192875192905%_))
                                                      (_%$%tl192877192910%_
                                                       (##cdr _%$%e192875192905%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192876192908%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192876192908%_
                                                            '%#export))
                                                      (_%lp192837%_
                                                       _%rest192860%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd192861%_)
                                                             _%body192840%_))
                                                      (_%$%E192874192901%_))))
                                              (_%$%E192874192901%_))))
                                       (_%$%E192863192945%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e192862192883%_)
                                              (let ((_%$%e192865192917%_
                                                     (gx#syntax-e
                                                      _%$%e192862192883%_)))
                                                (let ((_%$%hd192866192920%_
                                                       (##car _%$%e192865192917%_))
                                                      (_%$%tl192867192922%_
                                                       (##cdr _%$%e192865192917%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd192866192920%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd192866192920%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192867192922%_)
                                                          (let ((_%$%e192868192925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192867192922%_)))
                    (let ((_%$%hd192869192928%_ (##car _%$%e192868192925%_))
                          (_%$%tl192870192930%_ (##cdr _%$%e192868192925%_)))
                      (let ((_%hd-bind192933%_ _%$%hd192869192928%_))
                        (if (gx#stx-pair? _%$%tl192870192930%_)
                            (let ((_%$%e192871192935%_
                                   (gx#syntax-e _%$%tl192870192930%_)))
                              (let ((_%$%hd192872192938%_
                                     (##car _%$%e192871192935%_))
                                    (_%$%tl192873192940%_
                                     (##cdr _%$%e192871192935%_)))
                                (let ((_%expr192943%_ _%$%hd192872192938%_))
                                  (if (gx#stx-null? _%$%tl192873192940%_)
                                      (_%lp192837%_
                                       _%rest192860%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind192933%_)
                                               (gx#core-expand-expression
                                                _%expr192943%_))
                                              (gx#stx-source _%hd192861%_))
                                             _%body192840%_))
                                      (_%$%E192864192913%_)))))
                            (_%$%E192864192913%_)))))
                  (_%$%E192864192913%_))
              (_%$%E192864192913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192864192913%_)))))
                                  (_%$%E192863192945%_)))))
                        (if (pair? _%$%rest192841192849%_)
                            (let ((_%$%hd192846192952%_
                                   (##car _%$%rest192841192849%_))
                                  (_%$%tl192847192954%_
                                   (##cdr _%$%rest192841192849%_)))
                              (let* ((_%hd192957%_ _%$%hd192846192952%_)
                                     (_%rest192959%_ _%$%tl192847192954%_))
                                (_%$%K192845192949%_
                                 _%rest192959%_
                                 _%hd192957%_)))
                            (_%$%else192843192857%_)))))))
          (_%expand-body192833%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body192830%_)
            _%expand-special192832%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx192671%_
               _%expanded?192672%_
               _%method192673%_
               _%current-phi192674%_
               _%expand1192675%_)
        (letrec ((_%K192677%_
                  (lambda (_%rest192797%_ _%r192798%_)
                    (let* ((_%$%e192799192806%_ _%rest192797%_)
                           (_%$%E192801192810%_ (lambda () _%r192798%_))
                           (_%$%E192800192826%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192799192806%_)
                                  (let ((_%$%e192802192814%_
                                         (gx#syntax-e _%$%e192799192806%_)))
                                    (let ((_%$%hd192803192817%_
                                           (##car _%$%e192802192814%_))
                                          (_%$%tl192804192819%_
                                           (##cdr _%$%e192802192814%_)))
                                      (let* ((_%hd192822%_
                                              _%$%hd192803192817%_)
                                             (_%rest192824%_
                                              _%$%tl192804192819%_))
                                        (_%step192678%_
                                         _%hd192822%_
                                         _%rest192824%_
                                         _%r192798%_))))
                                  (_%$%E192801192810%_)))))
                      (_%$%E192800192826%_))))
                 (_%step192678%_
                  (lambda (_%hd192711%_ _%rest192712%_ _%r192713%_)
                    (let* ((_%$%e192714192732%_ _%hd192711%_)
                           (_%$%E192727192736%_
                            (lambda ()
                              (if (_%expanded?192672%_ (gx#stx-e _%hd192711%_))
                                  (_%K192677%_
                                   _%rest192712%_
                                   (cons (gx#stx-e _%hd192711%_) _%r192713%_))
                                  (_%expand1192675%_
                                   _%hd192711%_
                                   _%K192677%_
                                   _%rest192712%_
                                   _%r192713%_))))
                           (_%$%E192723192752%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192714192732%_)
                                  (let ((_%$%e192728192740%_
                                         (gx#syntax-e _%$%e192714192732%_)))
                                    (let ((_%$%hd192729192743%_
                                           (##car _%$%e192728192740%_))
                                          (_%$%tl192730192745%_
                                           (##cdr _%$%e192728192740%_)))
                                      (let* ((_%macro192748%_
                                              _%$%hd192729192743%_)
                                             (_%body192750%_
                                              _%$%tl192730192745%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro192748%_
                                             gx#syntax-binding?)
                                            (_%K192677%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro192748%_)
                                                    _%hd192711%_
                                                    _%method192673%_)
                                                   _%rest192712%_)
                                             _%r192713%_)
                                            (_%$%E192727192736%_)))))
                                  (_%$%E192727192736%_))))
                           (_%$%E192716192766%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192714192732%_)
                                  (let ((_%$%e192724192756%_
                                         (gx#syntax-e _%$%e192714192732%_)))
                                    (let ((_%$%hd192725192759%_
                                           (##car _%$%e192724192756%_))
                                          (_%$%tl192726192761%_
                                           (##cdr _%$%e192724192756%_)))
                                      (if (eq? (gx#stx-e _%$%hd192725192759%_)
                                               'begin:)
                                          (let ((_%body192764%_
                                                 _%$%tl192726192761%_))
                                            (_%K192677%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest192712%_
                                              _%body192764%_)
                                             _%r192713%_))
                                          (_%$%E192723192752%_))))
                                  (_%$%E192723192752%_))))
                           (_%$%E192715192793%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192714192732%_)
                                  (let ((_%$%e192717192770%_
                                         (gx#syntax-e _%$%e192714192732%_)))
                                    (let ((_%$%hd192718192773%_
                                           (##car _%$%e192717192770%_))
                                          (_%$%tl192719192775%_
                                           (##cdr _%$%e192717192770%_)))
                                      (if (eq? (gx#stx-e _%$%hd192718192773%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl192719192775%_)
                                              (let ((_%$%e192720192778%_
                                                     (gx#syntax-e
                                                      _%$%tl192719192775%_)))
                                                (let ((_%$%hd192721192781%_
                                                       (##car _%$%e192720192778%_))
                                                      (_%$%tl192722192783%_
                                                       (##cdr _%$%e192720192778%_)))
                                                  (let* ((_%dphi192786%_
                                                          _%$%hd192721192781%_)
                                                         (_%body192788%_
                                                          _%$%tl192722192783%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi192786%_)
                                                        (let ((_%rbody192791%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K192677%_ _%body192788%_ '()))
                        _%current-phi192674%_
                        (fx+ (gx#stx-e _%dphi192786%_)
                             (_%current-phi192674%_)))))
                  (_%K192677%_
                   _%rest192712%_
                   (append _%rbody192791%_ _%r192713%_)))
                (_%$%E192716192766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192716192766%_))
                                          (_%$%E192716192766%_))))
                                  (_%$%E192716192766%_)))))
                      (_%$%E192715192793%_)))))
          (let* ((_%$%e192679192686%_ _%stx192671%_)
                 (_%$%E192681192690%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192679192686%_)))
                 (_%$%E192680192707%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192679192686%_)
                        (let ((_%$%e192682192694%_
                               (gx#syntax-e _%$%e192679192686%_)))
                          (let ((_%$%hd192683192697%_
                                 (##car _%$%e192682192694%_))
                                (_%$%tl192684192699%_
                                 (##cdr _%$%e192682192694%_)))
                            (let ((_%body192702%_ _%$%tl192684192699%_))
                              (if (_%current-phi192674%_)
                                  (_%K192677%_ _%body192702%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K192677%_ _%body192702%_ '()))
                                   _%current-phi192674%_
                                   (gx#current-expander-phi))))))
                        (_%$%E192681192690%_)))))
            (_%$%E192680192707%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx192325%_ _%internal-expand?192326%_)
        (letrec ((_%expand1192328%_
                  (lambda (_%hd192643%_ _%K192644%_ _%rest192645%_ _%r192646%_)
                    (if (gx#core-bound-module? _%hd192643%_)
                        (_%import1192329%_
                         (gx#syntax-local-e__0 _%hd192643%_)
                         _%K192644%_
                         _%rest192645%_
                         _%r192646%_)
                        (if (gx#core-library-module-path? _%hd192643%_)
                            (_%import1192329%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd192643%_))
                             _%K192644%_
                             _%rest192645%_
                             _%r192646%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd192643%_)
                                (_%import1192329%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd192643%_))
                                 _%K192644%_
                                 _%rest192645%_
                                 _%r192646%_)
                                (let ((_%e192652%_ (gx#stx-e _%hd192643%_)))
                                  (if (pair? _%e192652%_)
                                      (let ((_%$e192655%_
                                             (gx#stx-e (##car _%e192652%_))))
                                        (if (eq? 'spec: _%$e192655%_)
                                            (_%import-spec192332%_
                                             _%hd192643%_
                                             _%K192644%_
                                             _%rest192645%_
                                             _%r192646%_)
                                            (if (eq? 'in: _%$e192655%_)
                                                (_%import-submodule192330%_
                                                 _%hd192643%_
                                                 _%K192644%_
                                                 _%rest192645%_
                                                 _%r192646%_)
                                                (if (eq? 'runtime:
                                                         _%$e192655%_)
                                                    (_%import-runtime192331%_
                                                     _%hd192643%_
                                                     _%K192644%_
                                                     _%rest192645%_
                                                     _%r192646%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx192325%_
                                                     _%hd192643%_)))))
                                      (if (string? _%e192652%_)
                                          (_%import1192329%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd192643%_
                                             (gx#stx-source _%stx192325%_)))
                                           _%K192644%_
                                           _%rest192645%_
                                           _%r192646%_)
                                          (if (##structure-instance-of?
                                               _%e192652%_
                                               'gx#module-context::t)
                                              (_%K192644%_
                                               _%rest192645%_
                                               (cons _%e192652%_ _%r192646%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx192325%_
                                               _%hd192643%_))))))))))
                 (_%import1192329%_
                  (lambda (_%ctx192632%_
                           _%K192633%_
                           _%rest192634%_
                           _%r192635%_)
                    (let ((_%dphi192637%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K192633%_
                       _%rest192634%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx192632%_
                              _%dphi192637%_
                              (map (lambda (_%$%g192638192640%_)
                                     (gx#core-module-export->import__%
                                      _%$%g192638192640%_
                                      '#f
                                      _%dphi192637%_))
                                   (##unchecked-structure-ref
                                    _%ctx192632%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r192635%_)))))
                 (_%import-submodule192330%_
                  (lambda (_%hd192599%_ _%K192600%_ _%rest192601%_ _%r192602%_)
                    (let* ((_%$%e192603192610%_ _%hd192599%_)
                           (_%$%E192605192614%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192603192610%_)))
                           (_%$%E192604192628%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192603192610%_)
                                  (let ((_%$%e192606192618%_
                                         (gx#syntax-e _%$%e192603192610%_)))
                                    (let ((_%$%hd192607192621%_
                                           (##car _%$%e192606192618%_))
                                          (_%$%tl192608192623%_
                                           (##cdr _%$%e192606192618%_)))
                                      (let ((_%spath192626%_
                                             _%$%tl192608192623%_))
                                        (_%import1192329%_
                                         (_%import-spec-source192333%_
                                          _%spath192626%_)
                                         _%K192600%_
                                         _%rest192601%_
                                         _%r192602%_))))
                                  (_%$%E192605192614%_)))))
                      (_%$%E192604192628%_))))
                 (_%import-runtime192331%_
                  (lambda (_%hd192566%_ _%K192567%_ _%rest192568%_ _%r192569%_)
                    (let* ((_%$%e192570192577%_ _%hd192566%_)
                           (_%$%E192572192581%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192570192577%_)))
                           (_%$%E192571192595%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192570192577%_)
                                  (let ((_%$%e192573192585%_
                                         (gx#syntax-e _%$%e192570192577%_)))
                                    (let ((_%$%hd192574192588%_
                                           (##car _%$%e192573192585%_))
                                          (_%$%tl192575192590%_
                                           (##cdr _%$%e192573192585%_)))
                                      (let ((_%spath192593%_
                                             _%$%tl192575192590%_))
                                        (_%K192567%_
                                         _%rest192568%_
                                         (cons (_%import-spec-source192333%_
                                                _%spath192593%_)
                                               _%r192569%_)))))
                                  (_%$%E192572192581%_)))))
                      (_%$%E192571192595%_))))
                 (_%import-spec192332%_
                  (lambda (_%hd192404%_ _%K192405%_ _%rest192406%_ _%r192407%_)
                    (let* ((_%$%e192408192425%_ _%hd192404%_)
                           (_%$%E192417192429%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192408192425%_)))
                           (_%$%E192410192540%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192408192425%_)
                                  (let ((_%$%e192418192433%_
                                         (gx#syntax-e _%$%e192408192425%_)))
                                    (let ((_%$%hd192419192436%_
                                           (##car _%$%e192418192433%_))
                                          (_%$%tl192420192438%_
                                           (##cdr _%$%e192418192433%_)))
                                      (if (gx#stx-pair? _%$%tl192420192438%_)
                                          (let ((_%$%e192421192441%_
                                                 (gx#syntax-e
                                                  _%$%tl192420192438%_)))
                                            (let ((_%$%hd192422192444%_
                                                   (##car _%$%e192421192441%_))
                                                  (_%$%tl192423192446%_
                                                   (##cdr _%$%e192421192441%_)))
                                              (let* ((_%path192449%_
                                                      _%$%hd192422192444%_)
                                                     (_%specs192451%_
                                                      _%$%tl192423192446%_))
                                                (let ((_%src-ctx192453%_
                                                       (_%import-spec-source192333%_
                                                        _%path192449%_))
                                                      (_%exports192454%_
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
                                                      (_%specs192455%_
                                                       (gx#syntax->list
                                                        _%specs192451%_)))
                                                  (for-each
                                                   (lambda (_%out192457%_)
                                                     (__hash-put!
                                                      _%exports192454%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out192457%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out192457%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out192457%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx192453%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K192405%_
                                                   _%rest192406%_
                                                   (foldl__0
                                                    (lambda (_%spec192459%_
                                                             _%r192460%_)
                                                      (let* ((_%$%e192461192477%_
                                                              _%spec192459%_)
                                                             (_%$%E192463192481%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e192461192477%_)))
                     (_%$%E192462192536%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e192461192477%_)
                            (let ((_%$%e192464192485%_
                                   (gx#syntax-e _%$%e192461192477%_)))
                              (let ((_%$%hd192465192488%_
                                     (##car _%$%e192464192485%_))
                                    (_%$%tl192466192490%_
                                     (##cdr _%$%e192464192485%_)))
                                (let ((_%phi192493%_ _%$%hd192465192488%_))
                                  (if (gx#stx-pair? _%$%tl192466192490%_)
                                      (let ((_%$%e192467192495%_
                                             (gx#syntax-e
                                              _%$%tl192466192490%_)))
                                        (let ((_%$%hd192468192498%_
                                               (##car _%$%e192467192495%_))
                                              (_%$%tl192469192500%_
                                               (##cdr _%$%e192467192495%_)))
                                          (let ((_%name192503%_
                                                 _%$%hd192468192498%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl192469192500%_)
                                                (let ((_%$%e192470192505%_
                                                       (gx#syntax-e
                                                        _%$%tl192469192500%_)))
                                                  (let ((_%$%hd192471192508%_
                                                         (##car _%$%e192470192505%_))
                                                        (_%$%tl192472192510%_
                                                         (##cdr _%$%e192470192505%_)))
                                                    (let ((_%src-phi192513%_
                                                           _%$%hd192471192508%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192472192510%_)
                                                          (let ((_%$%e192473192515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192472192510%_)))
                    (let ((_%$%hd192474192518%_ (##car _%$%e192473192515%_))
                          (_%$%tl192475192520%_ (##cdr _%$%e192473192515%_)))
                      (let ((_%src-name192523%_ _%$%hd192474192518%_))
                        (if (gx#stx-null? _%$%tl192475192520%_)
                            (if (and (gx#stx-fixnum? _%src-phi192513%_)
                                     (gx#identifier? _%src-name192523%_)
                                     (gx#stx-fixnum? _%phi192493%_)
                                     (gx#identifier? _%name192503%_))
                                (let ((_%src-phi192525%_
                                       (gx#stx-e _%src-phi192513%_))
                                      (_%src-name192526%_
                                       (gx#core-identifier-key
                                        _%src-name192523%_))
                                      (_%phi192527%_ (gx#stx-e _%phi192493%_))
                                      (_%name192528%_
                                       (gx#core-identifier-key
                                        _%name192503%_)))
                                  (let ((_%$e192530%_
                                         (__hash-get
                                          _%exports192454%_
                                          (cons _%src-phi192525%_
                                                _%src-name192526%_))))
                                    (if _%$e192530%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e192530%_
                                               _%name192528%_
                                               (fx- _%phi192527%_
                                                    _%src-phi192525%_))
                                              _%r192460%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx192325%_
                                         _%hd192404%_))))
                                (_%$%E192463192481%_))
                            (_%$%E192463192481%_)))))
                  (_%$%E192463192481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E192463192481%_)))))
                                      (_%$%E192463192481%_)))))
                            (_%$%E192463192481%_)))))
                (_%$%E192462192536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r192407%_
                                                    _%specs192455%_))))))
                                          (_%$%E192417192429%_))))
                                  (_%$%E192417192429%_))))
                           (_%$%E192409192562%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192408192425%_)
                                  (let ((_%$%e192411192544%_
                                         (gx#syntax-e _%$%e192408192425%_)))
                                    (let ((_%$%hd192412192547%_
                                           (##car _%$%e192411192544%_))
                                          (_%$%tl192413192549%_
                                           (##cdr _%$%e192411192544%_)))
                                      (if (gx#stx-pair? _%$%tl192413192549%_)
                                          (let ((_%$%e192414192552%_
                                                 (gx#syntax-e
                                                  _%$%tl192413192549%_)))
                                            (let ((_%$%hd192415192555%_
                                                   (##car _%$%e192414192552%_))
                                                  (_%$%tl192416192557%_
                                                   (##cdr _%$%e192414192552%_)))
                                              (let ((_%path192560%_
                                                     _%$%hd192415192555%_))
                                                (if (gx#stx-null?
                                                     _%$%tl192416192557%_)
                                                    (_%K192405%_
                                                     _%rest192406%_
                                                     (cons (_%import-spec-source192333%_
                                                            _%path192560%_)
                                                           _%r192407%_))
                                                    (_%$%E192410192540%_)))))
                                          (_%$%E192410192540%_))))
                                  (_%$%E192410192540%_)))))
                      (_%$%E192409192562%_))))
                 (_%import-spec-source192333%_
                  (lambda (_%spath192402%_)
                    (gx#core-import-nested-module
                     _%spath192402%_
                     _%stx192325%_)))
                 (_%import!192334%_
                  (lambda (_%rbody192347%_)
                    (letrec* ((_%current-ctx192349%_
                               (gx#current-expander-context))
                              (_%deps192350%_ (make-hash-table-eq))
                              (_%bind!192351%_
                               (lambda (_%hd192400%_)
                                 (gx#core-bind-import!__1
                                  _%hd192400%_
                                  _%current-ctx192349%_))))
                      (let _%lp192353%_ ((_%rest192355%_ _%rbody192347%_)
                                         (_%body192356%_ '()))
                        (let* ((_%$%rest192357192365%_ _%rest192355%_)
                               (_%$%else192359192376%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx192349%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx192349%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx192349%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body192356%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx192373%_ _%_192374%_)
                                     (gx#eval-module _%ctx192373%_))
                                   _%deps192350%_)
                                  _%body192356%_))
                               (_%$%K192361192388%_
                                (lambda (_%rest192379%_ _%hd192380%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd192380%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!192351%_ _%hd192380%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd192380%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd192380%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps192350%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd192380%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd192380%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!192351%_
                                             (##unchecked-structure-ref
                                              _%hd192380%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd192380%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps192350%_
                                                 (##unchecked-structure-ref
                                                  _%hd192380%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e192384%_
                                                 (##structure-instance-of?
                                                  _%hd192380%_
                                                  'gx#module-context::t)))
                                            (if _%$e192384%_
                                                _%$e192384%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx192325%_
                                                 _%hd192380%_)))))
                                  (_%lp192353%_
                                   _%rest192379%_
                                   (cons _%hd192380%_ _%body192356%_)))))
                          (if (pair? _%$%rest192357192365%_)
                              (let ((_%$%hd192362192391%_
                                     (##car _%$%rest192357192365%_))
                                    (_%$%tl192363192393%_
                                     (##cdr _%$%rest192357192365%_)))
                                (let* ((_%hd192396%_ _%$%hd192362192391%_)
                                       (_%rest192398%_ _%$%tl192363192393%_))
                                  (_%$%K192361192388%_
                                   _%rest192398%_
                                   _%hd192396%_)))
                              (_%$%else192359192376%_)))))))
                 (_%expanded-import?192335%_
                  (lambda (_%e192339%_)
                    (let ((_%$e192341%_
                           (##structure-direct-instance-of?
                            _%e192339%_
                            'gx#import-set::t)))
                      (if _%$e192341%_
                          _%$e192341%_
                          (let ((_%$e192344%_
                                 (##structure-direct-instance-of?
                                  _%e192339%_
                                  'gx#module-import::t)))
                            (if _%$e192344%_
                                _%$e192344%_
                                (##structure-instance-of?
                                 _%e192339%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody192337%_
                 (gx#core-expand-import/export
                  _%stx192325%_
                  _%expanded-import?192335%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1192328%_)))
            (if _%internal-expand?192326%_
                (reverse _%rbody192337%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!192334%_ _%rbody192337%_))
                 (gx#stx-source _%stx192325%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx192664%_)
        (let ((_%internal-expand?192666%_ '#f))
          (gx#core-expand-import%__%
           _%stx192664%_
           _%internal-expand?192666%_))))
    (define gx#core-expand-import%
      (lambda _g195422_
        (let ((_g195423_ (##length _g195422_)))
          (cond ((##fx= _g195423_ 1)
                 (apply gx#core-expand-import%__0 _g195422_))
                ((##fx= _g195423_ 2)
                 (apply gx#core-expand-import%__% _g195422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g195422_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath192252%_ _%where192253%_)
        (let* ((_%$%e192254192261%_ _%spath192252%_)
               (_%$%E192256192265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192254192261%_)))
               (_%$%E192255192320%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192254192261%_)
                      (let ((_%$%e192257192269%_
                             (gx#syntax-e _%$%e192254192261%_)))
                        (let ((_%$%hd192258192272%_
                               (##car _%$%e192257192269%_))
                              (_%$%tl192259192274%_
                               (##cdr _%$%e192257192269%_)))
                          (let* ((_%origin192277%_ _%$%hd192258192272%_)
                                 (_%sub192279%_ _%$%tl192259192274%_)
                                 (_%origin-ctx192281%_
                                  (if (gx#stx-false? _%origin192277%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin192277%_))))
                            (let _%lp192283%_ ((_%rest192285%_ _%sub192279%_)
                                               (_%ctx192286%_
                                                _%origin-ctx192281%_))
                              (let* ((_%$%e192287192294%_ _%rest192285%_)
                                     (_%$%E192289192298%_
                                      (lambda () _%ctx192286%_))
                                     (_%$%E192288192316%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e192287192294%_)
                                            (let ((_%$%e192290192302%_
                                                   (gx#syntax-e
                                                    _%$%e192287192294%_)))
                                              (let ((_%$%hd192291192305%_
                                                     (##car _%$%e192290192302%_))
                                                    (_%$%tl192292192307%_
                                                     (##cdr _%$%e192290192302%_)))
                                                (let* ((_%id192310%_
                                                        _%$%hd192291192305%_)
                                                       (_%rest192312%_
                                                        _%$%tl192292192307%_)
                                                       (_%bind192314%_
                                                        (gx#resolve-identifier__%
                                                         _%id192310%_
                                                         '0
                                                         _%ctx192286%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind192314%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind192314%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where192253%_
                                                       _%spath192252%_
                                                       _%id192310%_))
                                                  (_%lp192283%_
                                                   _%rest192312%_
                                                   (##unchecked-structure-ref
                                                    _%bind192314%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E192289192298%_)))))
                                (_%$%E192288192316%_))))))
                      (_%$%E192256192265%_)))))
          (_%$%E192255192320%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd192250%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd192250%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx191745%_ _%internal-expand?191746%_)
        (letrec* ((_%make-export__195350195351%_
                   (lambda (_%bind192198%_
                            _%phi192199%_
                            _%ctx192200%_
                            _%name192201%_)
                     (let* ((_%key192203%_
                             (##unchecked-structure-ref
                              _%bind192198%_
                              '2
                              '#f
                              '#f))
                            (_%export-key192205%_
                             (if _%name192201%_
                                 (gx#core-identifier-key _%name192201%_)
                                 _%key192203%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx192200%_
                        _%key192203%_
                        _%phi192199%_
                        _%export-key192205%_
                        (let ((_%$e192208%_
                               (##structure-instance-of?
                                _%bind192198%_
                                'gx#extern-binding::t)))
                          (if _%$e192208%_
                              _%$e192208%_
                              (##structure-direct-instance-of?
                               _%bind192198%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__195352195355%_
                   (lambda (_%bind192214%_)
                     (let* ((_%phi192216%_ (gx#current-export-expander-phi))
                            (_%ctx192218%_ (gx#current-expander-context))
                            (_%name192220%_ '#f))
                       (_%make-export__195350195351%_
                        _%bind192214%_
                        _%phi192216%_
                        _%ctx192218%_
                        _%name192220%_))))
                  (_%make-export__1__195353195356%_
                   (lambda (_%bind192222%_ _%phi192223%_)
                     (let* ((_%ctx192225%_ (gx#current-expander-context))
                            (_%name192227%_ '#f))
                       (_%make-export__195350195351%_
                        _%bind192222%_
                        _%phi192223%_
                        _%ctx192225%_
                        _%name192227%_))))
                  (_%make-export__2__195354195357%_
                   (lambda (_%bind192229%_ _%phi192230%_ _%ctx192231%_)
                     (let ((_%name192233%_ '#f))
                       (_%make-export__195350195351%_
                        _%bind192229%_
                        _%phi192230%_
                        _%ctx192231%_
                        _%name192233%_))))
                  (_%make-export191748%_
                   (lambda _g195424_
                     (let ((_g195425_ (##length _g195424_)))
                       (cond ((##fx= _g195425_ 1)
                              (apply _%make-export__0__195352195355%_
                                     _g195424_))
                             ((##fx= _g195425_ 2)
                              (apply _%make-export__1__195353195356%_
                                     _g195424_))
                             ((##fx= _g195425_ 3)
                              (apply _%make-export__2__195354195357%_
                                     _g195424_))
                             ((##fx= _g195425_ 4)
                              (apply _%make-export__195350195351%_ _g195424_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g195424_))))))
                  (_%expand1191749%_
                   (lambda (_%hd191903%_
                            _%K191904%_
                            _%rest191905%_
                            _%r191906%_)
                     (let* ((_%$%e191907191939%_ _%hd191903%_)
                            (_%$%E191934191943%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx191745%_
                                _%hd191903%_)))
                            (_%$%E191924192027%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191907191939%_)
                                   (let ((_%$%e191935191947%_
                                          (gx#syntax-e _%$%e191907191939%_)))
                                     (let ((_%$%hd191936191950%_
                                            (##car _%$%e191935191947%_))
                                           (_%$%tl191937191952%_
                                            (##cdr _%$%e191935191947%_)))
                                       (if (eq? (gx#stx-e _%$%hd191936191950%_)
                                                'import:)
                                           (let ((_%in191955%_
                                                  _%$%tl191937191952%_))
                                             (if (gx#stx-list? _%in191955%_)
                                                 (let _%lp191957%_ ((_%in-rest191959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in191955%_)
                            (_%r191960%_ _%r191906%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e191961191968%_
                                                           _%in-rest191959%_)
                                                          (_%$%E191963191972%_
                                                           (lambda ()
                                                             (_%K191904%_
                                                              _%rest191905%_
                                                              _%r191960%_)))
                                                          (_%$%E191962192023%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e191961191968%_)
                         (let ((_%$%e191964191976%_
                                (gx#syntax-e _%$%e191961191968%_)))
                           (let ((_%$%hd191965191979%_
                                  (##car _%$%e191964191976%_))
                                 (_%$%tl191966191981%_
                                  (##cdr _%$%e191964191976%_)))
                             (let* ((_%hd191984%_ _%$%hd191965191979%_)
                                    (_%in-rest191986%_ _%$%tl191966191981%_)
                                    (_%src192021%_
                                     (if (gx#core-bound-module? _%hd191984%_)
                                         (gx#syntax-local-e__0 _%hd191984%_)
                                         (if (gx#core-library-module-path?
                                              _%hd191984%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd191984%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd191984%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd191984%_))
                                                 (if (gx#stx-string?
                                                      _%hd191984%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd191984%_
                                                       (gx#stx-source
                                                        _%stx191745%_)))
                                                     (let* ((_%$%e191992191999%_
                                                             _%hd191984%_)
                                                            (_%$%E191994192003%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx191745%_
                                                                _%hd191984%_)))
                                                            (_%$%E191993192017%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e191992191999%_)
                           (let ((_%$%e191995192007%_
                                  (gx#syntax-e _%$%e191992191999%_)))
                             (let ((_%$%hd191996192010%_
                                    (##car _%$%e191995192007%_))
                                   (_%$%tl191997192012%_
                                    (##cdr _%$%e191995192007%_)))
                               (if (eq? (gx#stx-e _%$%hd191996192010%_) 'in:)
                                   (let ((_%spath192015%_
                                          _%$%tl191997192012%_))
                                     (gx#core-import-nested-module
                                      _%spath192015%_
                                      _%stx191745%_))
                                   (_%$%E191994192003%_))))
                           (_%$%E191994192003%_)))))
               (_%$%E191993192017%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp191957%_
                                _%in-rest191986%_
                                (_%export-imports191750%_
                                 _%src192021%_
                                 _%r191960%_)))))
                         (_%$%E191963191972%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E191962192023%_)))
                                                 (_%$%E191934191943%_)))
                                           (_%$%E191934191943%_))))
                                   (_%$%E191934191943%_))))
                            (_%$%E191911192067%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191907191939%_)
                                   (let ((_%$%e191925192031%_
                                          (gx#syntax-e _%$%e191907191939%_)))
                                     (let ((_%$%hd191926192034%_
                                            (##car _%$%e191925192031%_))
                                           (_%$%tl191927192036%_
                                            (##cdr _%$%e191925192031%_)))
                                       (if (eq? (gx#stx-e _%$%hd191926192034%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl191927192036%_)
                                               (let ((_%$%e191928192039%_
                                                      (gx#syntax-e
                                                       _%$%tl191927192036%_)))
                                                 (let ((_%$%hd191929192042%_
                                                        (##car _%$%e191928192039%_))
                                                       (_%$%tl191930192044%_
                                                        (##cdr _%$%e191928192039%_)))
                                                   (let ((_%id192047%_
                                                          _%$%hd191929192042%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191930192044%_)
                                                         (let ((_%$%e191931192049%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191930192044%_)))
                   (let ((_%$%hd191932192052%_ (##car _%$%e191931192049%_))
                         (_%$%tl191933192054%_ (##cdr _%$%e191931192049%_)))
                     (let ((_%name192057%_ _%$%hd191932192052%_))
                       (if (gx#stx-null? _%$%tl191933192054%_)
                           (let* ((_%phi192059%_
                                   (gx#current-export-expander-phi))
                                  (_%$e192061%_
                                   (gx#core-resolve-identifier__1
                                    _%id192047%_
                                    _%phi192059%_)))
                             (if _%$e192061%_
                                 (_%K191904%_
                                  _%rest191905%_
                                  (cons (_%make-export__195350195351%_
                                         _%$e192061%_
                                         _%phi192059%_
                                         (gx#current-expander-context)
                                         _%name192057%_)
                                        _%r191906%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx191745%_
                                  _%hd191903%_
                                  _%id192047%_)))
                           (_%$%E191924192027%_)))))
                 (_%$%E191924192027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191924192027%_))
                                           (_%$%E191924192027%_))))
                                   (_%$%E191924192027%_))))
                            (_%$%E191910192117%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e191907191939%_)
                                   (let ((_%$%e191912192071%_
                                          (gx#syntax-e _%$%e191907191939%_)))
                                     (let ((_%$%hd191913192074%_
                                            (##car _%$%e191912192071%_))
                                           (_%$%tl191914192076%_
                                            (##cdr _%$%e191912192071%_)))
                                       (if (eq? (gx#stx-e _%$%hd191913192074%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl191914192076%_)
                                               (let ((_%$%e191915192079%_
                                                      (gx#syntax-e
                                                       _%$%tl191914192076%_)))
                                                 (let ((_%$%hd191916192082%_
                                                        (##car _%$%e191915192079%_))
                                                       (_%$%tl191917192084%_
                                                        (##cdr _%$%e191915192079%_)))
                                                   (let ((_%phi192087%_
                                                          _%$%hd191916192082%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl191917192084%_)
                                                         (let ((_%$%e191918192089%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl191917192084%_)))
                   (let ((_%$%hd191919192092%_ (##car _%$%e191918192089%_))
                         (_%$%tl191920192094%_ (##cdr _%$%e191918192089%_)))
                     (let ((_%id192097%_ _%$%hd191919192092%_))
                       (if (gx#stx-pair? _%$%tl191920192094%_)
                           (let ((_%$%e191921192099%_
                                  (gx#syntax-e _%$%tl191920192094%_)))
                             (let ((_%$%hd191922192102%_
                                    (##car _%$%e191921192099%_))
                                   (_%$%tl191923192104%_
                                    (##cdr _%$%e191921192099%_)))
                               (let ((_%name192107%_ _%$%hd191922192102%_))
                                 (if (gx#stx-null? _%$%tl191923192104%_)
                                     (if (and (gx#stx-fixnum? _%phi192087%_)
                                              (gx#identifier? _%id192097%_)
                                              (gx#identifier? _%name192107%_))
                                         (let* ((_%phi192109%_
                                                 (gx#stx-e _%phi192087%_))
                                                (_%$e192111%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id192097%_
                                                  _%phi192109%_)))
                                           (if _%$e192111%_
                                               (_%K191904%_
                                                _%rest191905%_
                                                (cons (_%make-export__195350195351%_
                                                       _%$e192111%_
                                                       _%phi192109%_
                                                       (gx#current-expander-context)
                                                       _%name192107%_)
                                                      _%r191906%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx191745%_
                                                _%hd191903%_
                                                _%id192097%_)))
                                         (_%$%E191911192067%_))
                                     (_%$%E191911192067%_)))))
                           (_%$%E191911192067%_)))))
                 (_%$%E191911192067%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191911192067%_))
                                           (_%$%E191911192067%_))))
                                   (_%$%E191911192067%_))))
                            (_%$%E191909192129%_
                             (lambda ()
                               (let ((_%id192121%_ _%$%e191907191939%_))
                                 (if (gx#identifier? _%id192121%_)
                                     (let ((_%$e192123%_
                                            (gx#core-resolve-identifier__1
                                             _%id192121%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e192123%_
                                           (_%K191904%_
                                            _%rest191905%_
                                            (cons (_%make-export__0__195352195355%_
                                                   _%$e192123%_)
                                                  _%r191906%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx191745%_
                                            _%hd191903%_)))
                                     (_%$%E191910192117%_)))))
                            (_%$%E191908192193%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e191907191939%_) '#t)
                                   (let* ((_%current-ctx192133%_
                                           (gx#current-expander-context))
                                          (_%current-phi192135%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx192137%_
                                           (gx#core-context-shift
                                            _%current-ctx192133%_
                                            _%current-phi192135%_))
                                          (_%phi-bind192139%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx192137%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp192142%_ ((_%bind-rest192144%_
                                                         _%phi-bind192139%_)
                                                        (_%set192145%_ '()))
                                       (let* ((_%$%bind-rest192146192156%_
                                               _%bind-rest192144%_)
                                              (_%$%else192148192164%_
                                               (lambda ()
                                                 (_%K191904%_
                                                  _%rest191905%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi192135%_
                                                         _%set192145%_)
                                                        _%r191906%_))))
                                              (_%$%K192150192174%_
                                               (lambda (_%bind-rest192167%_
                                                        _%bind192168%_
                                                        _%key192169%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind192168%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind192168%_))
                                                     (_%lp192142%_
                                                      _%bind-rest192167%_
                                                      _%set192145%_)
                                                     (_%lp192142%_
                                                      _%bind-rest192167%_
                                                      (cons (_%make-export__2__195354195357%_
                                                             _%bind192168%_
                                                             _%current-phi192135%_
                                                             _%current-ctx192133%_)
                                                            _%set192145%_))))))
                                         (if (pair? _%$%bind-rest192146192156%_)
                                             (let ((_%$%hd192151192177%_
                                                    (##car _%$%bind-rest192146192156%_))
                                                   (_%$%tl192152192179%_
                                                    (##cdr _%$%bind-rest192146192156%_)))
                                               (if (pair? _%$%hd192151192177%_)
                                                   (let ((_%$%hd192153192182%_
                                                          (##car _%$%hd192151192177%_))
                                                         (_%$%tl192154192184%_
                                                          (##cdr _%$%hd192151192177%_)))
                                                     (let* ((_%key192187%_
                                                             _%$%hd192153192182%_)
                                                            (_%bind192189%_
                                                             _%$%tl192154192184%_)
                                                            (_%bind-rest192191%_
                                                             _%$%tl192152192179%_))
                                                       (_%$%K192150192174%_
                                                        _%bind-rest192191%_
                                                        _%bind192189%_
                                                        _%key192187%_)))
                                                   (_%$%else192148192164%_)))
                                             (_%$%else192148192164%_)))))
                                   (_%$%E191909192129%_)))))
                       (_%$%E191908192193%_))))
                  (_%export-imports191750%_
                   (lambda (_%src191780%_ _%r191781%_)
                     (letrec* ((_%current-ctx191783%_
                                (gx#current-expander-context))
                               (_%current-phi191784%_
                                (gx#current-export-expander-phi))
                               (_%import->export191785%_
                                (lambda (_%in191866%_)
                                  (let* ((_%$%in191867191875%_ _%in191866%_)
                                         (_%$%E191869191878%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in191867191875%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K191870191885%_
                                          (lambda (_%phi191881%_
                                                   _%key191882%_
                                                   _%out191883%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx191783%_
                                             _%key191882%_
                                             _%phi191881%_
                                             _%key191882%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in191867191875%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e191871191888%_
                                                (##unchecked-structure-ref
                                                 _%$%in191867191875%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out191891%_
                                                _%$%e191871191888%_)
                                               (_%$%e191872191893%_
                                                (##unchecked-structure-ref
                                                 _%$%in191867191875%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key191896%_
                                                _%$%e191872191893%_)
                                               (_%$%e191873191898%_
                                                (##unchecked-structure-ref
                                                 _%$%in191867191875%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi191901%_
                                                _%$%e191873191898%_))
                                          (_%$%K191870191885%_
                                           _%phi191901%_
                                           _%key191896%_
                                           _%out191891%_))
                                        (_%$%E191869191878%_)))))
                               (_%fold-e191786%_
                                (lambda (_%in191788%_ _%r191789%_)
                                  (let* ((_%$%in191790191804%_ _%in191788%_)
                                         (_%$%else191793191812%_
                                          (lambda () _%r191789%_)))
                                    (let ((_%$%K191799191848%_
                                           (lambda (_%phi191844%_
                                                    _%key191845%_
                                                    _%out191846%_)
                                             (if (and (fx= _%phi191844%_
                                                           _%current-phi191784%_)
                                                      (eq? _%src191780%_
                                                           (##unchecked-structure-ref
                                                            _%out191846%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export191785%_
                                                        _%in191788%_)
                                                       _%r191789%_)
                                                 _%r191789%_)))
                                          (_%$%K191795191823%_
                                           (lambda (_%imports191816%_
                                                    _%phi191817%_
                                                    _%ctx191818%_)
                                             (if (and (fx= _%phi191817%_
                                                           _%current-phi191784%_)
                                                      (eq? _%src191780%_
                                                           _%ctx191818%_))
                                                 (foldl__0
                                                  (lambda (_%in191820%_
                                                           _%r191821%_)
                                                    (cons (_%import->export191785%_
                                                           _%in191820%_)
                                                          _%r191821%_))
                                                  _%r191789%_
                                                  _%imports191816%_)
                                                 _%r191789%_))))
                                      (let ((_%$%try-match191792191841%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in191790191804%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e191796191826%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191790191804%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e191797191831%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191790191804%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e191798191836%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191790191804%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx191829%_
                                                            _%$%e191796191826%_)
                                                           (_%phi191834%_
                                                            _%$%e191797191831%_)
                                                           (_%imports191839%_
                                                            _%$%e191798191836%_))
                                                       (_%$%K191795191823%_
                                                        _%imports191839%_
                                                        _%phi191834%_
                                                        _%ctx191829%_)))
                                                   (_%$%else191793191812%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in191790191804%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e191800191851%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191790191804%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e191801191856%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191790191804%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e191802191861%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191790191804%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out191854%_
                                                     _%$%e191800191851%_)
                                                    (_%key191859%_
                                                     _%$%e191801191856%_)
                                                    (_%phi191864%_
                                                     _%$%e191802191861%_))
                                                (_%$%K191799191848%_
                                                 _%phi191864%_
                                                 _%key191859%_
                                                 _%out191854%_)))
                                            (_%$%try-match191792191841%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src191780%_
                              _%current-phi191784%_
                              (foldl__0
                               _%fold-e191786%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx191783%_
                                '8
                                '#f
                                '#f)))
                             _%r191781%_))))
                  (_%export!191751%_
                   (lambda (_%rbody191767%_)
                     (letrec* ((_%current-ctx191769%_
                                (gx#current-expander-context))
                               (_%fold-e191770%_
                                (lambda (_%out191774%_ _%r191775%_)
                                  (if (##structure-direct-instance-of?
                                       _%out191774%_
                                       'gx#module-export::t)
                                      (cons _%out191774%_ _%r191775%_)
                                      (if (##structure-direct-instance-of?
                                           _%out191774%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r191775%_
                                           (##unchecked-structure-ref
                                            _%out191774%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r191775%_)))))
                       (let ((_%body191772%_ (reverse _%rbody191767%_)))
                         (##unchecked-structure-set!
                          _%current-ctx191769%_
                          (foldl__0
                           _%fold-e191770%_
                           (##unchecked-structure-ref
                            _%current-ctx191769%_
                            '9
                            '#f
                            '#f)
                           _%body191772%_)
                          '9
                          '#f
                          '#f)
                         _%body191772%_))))
                  (_%expanded-export?191752%_
                   (lambda (_%e191762%_)
                     (let ((_%$e191764%_
                            (##structure-direct-instance-of?
                             _%e191762%_
                             'gx#module-export::t)))
                       (if _%$e191764%_
                           _%$e191764%_
                           (##structure-direct-instance-of?
                            _%e191762%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?191746%_)
              (let ((_%rbody191758%_
                     (gx#core-expand-import/export
                      _%stx191745%_
                      _%expanded-export?191752%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1191749%_)))
                (if _%internal-expand?191746%_
                    (reverse _%rbody191758%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!191751%_ _%rbody191758%_))
                     (gx#stx-source _%stx191745%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx191745%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx191745%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx192243%_)
        (let ((_%internal-expand?192245%_ '#f))
          (gx#core-expand-export%__%
           _%stx192243%_
           _%internal-expand?192245%_))))
    (define gx#core-expand-export%
      (lambda _g195426_
        (let ((_g195427_ (##length _g195426_)))
          (cond ((##fx= _g195427_ 1)
                 (apply gx#core-expand-export%__0 _g195426_))
                ((##fx= _g195427_ 2)
                 (apply gx#core-expand-export%__% _g195426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g195426_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd191742%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd191742%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx191712%_)
        (let* ((_%$%e191713191720%_ _%stx191712%_)
               (_%$%E191715191724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191713191720%_)))
               (_%$%E191714191738%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191713191720%_)
                      (let ((_%$%e191716191728%_
                             (gx#syntax-e _%$%e191713191720%_)))
                        (let ((_%$%hd191717191731%_
                               (##car _%$%e191716191728%_))
                              (_%$%tl191718191733%_
                               (##cdr _%$%e191716191728%_)))
                          (let ((_%body191736%_ _%$%tl191718191733%_))
                            (if (gx#identifier-list? _%body191736%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body191736%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body191736%_))
                                   (gx#stx-source _%stx191712%_)))
                                (_%$%E191715191724%_)))))
                      (_%$%E191715191724%_)))))
          (_%$%E191714191738%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id191678%_ _%private?191679%_ _%phi191680%_ _%ctx191681%_)
        (gx#core-bind-syntax!__%
         _%id191678%_
         ((if _%private?191679%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id191678%_))
         _%private?191679%_
         _%phi191680%_
         _%ctx191681%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id191686%_)
        (let* ((_%private?191688%_ '#f)
               (_%phi191690%_ (gx#current-expander-phi))
               (_%ctx191692%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191686%_
           _%private?191688%_
           _%phi191690%_
           _%ctx191692%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id191694%_ _%private?191695%_)
        (let* ((_%phi191697%_ (gx#current-expander-phi))
               (_%ctx191699%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191694%_
           _%private?191695%_
           _%phi191697%_
           _%ctx191699%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id191701%_ _%private?191702%_ _%phi191703%_)
        (let ((_%ctx191705%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191701%_
           _%private?191702%_
           _%phi191703%_
           _%ctx191705%_))))
    (define gx#core-bind-feature!
      (lambda _g195428_
        (let ((_g195429_ (##length _g195428_)))
          (cond ((##fx= _g195429_ 1)
                 (apply gx#core-bind-feature!__0 _g195428_))
                ((##fx= _g195429_ 2)
                 (apply gx#core-bind-feature!__1 _g195428_))
                ((##fx= _g195429_ 3)
                 (apply gx#core-bind-feature!__2 _g195428_))
                ((##fx= _g195429_ 4)
                 (apply gx#core-bind-feature!__% _g195428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g195428_))))))))
