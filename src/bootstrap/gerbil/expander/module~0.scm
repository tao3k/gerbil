(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1789188908)
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
      (lambda _%$args195551%_
        (apply make-instance gx#module-import::t _%$args195551%_)))
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
      (lambda _%$args195548%_
        (apply make-instance gx#module-export::t _%$args195548%_)))
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
      (lambda _%$args195545%_
        (apply make-instance gx#import-set::t _%$args195545%_)))
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
      (lambda _%$args195542%_
        (apply make-instance gx#export-set::t _%$args195542%_)))
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
      (lambda _%$args195539%_
        (apply make-instance gx#import-expander::t _%$args195539%_)))
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
      (lambda _%$args195536%_
        (apply make-instance gx#export-expander::t _%$args195536%_)))
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
      (lambda _%$args195533%_
        (apply make-instance gx#import-export-expander::t _%$args195533%_)))
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
      (lambda (_%path195530%_ _%fun195531%_)
        (call-with-input-file
         (cons 'path: (cons _%path195530%_ gx#source-file-settings))
         _%fun195531%_)))
    (define gx#module-context:::init!
      (lambda (_%self195513%_
               _%id195514%_
               _%super195515%_
               _%ns195516%_
               _%path195517%_)
        (let ((_%self195520%_ _%self195513%_))
          (if (##fx< '11 (##structure-length _%self195520%_))
              (begin
                (##unchecked-structure-set!
                 _%self195520%_
                 _%id195514%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195520%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195520%_
                 _%super195515%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195520%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self195520%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self195520%_
                 _%ns195516%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self195520%_
                 _%path195517%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self195520%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self195520%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self195520%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self195520%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self195520%_
                     '11
                     (##structure-length _%self195520%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self195346%_ _%ctx195347%_ _%root195348%_)
        (let* ((_%self195351%_ _%self195346%_)
               (_%super195367%_
                (let ((_%$e195361%_ _%root195348%_))
                  (if _%$e195361%_
                      _%$e195361%_
                      (let ((_%$e195364%_ (gx#core-context-root__0)))
                        (if _%$e195364%_
                            _%$e195364%_
                            (let ((__obj195595
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor195596
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj195595
                                      ':init!)))
                                (if __constructor195596
                                    (__constructor195596 __obj195595)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj195595)))))))
          (if _%ctx195347%_
              (let ((_%id195370%_
                     (##structure-ref
                      _%ctx195347%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path195371%_
                     (##structure-ref
                      _%ctx195347%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in195372%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx195347%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e195373%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx195347%_)))))
                (if (##fx< '8 (##structure-length _%self195351%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self195351%_
                       _%id195370%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       (make-hash-table-eq 'size: (##length _%in195372%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       _%super195367%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       _%path195371%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       _%in195372%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self195351%_
                       _%e195373%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self195351%_
                           '8
                           (##structure-length _%self195351%_)))
                (##for-each
                 (lambda (_%$%g195374195376%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g195374195376%_
                    _%self195351%_))
                 _%in195372%_))
              (if (##fx< '8 (##structure-length _%self195351%_))
                  (begin
                    (##unchecked-structure-set! _%self195351%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self195351%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self195351%_
                     _%super195367%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self195351%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self195351%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self195351%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self195351%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self195351%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self195351%_
                         '8
                         (##structure-length _%self195351%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self195382%_ _%ctx195383%_)
        (let ((_%root195385%_ '#f))
          (gx#prelude-context:::init!__%
           _%self195382%_
           _%ctx195383%_
           _%root195385%_))))
    (define gx#prelude-context:::init!
      (lambda _g195602_
        (let ((_g195603_ (##length _g195602_)))
          (cond ((##fx= _g195603_ 2)
                 (apply gx#prelude-context:::init!__0 _g195602_))
                ((##fx= _g195603_ 3)
                 (apply gx#prelude-context:::init!__% _g195602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g195602_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self195220%_ _%e195221%_)
        (if (##fx< '3 (##structure-length _%self195220%_))
            (begin
              (##unchecked-structure-set!
               _%self195220%_
               _%e195221%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195220%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self195220%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self195220%_
                   '3
                   (##structure-length _%self195220%_)))))
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
      (lambda (_%$%g194846194849%_ _%$%g194847194851%_)
        (gx#core-apply-user-expander__%
         _%$%g194846194849%_
         _%$%g194847194851%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g194717194720%_ _%$%g194718194722%_)
        (gx#core-apply-user-expander__%
         _%$%g194717194720%_
         _%$%g194718194722%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx194588%_)
        (let* ((_%path194590%_
                (##structure-ref _%ctx194588%_ '7 gx#module-context::t '#f))
               (_%path194592%_
                (if (pair? _%path194590%_)
                    (##last _%path194590%_)
                    _%path194590%_)))
          (if (string? _%path194592%_) _%path194592%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path194564%_ _%reload?194565%_ _%eval?194566%_)
        (let ((_%ctx194568%_
               ((gx#current-expander-module-import)
                _%path194564%_
                _%reload?194565%_)))
          (if (and _%ctx194568%_ _%eval?194566%_)
              (gx#eval-module _%ctx194568%_)
              '#!void)
          _%ctx194568%_)))
    (define gx#import-module__0
      (lambda (_%path194573%_)
        (let* ((_%reload?194575%_ '#f) (_%eval?194577%_ '#f))
          (gx#import-module__%
           _%path194573%_
           _%reload?194575%_
           _%eval?194577%_))))
    (define gx#import-module__1
      (lambda (_%path194579%_ _%reload?194580%_)
        (let ((_%eval?194582%_ '#f))
          (gx#import-module__%
           _%path194579%_
           _%reload?194580%_
           _%eval?194582%_))))
    (define gx#import-module
      (lambda _g195604_
        (let ((_g195605_ (##length _g195604_)))
          (cond ((##fx= _g195605_ 1) (apply gx#import-module__0 _g195604_))
                ((##fx= _g195605_ 2) (apply gx#import-module__1 _g195604_))
                ((##fx= _g195605_ 3) (apply gx#import-module__% _g195604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g195604_))))))
    (define gx#eval-module
      (lambda (_%mod194561%_)
        ((gx#current-expander-module-eval) _%mod194561%_)))
    (define gx#core-eval-module
      (lambda (_%obj194540%_)
        (letrec ((_%force-e194542%_
                  (lambda (_%getf194556%_ _%e194557%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf194556%_ _%e194557%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e194557%_))))
          (let _%recur194544%_ ((_%e194546%_ _%obj194540%_))
            (if (##structure-instance-of? _%e194546%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e194549%_
                         (gx#core-context-prelude__% _%e194546%_)))
                    (if _%$e194549%_ (_%recur194544%_ _%$e194549%_) '#!void))
                  (_%force-e194542%_ gx#module-context-e _%e194546%_))
                (if (##structure-instance-of?
                     _%e194546%_
                     'gx#prelude-context::t)
                    (_%force-e194542%_ gx#prelude-context-e _%e194546%_)
                    (if (gx#stx-string? _%e194546%_)
                        (_%recur194544%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e194546%_)))
                        (if (gx#core-library-module-path? _%e194546%_)
                            (_%recur194544%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e194546%_)))
                            (error '"cannot eval module" _%obj194540%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx194520%_)
        (let _%lp194522%_ ((_%e194524%_ _%ctx194520%_))
          (if (or (##structure-instance-of? _%e194524%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e194524%_ 'gx#local-context::t))
              (_%lp194522%_ (##unchecked-structure-ref _%e194524%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e194524%_ 'gx#prelude-context::t)
                  _%e194524%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx194536%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx194536%_))))
    (define gx#core-context-prelude
      (lambda _g195606_
        (let ((_g195607_ (##length _g195606_)))
          (cond ((##fx= _g195607_ 0)
                 (apply gx#core-context-prelude__0 _g195606_))
                ((##fx= _g195607_ 1)
                 (apply gx#core-context-prelude__% _g195606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g195606_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx194511%_)
        (let ((_%$e194513%_ (__hash-get gx#__module-registry _%ctx194511%_)))
          (if _%$e194513%_
              _%$e194513%_
              (let ((_%pre194517%_
                     (let ((__obj195597
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
                        __obj195597
                        _%ctx194511%_)
                       __obj195597)))
                (__hash-put! gx#__module-registry _%ctx194511%_ _%pre194517%_)
                _%pre194517%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath194379%_ _%reload?194380%_)
        (letrec ((_%import-source194382%_
                  (lambda (_%path194470%_)
                    (if (member _%path194470%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         (##append
                          (##member
                           _%path194470%_
                           (reverse (gx#current-expander-path)))
                          (cons _%path194470%_ '())))
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
                                      (let ((_g195608_
                                             (gx#core-read-module
                                              _%path194470%_)))
                                        (begin
                                          (let ((_g195609_
                                                 (if (##values? _g195608_)
                                                     (##values-length
                                                      _g195608_)
                                                     1)))
                                            (if (not (##fx= _g195609_ 4))
                                                (error "Context expects 4 values"
                                                       _g195609_)))
                                          (let ((_%pre194478%_
                                                 (##values-ref _g195608_ 0))
                                                (_%id194479%_
                                                 (##values-ref _g195608_ 1))
                                                (_%ns194480%_
                                                 (##values-ref _g195608_ 2))
                                                (_%body194481%_
                                                 (##values-ref _g195608_ 3)))
                                            (let* ((_%prelude194491%_
                                                    (if (##structure-instance-of?
                                                         _%pre194478%_
                                                         'gx#prelude-context::t)
                                                        _%pre194478%_
                                                        (if (##structure-instance-of?
                                                             _%pre194478%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre194478%_)
                                                            (if (string? _%pre194478%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre194478%_))
                        (if (not _%pre194478%_)
                            (let ((_%$e194487%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e194487%_
                                  _%$e194487%_
                                  (let ((__obj195598
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
                                     __obj195598
                                     '#f)
                                    __obj195598)))
                            (error '"cannot import module; unknown prelude"
                                   _%rpath194379%_
                                   _%pre194478%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx194493%_
                                                    (let ((__obj195599
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
                                                       __obj195599
                                                       _%id194479%_
                                                       _%prelude194491%_
                                                       _%ns194480%_
                                                       _%path194470%_)
                                                      __obj195599))
                                                   (_%body194495%_
                                                    (gx#core-expand-module-begin
                                                     _%body194481%_
                                                     _%ctx194493%_))
                                                   (_%body194497%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body194495%_)
                                                     _%path194470%_
                                                     _%ctx194493%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx194493%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body194497%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx194493%_
                                               _%body194497%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path194470%_
                                               _%ctx194493%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id194479%_
                                               _%ctx194493%_)
                                              _%ctx194493%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path194470%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule194383%_
                  (lambda (_%rpath194399%_)
                    (let* ((_%$%rpath194400194407%_ _%rpath194399%_)
                           (_%$%E194402194410%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath194400194407%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K194403194458%_
                            (lambda (_%refs194413%_ _%origin194414%_)
                              (let ((_%ctx194416%_
                                     (if _%origin194414%_
                                         (gx#core-import-module__%
                                          _%origin194414%_
                                          _%reload?194380%_)
                                         (gx#current-expander-context))))
                                (let _%lp194418%_ ((_%rest194420%_
                                                    _%refs194413%_)
                                                   (_%ctx194421%_
                                                    _%ctx194416%_))
                                  (let* ((_%$%rest194422194430%_
                                          _%rest194420%_)
                                         (_%$%else194424194438%_
                                          (lambda () _%ctx194421%_))
                                         (_%$%K194426194446%_
                                          (lambda (_%rest194441%_ _%id194442%_)
                                            (let ((_%bind194444%_
                                                   (gx#resolve-identifier__%
                                                    _%id194442%_
                                                    '0
                                                    _%ctx194421%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind194444%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind194444%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp194418%_
                                                   _%rest194441%_
                                                   (##unchecked-structure-ref
                                                    _%bind194444%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath194399%_
                                                         _%id194442%_
                                                         _%bind194444%_))))))
                                    (if (pair? _%$%rest194422194430%_)
                                        (let ((_%$%hd194427194449%_
                                               (##car _%$%rest194422194430%_))
                                              (_%$%tl194428194451%_
                                               (##cdr _%$%rest194422194430%_)))
                                          (let* ((_%id194454%_
                                                  _%$%hd194427194449%_)
                                                 (_%rest194456%_
                                                  _%$%tl194428194451%_))
                                            (_%$%K194426194446%_
                                             _%rest194456%_
                                             _%id194454%_)))
                                        (_%$%else194424194438%_))))))))
                      (if (pair? _%$%rpath194400194407%_)
                          (let ((_%$%hd194404194461%_
                                 (##car _%$%rpath194400194407%_))
                                (_%$%tl194405194463%_
                                 (##cdr _%$%rpath194400194407%_)))
                            (let* ((_%origin194466%_ _%$%hd194404194461%_)
                                   (_%refs194468%_ _%$%tl194405194463%_))
                              (_%$%K194403194458%_
                               _%refs194468%_
                               _%origin194466%_)))
                          (_%$%E194402194410%_))))))
          (let ((_%$e194385%_
                 (if (not _%reload?194380%_)
                     (__hash-get gx#__module-registry _%rpath194379%_)
                     '#f)))
            (if _%$e194385%_
                _%$e194385%_
                (if (list? _%rpath194379%_)
                    (_%import-submodule194383%_ _%rpath194379%_)
                    (if (gx#core-library-module-path? _%rpath194379%_)
                        (let ((_%ctx194390%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath194379%_)
                                _%reload?194380%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath194379%_
                           _%ctx194390%_)
                          _%ctx194390%_)
                        (let* ((_%npath194393%_
                                (path-normalize _%rpath194379%_))
                               (_%$e194395%_
                                (if (not _%reload?194380%_)
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath194393%_)
                                    '#f)))
                          (if _%$e194395%_
                              _%$e194395%_
                              (_%import-source194382%_
                               _%npath194393%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath194504%_)
        (let ((_%reload?194506%_ '#f))
          (gx#core-import-module__% _%rpath194504%_ _%reload?194506%_))))
    (define gx#core-import-module
      (lambda _g195610_
        (let ((_g195611_ (##length _g195610_)))
          (cond ((##fx= _g195611_ 1)
                 (apply gx#core-import-module__0 _g195610_))
                ((##fx= _g195611_ 2)
                 (apply gx#core-import-module__% _g195610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g195610_))))))
    (define gx#core-read-module
      (lambda (_%path194361%_)
        (__with-catch
         (lambda (_%exn194363%_)
           (if (datum-parsing-exception? _%exn194363%_)
               (let ((_%pos194365%_
                      (datum-parsing-exception-filepos _%exn194363%_)))
                 (if (= _%pos194365%_ '0)
                     (gx#core-read-module/lang _%path194361%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path194361%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g194367194369%_)
                            (display-exception__%
                             _%exn194363%_
                             _%$%g194367194369%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos194365%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos194365%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path194361%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g194372194374%_)
                      (display-exception__%
                       _%exn194363%_
                       _%$%g194372194374%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path194361%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path194213%_)
        (let _%lp194215%_ ((_%body194217%_
                            (read-syntax-from-file _%path194213%_))
                           (_%pre194218%_ '#f)
                           (_%ns194219%_ '#f)
                           (_%pkg194220%_ '#f))
          (let* ((_%$%e194221194245%_ _%body194217%_)
                 (_%$%E194237194271%_
                  (lambda ()
                    (let ((_g195612_
                           (if _%pkg194220%_
                               (values _%pre194218%_
                                       _%ns194219%_
                                       _%pkg194220%_)
                               (gx#core-read-module-package
                                _%path194213%_
                                _%pre194218%_
                                _%ns194219%_))))
                      (begin
                        (let ((_g195613_
                               (if (##values? _g195612_)
                                   (##values-length _g195612_)
                                   1)))
                          (if (not (##fx= _g195613_ 3))
                              (error "Context expects 3 values" _g195613_)))
                        (let ((_%pre194249%_ (##values-ref _g195612_ 0))
                              (_%ns194250%_ (##values-ref _g195612_ 1))
                              (_%pkg194251%_ (##values-ref _g195612_ 2)))
                          (let* ((_%prelude194257%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre194249%_)
                                      (gx#syntax-local-e__0 _%pre194249%_)
                                      (if (gx#core-library-module-path?
                                           _%pre194249%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre194249%_)
                                          (if (gx#stx-string? _%pre194249%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre194249%_
                                               _%path194213%_)
                                              (gx#stx-e _%pre194249%_)))))
                                 (_%path-id194259%_
                                  (gx#core-module-path->namespace
                                   _%path194213%_))
                                 (_%pkg-id194261%_
                                  (if _%pkg194251%_
                                      (##string-append
                                       _%pkg194251%_
                                       '"/"
                                       _%path-id194259%_)
                                      _%path-id194259%_))
                                 (_%module-id194263%_
                                  (##string->symbol _%pkg-id194261%_))
                                 (_%module-ns194268%_
                                  (if (eq? _%ns194250%_ '#!void)
                                      '#f
                                      (let ((_%$e194265%_ _%ns194250%_))
                                        (if _%$e194265%_
                                            _%$e194265%_
                                            _%pkg-id194261%_)))))
                            (values _%prelude194257%_
                                    _%module-id194263%_
                                    _%module-ns194268%_
                                    _%body194217%_)))))))
                 (_%$%E194230194303%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194221194245%_)
                        (let ((_%$%e194238194275%_
                               (gx#syntax-e _%$%e194221194245%_)))
                          (let ((_%$%hd194239194278%_
                                 (##car _%$%e194238194275%_))
                                (_%$%tl194240194280%_
                                 (##cdr _%$%e194238194275%_)))
                            (if (eq? (gx#stx-e _%$%hd194239194278%_) 'package:)
                                (if (gx#stx-pair? _%$%tl194240194280%_)
                                    (let ((_%$%e194241194283%_
                                           (gx#syntax-e _%$%tl194240194280%_)))
                                      (let ((_%$%hd194242194286%_
                                             (##car _%$%e194241194283%_))
                                            (_%$%tl194243194288%_
                                             (##cdr _%$%e194241194283%_)))
                                        (let* ((_%pkg194291%_
                                                _%$%hd194242194286%_)
                                               (_%rest194293%_
                                                _%$%tl194243194288%_)
                                               (_%pkg194301%_
                                                (if (gx#identifier?
                                                     _%pkg194291%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg194291%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg194291%_)
                                                            (gx#stx-false?
                                                             _%pkg194291%_))
                                                        (gx#stx-e
                                                         _%pkg194291%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg194291%_)))))
                                          (_%lp194215%_
                                           _%rest194293%_
                                           _%pre194218%_
                                           _%ns194219%_
                                           _%pkg194301%_))))
                                    (_%$%E194237194271%_))
                                (_%$%E194237194271%_))))
                        (_%$%E194237194271%_))))
                 (_%$%E194223194333%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194221194245%_)
                        (let ((_%$%e194231194307%_
                               (gx#syntax-e _%$%e194221194245%_)))
                          (let ((_%$%hd194232194310%_
                                 (##car _%$%e194231194307%_))
                                (_%$%tl194233194312%_
                                 (##cdr _%$%e194231194307%_)))
                            (if (eq? (gx#stx-e _%$%hd194232194310%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl194233194312%_)
                                    (let ((_%$%e194234194315%_
                                           (gx#syntax-e _%$%tl194233194312%_)))
                                      (let ((_%$%hd194235194318%_
                                             (##car _%$%e194234194315%_))
                                            (_%$%tl194236194320%_
                                             (##cdr _%$%e194234194315%_)))
                                        (let* ((_%ns194323%_
                                                _%$%hd194235194318%_)
                                               (_%rest194325%_
                                                _%$%tl194236194320%_)
                                               (_%ns194331%_
                                                (if (gx#identifier?
                                                     _%ns194323%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns194323%_))
                                                    (if (gx#stx-string?
                                                         _%ns194323%_)
                                                        (gx#stx-e _%ns194323%_)
                                                        (if (gx#stx-false?
                                                             _%ns194323%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns194323%_))))))
                                          (_%lp194215%_
                                           _%rest194325%_
                                           _%pre194218%_
                                           _%ns194331%_
                                           _%pkg194220%_))))
                                    (_%$%E194230194303%_))
                                (_%$%E194230194303%_))))
                        (_%$%E194230194303%_))))
                 (_%$%E194222194357%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194221194245%_)
                        (let ((_%$%e194224194337%_
                               (gx#syntax-e _%$%e194221194245%_)))
                          (let ((_%$%hd194225194340%_
                                 (##car _%$%e194224194337%_))
                                (_%$%tl194226194342%_
                                 (##cdr _%$%e194224194337%_)))
                            (if (eq? (gx#stx-e _%$%hd194225194340%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl194226194342%_)
                                    (let ((_%$%e194227194345%_
                                           (gx#syntax-e _%$%tl194226194342%_)))
                                      (let ((_%$%hd194228194348%_
                                             (##car _%$%e194227194345%_))
                                            (_%$%tl194229194350%_
                                             (##cdr _%$%e194227194345%_)))
                                        (let* ((_%prelude194353%_
                                                _%$%hd194228194348%_)
                                               (_%rest194355%_
                                                _%$%tl194229194350%_))
                                          (_%lp194215%_
                                           _%rest194355%_
                                           _%prelude194353%_
                                           _%ns194219%_
                                           _%pkg194220%_))))
                                    (_%$%E194223194333%_))
                                (_%$%E194223194333%_))))
                        (_%$%E194223194333%_)))))
            (_%$%E194222194357%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path194034%_)
        (letrec ((_%default-read-module-body194036%_
                  (lambda (_%inp194205%_)
                    (let _%lp194207%_ ((_%body194209%_ '()))
                      (let ((_%next194211%_ (read-syntax__% _%inp194205%_)))
                        (if (eof-object? _%next194211%_)
                            (reverse _%body194209%_)
                            (_%lp194207%_
                             (cons _%next194211%_ _%body194209%_)))))))
                 (_%read-body194037%_
                  (lambda (_%inp194122%_
                           _%pre194123%_
                           _%ns194124%_
                           _%pkg194125%_
                           _%args194126%_)
                    (let ((_g195614_
                           (if _%pkg194125%_
                               (values _%pre194123%_
                                       _%ns194124%_
                                       _%pkg194125%_)
                               (gx#core-read-module-package
                                _%path194034%_
                                _%pre194123%_
                                _%ns194124%_))))
                      (begin
                        (let ((_g195615_
                               (if (##values? _g195614_)
                                   (##values-length _g195614_)
                                   1)))
                          (if (not (##fx= _g195615_ 3))
                              (error "Context expects 3 values" _g195615_)))
                        (let ((_%pre194128%_ (##values-ref _g195614_ 0))
                              (_%ns194129%_ (##values-ref _g195614_ 1))
                              (_%pkg194130%_ (##values-ref _g195614_ 2)))
                          (let* ((_%prelude194132%_
                                  (gx#import-module__0 _%pre194128%_))
                                 (_%read-module-body194187%_
                                  (let ((_%$e194178%_
                                         (__find (lambda (_%$%e194133194135%_)
                                                   (let* ((_%$%$%e194133194137194147%_
                                                           _%$%e194133194135%_)
                                                          (_%$%else194139194155%_
                                                           (lambda () '#f))
                                                          (_%$%K194141194159%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e194133194137194147%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e194142194162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e194133194137194147%_
                          '1
                          '#f
                          '#f))
                        (_%$%e194143194165%_
                         (##unchecked-structure-ref
                          _%$%$%e194133194137194147%_
                          '2
                          '#f
                          '#f))
                        (_%$%e194144194168%_
                         (##unchecked-structure-ref
                          _%$%$%e194133194137194147%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e194144194168%_ '1)
                       (let ((_%$%e194145194171%_
                              (##unchecked-structure-ref
                               _%$%$%e194133194137194147%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e194145194171%_ 'read-module-body)
                             (_%$%K194141194159%_)
                             (_%$%else194139194155%_)))
                       (_%$%else194139194155%_)))
                 (_%$%else194139194155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude194132%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e194178%_
                                        (let ((_%proc194184%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e194178%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc194184%_)
                                              _%proc194184%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path194034%_
                                               _%pre194128%_
                                               _%proc194184%_)))
                                        _%default-read-module-body194036%_)))
                                 (_%path-id194189%_
                                  (gx#core-module-path->namespace
                                   _%path194034%_))
                                 (_%pkg-id194191%_
                                  (if _%pkg194130%_
                                      (##string-append
                                       _%pkg194130%_
                                       '"/"
                                       _%path-id194189%_)
                                      _%path-id194189%_))
                                 (_%module-id194193%_
                                  (##string->symbol _%pkg-id194191%_))
                                 (_%module-ns194198%_
                                  (let ((_%$e194195%_ _%ns194129%_))
                                    (if _%$e194195%_
                                        _%$e194195%_
                                        _%pkg-id194191%_)))
                                 (_%body194202%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body194187%_
                                         _%inp194122%_))
                                      gx#current-module-reader-args
                                      _%args194126%_))
                                   gx#current-module-reader-path
                                   _%path194034%_)))
                            (values _%prelude194132%_
                                    _%module-id194193%_
                                    _%module-ns194198%_
                                    _%body194202%_)))))))
                 (_%string-e194038%_
                  (lambda (_%obj194116%_ _%what194117%_)
                    (if (string? _%obj194116%_)
                        _%obj194116%_
                        (if (symbol? _%obj194116%_)
                            (##symbol->string _%obj194116%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what194117%_)
                             _%path194034%_
                             _%obj194116%_)))))
                 (_%read-lang-args194039%_
                  (lambda (_%inp194071%_ _%args194072%_)
                    (let* ((_%$%args194073194081%_ _%args194072%_)
                           (_%$%else194075194089%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path194034%_)))
                           (_%$%K194077194104%_
                            (lambda (_%args194092%_ _%prelude194093%_)
                              (let* ((_%pkg194095%_
                                      (pgetq__0 'package: _%args194092%_))
                                     (_%pkg194097%_
                                      (if _%pkg194095%_
                                          (_%string-e194038%_
                                           _%pkg194095%_
                                           '"package")
                                          '#f))
                                     (_%ns194099%_
                                      (pgetq__0 'namespace: _%args194092%_))
                                     (_%ns194101%_
                                      (if _%ns194099%_
                                          (_%string-e194038%_
                                           _%ns194099%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body194037%_
                                 _%inp194071%_
                                 _%prelude194093%_
                                 _%ns194101%_
                                 _%pkg194097%_
                                 _%args194092%_)))))
                      (if (pair? _%$%args194073194081%_)
                          (let ((_%$%hd194078194107%_
                                 (##car _%$%args194073194081%_))
                                (_%$%tl194079194109%_
                                 (##cdr _%$%args194073194081%_)))
                            (let* ((_%prelude194112%_ _%$%hd194078194107%_)
                                   (_%args194114%_ _%$%tl194079194109%_))
                              (_%$%K194077194104%_
                               _%args194114%_
                               _%prelude194112%_)))
                          (_%$%else194075194089%_)))))
                 (_%read-lang194040%_
                  (lambda (_%inp194045%_)
                    (let* ((_%head194047%_ (read-line _%inp194045%_))
                           (_%$e194049%_
                            (string-index__0 _%head194047%_ '#\space)))
                      (if _%$e194049%_
                          (let ((_%lang194054%_
                                 (substring _%head194047%_ '0 _%$e194049%_)))
                            (if (equal? _%lang194054%_ '"#lang")
                                (let* ((_%rest194056%_
                                        (substring
                                         _%head194047%_
                                         (##fx+ _%$e194049%_ '1)
                                         (string-length _%head194047%_)))
                                       (_%args194067%_
                                        (__with-catch
                                         (lambda (_%$%g194057194059%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path194034%_
                                            _%$%g194057194059%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest194056%_
                                            (lambda (_%$%g194062194064%_)
                                              (read-all
                                               _%$%g194062194064%_
                                               read)))))))
                                  (_%read-lang-args194039%_
                                   _%inp194045%_
                                   _%args194067%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path194034%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path194034%_)))))
                 (_%read-e194041%_
                  (lambda (_%inp194043%_)
                    (if (eq? (peek-char _%inp194043%_) '#\#)
                        (_%read-lang194040%_ _%inp194043%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path194034%_)))))
          (gx#call-with-input-source-file _%path194034%_ _%read-e194041%_))))
    (define gx#core-read-module-package
      (lambda (_%path193982%_ _%pre193983%_ _%ns193984%_)
        (letrec ((_%string-e193986%_
                  (lambda (_%e194029%_)
                    (if (symbol? _%e194029%_)
                        (##symbol->string _%e194029%_)
                        (if (string? _%e194029%_)
                            _%e194029%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e194029%_))))))
          (let _%lp193988%_ ((_%dir193990%_ (path-directory _%path193982%_))
                             (_%pkg-path193991%_ '()))
            (let ((_%gerbil.pkg193993%_
                   (path-expand '"gerbil.pkg" _%dir193990%_)))
              (if (##file-exists? _%gerbil.pkg193993%_)
                  (let ((_%plist193995%_
                         (gx#core-library-package-plist__% _%dir193990%_ '#t)))
                    (if (null? _%plist193995%_)
                        (let ((_%pkg193998%_
                               (if (null? _%pkg-path193991%_)
                                   '#f
                                   (string-join _%pkg-path193991%_ '"/"))))
                          (values _%pre193983%_ _%ns193984%_ _%pkg193998%_))
                        (if (list? _%plist193995%_)
                            (let* ((_%root194001%_
                                    (pgetq__0 'package: _%plist193995%_))
                                   (_%pkg194005%_
                                    (let ((_%pkg-path194003%_
                                           (if _%root194001%_
                                               (cons (_%string-e193986%_
                                                      _%root194001%_)
                                                     _%pkg-path193991%_)
                                               _%pkg-path193991%_)))
                                      (if (null? _%pkg-path194003%_)
                                          '#f
                                          (string-join
                                           _%pkg-path194003%_
                                           '"/"))))
                                   (_%ns194012%_
                                    (let ((_%ns194010%_
                                           (let ((_%$e194007%_ _%ns193984%_))
                                             (if _%$e194007%_
                                                 _%$e194007%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist193995%_)))))
                                      (if _%ns194010%_
                                          (_%string-e193986%_ _%ns194010%_)
                                          '#f)))
                                   (_%pre194017%_
                                    (let ((_%$e194014%_ _%pre193983%_))
                                      (if _%$e194014%_
                                          _%$e194014%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist193995%_)))))
                              (values _%pre194017%_
                                      _%ns194012%_
                                      _%pkg194005%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist193995%_))))
                  (let ((_%dir*194021%_
                         (path-strip-trailing-directory-separator
                          _%dir193990%_)))
                    (if (or (__string-empty? _%dir*194021%_)
                            (equal? _%dir193990%_ _%dir*194021%_))
                        (values _%pre193983%_ _%ns193984%_ '#f)
                        (let ((_%xpath194026%_
                               (path-strip-directory _%dir*194021%_))
                              (_%xdir194027%_ (path-directory _%dir*194021%_)))
                          (_%lp193988%_
                           _%xdir194027%_
                           (cons _%xpath194026%_ _%pkg-path193991%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path193980%_)
        (path-strip-extension (path-strip-directory _%path193980%_))))
    (define gx#core-module-path->id
      (lambda (_%path193978%_)
        (##string->symbol (gx#core-module-path->namespace _%path193978%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path193957%_ _%rel193958%_)
        (let* ((_%path193960%_ (gx#stx-e _%stx-path193957%_))
               (_%path193962%_
                (if (__string-empty? (path-extension _%path193960%_))
                    (##string-append _%path193960%_ '".ss")
                    _%path193960%_)))
          (gx#core-resolve-path__%
           _%path193962%_
           (let ((_%$e193965%_ (gx#stx-source _%stx-path193957%_)))
             (if _%$e193965%_ _%$e193965%_ _%rel193958%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path193971%_)
        (let ((_%rel193973%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path193971%_ _%rel193973%_))))
    (define gx#core-resolve-module-path
      (lambda _g195616_
        (let ((_g195617_ (##length _g195616_)))
          (cond ((##fx= _g195617_ 1)
                 (apply gx#core-resolve-module-path__0 _g195616_))
                ((##fx= _g195617_ 2)
                 (apply gx#core-resolve-module-path__% _g195616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g195616_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath193842%_)
        (let* ((_%spath193844%_ (symbol->string (gx#stx-e _%libpath193842%_)))
               (_%spath193846%_
                (substring
                 _%spath193844%_
                 '1
                 (##string-length _%spath193844%_)))
               (_%ext193848%_ (path-extension _%spath193846%_))
               (_%ssi193850%_
                (if (__string-empty? _%ext193848%_)
                    (##string-append _%spath193846%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath193846%_)
                     '".ssi")))
               (_%srcs193854%_
                (if (__string-empty? _%ext193848%_)
                    (##map (lambda (_%ext193852%_)
                             (string-append _%spath193846%_ _%ext193852%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath193846%_ '()))))
          (let _%lp193857%_ ((_%rest193859%_ (load-path)))
            (let* ((_%$%rest193860193869%_ _%rest193859%_)
                   (_%$%E193863193873%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest193860193869%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K193865193944%_
                     (lambda (_%rest193884%_ _%dir193885%_)
                       (letrec ((_%resolve193887%_
                                 (lambda (_%ssi193900%_ _%srcs193901%_)
                                   (let ((_%compiled-path193903%_
                                          (path-expand
                                           _%ssi193900%_
                                           _%dir193885%_)))
                                     (if (##file-exists?
                                          _%compiled-path193903%_)
                                         (path-normalize
                                          _%compiled-path193903%_)
                                         (let _%lpr193905%_ ((_%rest-src193907%_
                                                              _%srcs193901%_))
                                           (let* ((_%$%rest-src193908193916%_
                                                   _%rest-src193907%_)
                                                  (_%$%else193910193924%_
                                                   (lambda ()
                                                     (_%lp193857%_
                                                      _%rest193884%_)))
                                                  (_%$%K193912193932%_
                                                   (lambda (_%rest-src193927%_
                                                            _%src193928%_)
                                                     (let ((_%src-path193930%_
                                                            (path-expand
                                                             _%src193928%_
                                                             _%dir193885%_)))
                                                       (if (##file-exists?
                                                            _%src-path193930%_)
                                                           (path-normalize
                                                            _%src-path193930%_)
                                                           (_%lpr193905%_
                                                            _%rest-src193927%_))))))
                                             (if (pair? _%$%rest-src193908193916%_)
                                                 (let ((_%$%hd193913193935%_
                                                        (##car _%$%rest-src193908193916%_))
                                                       (_%$%tl193914193937%_
                                                        (##cdr _%$%rest-src193908193916%_)))
                                                   (let* ((_%src193940%_
                                                           _%$%hd193913193935%_)
                                                          (_%rest-src193942%_
                                                           _%$%tl193914193937%_))
                                                     (_%$%K193912193932%_
                                                      _%rest-src193942%_
                                                      _%src193940%_)))
                                                 (_%$%else193910193924%_)))))))))
                         (let ((_%$e193889%_
                                (gx#core-library-package-path-prefix
                                 _%dir193885%_)))
                           (if _%$e193889%_
                               (if (string-prefix?
                                    _%$e193889%_
                                    _%spath193846%_)
                                   (let ((_%ssi193896%_
                                          (substring
                                           _%ssi193850%_
                                           (string-length _%$e193889%_)
                                           (##string-length _%ssi193850%_)))
                                         (_%srcs193897%_
                                          (##map (lambda (_%src193894%_)
                                                   (substring
                                                    _%src193894%_
                                                    (string-length
                                                     _%$e193889%_)
                                                    (string-length
                                                     _%src193894%_)))
                                                 _%srcs193854%_)))
                                     (_%resolve193887%_
                                      _%ssi193896%_
                                      _%srcs193897%_))
                                   (_%lp193857%_ _%rest193884%_))
                               (_%resolve193887%_
                                _%ssi193850%_
                                _%srcs193854%_))))))
                    (_%$%K193864193878%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath193842%_))))
                (let ((_%$%try-match193862193881%_
                       (lambda ()
                         (if (null? _%$%rest193860193869%_)
                             (_%$%K193864193878%_)
                             (_%$%E193863193873%_)))))
                  (if (pair? _%$%rest193860193869%_)
                      (let ((_%$%tl193867193949%_
                             (##cdr _%$%rest193860193869%_))
                            (_%$%hd193866193947%_
                             (##car _%$%rest193860193869%_)))
                        (let ((_%dir193952%_ _%$%hd193866193947%_)
                              (_%rest193954%_ _%$%tl193867193949%_))
                          (_%$%K193865193944%_ _%rest193954%_ _%dir193952%_)))
                      (_%$%try-match193862193881%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath193810%_)
        (letrec ((_%resolve193812%_
                  (lambda (_%path193833%_ _%base193834%_)
                    (let ((_%$e193836%_
                           (string-rindex__0 _%base193834%_ '#\/)))
                      (if _%$e193836%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base193834%_ '0 _%$e193836%_)
                             '"/"
                             _%path193833%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path193833%_))))))))
          (let ((_%spath193814%_ (symbol->string (gx#stx-e _%modpath193810%_)))
                (_%mod193815%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod193815%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath193810%_))
            (let ((_%mpath193817%_
                   (symbol->string
                    (##structure-ref
                     _%mod193815%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp193819%_ ((_%spath193821%_ _%spath193814%_)
                                 (_%mpath193822%_ _%mpath193817%_))
                (if (string-prefix? '"../" _%spath193821%_)
                    (let ((_%$e193825%_
                           (string-rindex__0 _%mpath193822%_ '#\/)))
                      (if _%$e193825%_
                          (_%lp193819%_
                           (substring
                            _%spath193821%_
                            '3
                            (string-length _%spath193821%_))
                           (substring _%mpath193822%_ '0 _%$e193825%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath193810%_)))
                    (if (string-prefix? '"./" _%spath193821%_)
                        (_%lp193819%_
                         (substring
                          _%spath193821%_
                          '2
                          (string-length _%spath193821%_))
                         _%mpath193822%_)
                        (_%resolve193812%_
                         _%spath193821%_
                         _%mpath193822%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir193802%_)
        (let ((_%$e193804%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir193802%_))))
          (if _%$e193804%_
              (##string-append (symbol->string _%$e193804%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir193772%_ _%exists?193773%_)
        (let ((_%$e193775%_ (__hash-get gx#__module-pkg-cache _%dir193772%_)))
          (if _%$e193775%_
              _%$e193775%_
              (let* ((_%gerbil.pkg193779%_
                      (path-expand '"gerbil.pkg" _%dir193772%_))
                     (_%plist193789%_
                      (if (or _%exists?193773%_
                              (##file-exists? _%gerbil.pkg193779%_))
                          (let ((_%e193784%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg193779%_
                                  read)))
                            (if (eof-object? _%e193784%_)
                                '()
                                (if (list? _%e193784%_)
                                    _%e193784%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg193779%_
                                     _%e193784%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir193772%_
                 _%plist193789%_)
                _%plist193789%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir193795%_)
        (let ((_%exists?193797%_ '#f))
          (gx#core-library-package-plist__% _%dir193795%_ _%exists?193797%_))))
    (define gx#core-library-package-plist
      (lambda _g195618_
        (let ((_g195619_ (##length _g195618_)))
          (cond ((##fx= _g195619_ 1)
                 (apply gx#core-library-package-plist__0 _g195618_))
                ((##fx= _g195619_ 2)
                 (apply gx#core-library-package-plist__% _g195618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g195618_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx193769%_)
        (gx#core-special-module-path? _%stx193769%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx193767%_)
        (gx#core-special-module-path? _%stx193767%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx193762%_ _%char193763%_)
        (if (gx#identifier? _%stx193762%_)
            (if (interned-symbol? (gx#stx-e _%stx193762%_))
                (let ((_%str193765%_
                       (symbol->string (gx#stx-e _%stx193762%_))))
                  (if (##fx> (##string-length _%str193765%_) '1)
                      (eq? (string-ref _%str193765%_ '0) _%char193763%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx193756%_)
        (gx#core-bound-identifier?__%
         _%stx193756%_
         (lambda (_%$%g193757193759%_)
           (gx#expander-binding?__%
            _%$%g193757193759%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx193750%_)
        (gx#core-bound-identifier?__%
         _%stx193750%_
         (lambda (_%$%g193751193753%_)
           (gx#expander-binding?__% _%$%g193751193753%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx193737%_)
        (letrec ((_%module-prelude?193739%_
                  (lambda (_%e193745%_)
                    (let ((_%$e193747%_
                           (##structure-instance-of?
                            _%e193745%_
                            'gx#module-context::t)))
                      (if _%$e193747%_
                          _%$e193747%_
                          (##structure-instance-of?
                           _%e193745%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx193737%_
           (lambda (_%$%g193740193742%_)
             (gx#expander-binding?__%
              _%$%g193740193742%_
              _%module-prelude?193739%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in193668%_ _%ctx193669%_ _%force-weak?193670%_)
        (let* ((_%$%in193671193680%_ _%in193668%_)
               (_%$%E193673193683%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in193671193680%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K193674193696%_
                (lambda (_%weak?193686%_
                         _%phi193687%_
                         _%key193688%_
                         _%source193689%_)
                  (gx#core-bind!__%
                   _%key193688%_
                   (let* ((_%e193691%_
                           (gx#core-resolve-module-export _%source193689%_))
                          (__obj195600
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
                      __obj195600
                      (##unchecked-structure-ref _%e193691%_ '1 '#f '#f)
                      _%key193688%_
                      _%phi193687%_
                      _%e193691%_
                      (##unchecked-structure-ref _%source193689%_ '1 '#f '#f)
                      (let ((_%$e193693%_ _%force-weak?193670%_))
                        (if _%$e193693%_ _%$e193693%_ _%weak?193686%_)))
                     __obj195600)
                   gx#core-context-rebind?
                   _%phi193687%_
                   _%ctx193669%_))))
          (if (##structure-direct-instance-of?
               _%$%in193671193680%_
               'gx#module-import::t)
              (let* ((_%$%e193675193699%_
                      (##unchecked-structure-ref
                       _%$%in193671193680%_
                       '1
                       '#f
                       '#f))
                     (_%source193702%_ _%$%e193675193699%_)
                     (_%$%e193676193704%_
                      (##unchecked-structure-ref
                       _%$%in193671193680%_
                       '2
                       '#f
                       '#f))
                     (_%key193707%_ _%$%e193676193704%_)
                     (_%$%e193677193709%_
                      (##unchecked-structure-ref
                       _%$%in193671193680%_
                       '3
                       '#f
                       '#f))
                     (_%phi193712%_ _%$%e193677193709%_)
                     (_%$%e193678193714%_
                      (##unchecked-structure-ref
                       _%$%in193671193680%_
                       '4
                       '#f
                       '#f))
                     (_%weak?193717%_ _%$%e193678193714%_))
                (_%$%K193674193696%_
                 _%weak?193717%_
                 _%phi193712%_
                 _%key193707%_
                 _%source193702%_))
              (_%$%E193673193683%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in193722%_)
        (let* ((_%ctx193724%_ (gx#current-expander-context))
               (_%force-weak?193726%_ '#f))
          (gx#core-bind-import!__%
           _%in193722%_
           _%ctx193724%_
           _%force-weak?193726%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in193728%_ _%ctx193729%_)
        (let ((_%force-weak?193731%_ '#f))
          (gx#core-bind-import!__%
           _%in193728%_
           _%ctx193729%_
           _%force-weak?193731%_))))
    (define gx#core-bind-import!
      (lambda _g195620_
        (let ((_g195621_ (##length _g195620_)))
          (cond ((##fx= _g195621_ 1) (apply gx#core-bind-import!__0 _g195620_))
                ((##fx= _g195621_ 2) (apply gx#core-bind-import!__1 _g195620_))
                ((##fx= _g195621_ 3) (apply gx#core-bind-import!__% _g195620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g195620_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in193654%_ _%ctx193655%_)
        (gx#core-bind-import!__% _%in193654%_ _%ctx193655%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in193660%_)
        (let ((_%ctx193662%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in193660%_ _%ctx193662%_))))
    (define gx#core-bind-weak-import!
      (lambda _g195622_
        (let ((_g195623_ (##length _g195622_)))
          (cond ((##fx= _g195623_ 1)
                 (apply gx#core-bind-weak-import!__0 _g195622_))
                ((##fx= _g195623_ 2)
                 (apply gx#core-bind-weak-import!__% _g195622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g195622_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out193547%_)
        (letrec ((_%subst193549%_
                  (lambda (_%key193594%_)
                    (let* ((_%$%key193595193603%_ _%key193594%_)
                           (_%$%else193597193611%_ (lambda () _%key193594%_))
                           (_%$%K193599193641%_
                            (lambda (_%mark193614%_ _%id193615%_)
                              (let* ((_%$%mark193616193622%_ _%mark193614%_)
                                     (_%$%E193618193625%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark193616193622%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K193619193633%_
                                      (lambda (_%subst193628%_)
                                        (let ((_%$e193630%_
                                               (if _%subst193628%_
                                                   (hash-get
                                                    _%subst193628%_
                                                    _%id193615%_)
                                                   '#f)))
                                          (if _%$e193630%_
                                              _%$e193630%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key193594%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark193616193622%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e193620193636%_
                                            (##unchecked-structure-ref
                                             _%$%mark193616193622%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst193639%_
                                            _%$%e193620193636%_))
                                      (_%$%K193619193633%_ _%subst193639%_))
                                    (_%$%E193618193625%_))))))
                      (if (pair? _%$%key193595193603%_)
                          (let ((_%$%hd193600193644%_
                                 (##car _%$%key193595193603%_))
                                (_%$%tl193601193646%_
                                 (##cdr _%$%key193595193603%_)))
                            (let* ((_%id193649%_ _%$%hd193600193644%_)
                                   (_%mark193651%_ _%$%tl193601193646%_))
                              (_%$%K193599193641%_
                               _%mark193651%_
                               _%id193649%_)))
                          (_%$%else193597193611%_))))))
          (let* ((_%$%out193550193560%_ _%out193547%_)
                 (_%$%E193552193563%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out193550193560%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K193553193570%_
                  (lambda (_%phi193566%_ _%key193567%_ _%ctx193568%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx193568%_ _%phi193566%_)
                     (_%subst193549%_ _%key193567%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out193550193560%_
                 'gx#module-export::t)
                (let* ((_%$%e193554193573%_
                        (##unchecked-structure-ref
                         _%$%out193550193560%_
                         '1
                         '#f
                         '#f))
                       (_%ctx193576%_ _%$%e193554193573%_)
                       (_%$%e193555193578%_
                        (##unchecked-structure-ref
                         _%$%out193550193560%_
                         '2
                         '#f
                         '#f))
                       (_%key193581%_ _%$%e193555193578%_)
                       (_%$%e193556193583%_
                        (##unchecked-structure-ref
                         _%$%out193550193560%_
                         '3
                         '#f
                         '#f))
                       (_%phi193586%_ _%$%e193556193583%_)
                       (_%$%e193557193588%_
                        (##unchecked-structure-ref
                         _%$%out193550193560%_
                         '4
                         '#f
                         '#f))
                       (_%$%e193558193591%_
                        (##unchecked-structure-ref
                         _%$%out193550193560%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K193553193570%_
                   _%phi193586%_
                   _%key193581%_
                   _%ctx193576%_))
                (_%$%E193552193563%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out193473%_ _%rename193474%_ _%dphi193475%_)
        (let* ((_%$%out193476193486%_ _%out193473%_)
               (_%$%E193478193489%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out193476193486%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K193479193501%_
                (lambda (_%weak?193492%_
                         _%name193493%_
                         _%phi193494%_
                         _%key193495%_
                         _%ctx193496%_)
                  (##structure
                   gx#module-import::t
                   _%out193473%_
                   (let ((_%$e193498%_ _%rename193474%_))
                     (if _%$e193498%_ _%$e193498%_ _%name193493%_))
                   (fx+ _%phi193494%_ _%dphi193475%_)
                   _%weak?193492%_))))
          (if (##structure-direct-instance-of?
               _%$%out193476193486%_
               'gx#module-export::t)
              (let* ((_%$%e193480193504%_
                      (##unchecked-structure-ref
                       _%$%out193476193486%_
                       '1
                       '#f
                       '#f))
                     (_%ctx193507%_ _%$%e193480193504%_)
                     (_%$%e193481193509%_
                      (##unchecked-structure-ref
                       _%$%out193476193486%_
                       '2
                       '#f
                       '#f))
                     (_%key193512%_ _%$%e193481193509%_)
                     (_%$%e193482193514%_
                      (##unchecked-structure-ref
                       _%$%out193476193486%_
                       '3
                       '#f
                       '#f))
                     (_%phi193517%_ _%$%e193482193514%_)
                     (_%$%e193483193519%_
                      (##unchecked-structure-ref
                       _%$%out193476193486%_
                       '4
                       '#f
                       '#f))
                     (_%name193522%_ _%$%e193483193519%_)
                     (_%$%e193484193524%_
                      (##unchecked-structure-ref
                       _%$%out193476193486%_
                       '5
                       '#f
                       '#f))
                     (_%weak?193527%_ _%$%e193484193524%_))
                (_%$%K193479193501%_
                 _%weak?193527%_
                 _%name193522%_
                 _%phi193517%_
                 _%key193512%_
                 _%ctx193507%_))
              (_%$%E193478193489%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out193532%_)
        (let* ((_%rename193534%_ '#f) (_%dphi193536%_ '0))
          (gx#core-module-export->import__%
           _%out193532%_
           _%rename193534%_
           _%dphi193536%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out193538%_ _%rename193539%_)
        (let ((_%dphi193541%_ '0))
          (gx#core-module-export->import__%
           _%out193538%_
           _%rename193539%_
           _%dphi193541%_))))
    (define gx#core-module-export->import
      (lambda _g195624_
        (let ((_g195625_ (##length _g195624_)))
          (cond ((##fx= _g195625_ 1)
                 (apply gx#core-module-export->import__0 _g195624_))
                ((##fx= _g195625_ 2)
                 (apply gx#core-module-export->import__1 _g195624_))
                ((##fx= _g195625_ 3)
                 (apply gx#core-module-export->import__% _g195624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g195624_))))))
    (define gx#core-expand-module%
      (lambda (_%stx193372%_)
        (letrec ((_%make-context193374%_
                  (lambda (_%id193451%_)
                    (let* ((_%super193453%_ (gx#current-expander-context))
                           (_%bind-id193455%_ (gx#stx-e _%id193451%_))
                           (_%mod-id193457%_
                            (if (##structure-instance-of?
                                 _%super193453%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super193453%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id193455%_)
                                _%bind-id193455%_))
                           (_%ns193459%_ (symbol->string _%mod-id193457%_))
                           (_%path193469%_
                            (if (##structure-instance-of?
                                 _%super193453%_
                                 'gx#module-context::t)
                                (let ((_%path193461%_
                                       (##unchecked-structure-ref
                                        _%super193453%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path193461%_)
                                          (null? _%path193461%_))
                                      (cons _%bind-id193455%_ _%path193461%_)
                                      (if (not _%path193461%_)
                                          _%bind-id193455%_
                                          (cons _%bind-id193455%_
                                                (cons _%path193461%_ '())))))
                                _%bind-id193455%_))
                           (__obj195601
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
                       __obj195601
                       _%mod-id193457%_
                       _%super193453%_
                       _%ns193459%_
                       _%path193469%_)
                      __obj195601)))
                 (_%valid-module-id?193375%_
                  (lambda (_%id193426%_)
                    (let* ((_%str193428%_ (symbol->string _%id193426%_))
                           (_%len193430%_ (##string-length _%str193428%_)))
                      (if (##fx>= _%len193430%_ '1)
                          (let _%loop193433%_ ((_%index193435%_
                                                (##fx- (##string-length
                                                        _%str193428%_)
                                                       '1)))
                            (if (##fx>= _%index193435%_ '0)
                                (let ((_%c193437%_
                                       (string-ref
                                        _%str193428%_
                                        _%index193435%_)))
                                  (if (or (and (##char>=? _%c193437%_ '#\a)
                                               (##char<=? _%c193437%_ '#\z))
                                          (and (##char>=? _%c193437%_ '#\A)
                                               (##char<=? _%c193437%_ '#\Z))
                                          (and (##char>=? _%c193437%_ '#\0)
                                               (##char<=? _%c193437%_ '#\9))
                                          (##char=? _%c193437%_ '#\_)
                                          (##char=? _%c193437%_ '#\-))
                                      (_%loop193433%_
                                       (##fx- _%index193435%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e193376193386%_ _%stx193372%_)
                 (_%$%E193378193390%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e193376193386%_)))
                 (_%$%E193377193422%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e193376193386%_)
                        (let ((_%$%e193379193394%_
                               (gx#syntax-e _%$%e193376193386%_)))
                          (let ((_%$%hd193380193397%_
                                 (##car _%$%e193379193394%_))
                                (_%$%tl193381193399%_
                                 (##cdr _%$%e193379193394%_)))
                            (if (gx#stx-pair? _%$%tl193381193399%_)
                                (let ((_%$%e193382193402%_
                                       (gx#syntax-e _%$%tl193381193399%_)))
                                  (let ((_%$%hd193383193405%_
                                         (##car _%$%e193382193402%_))
                                        (_%$%tl193384193407%_
                                         (##cdr _%$%e193382193402%_)))
                                    (let* ((_%id193410%_ _%$%hd193383193405%_)
                                           (_%body193412%_
                                            _%$%tl193384193407%_))
                                      (if (and (gx#identifier? _%id193410%_)
                                               (gx#stx-list? _%body193412%_))
                                          (if (_%valid-module-id?193375%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx193414%_
                                                      (_%make-context193374%_
                                                       _%id193410%_))
                                                     (_%body193416%_
                                                      (gx#core-expand-module-begin
                                                       _%body193412%_
                                                       _%ctx193414%_))
                                                     (_%body193418%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body193416%_)
                                                       (gx#stx-source
                                                        _%stx193372%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx193414%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body193418%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx193414%_
                                                 _%body193418%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id193410%_
                                                 _%ctx193414%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id193410%_)
                                                  _%body193418%_)
                                                 (gx#stx-source
                                                  _%stx193372%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx193372%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E193378193390%_)))))
                                (_%$%E193378193390%_))))
                        (_%$%E193378193390%_)))))
            (_%$%E193377193422%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body193337%_ _%ctx193338%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx193342%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body193337%_)))
                     (_%$%e193343193350%_ _%stx193342%_)
                     (_%$%E193345193354%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx193342%_)))
                     (_%$%E193344193368%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e193343193350%_)
                            (let ((_%$%e193346193358%_
                                   (gx#syntax-e _%$%e193343193350%_)))
                              (let ((_%$%hd193347193361%_
                                     (##car _%$%e193346193358%_))
                                    (_%$%tl193348193363%_
                                     (##cdr _%$%e193346193358%_)))
                                (if (and (gx#identifier? _%$%hd193347193361%_)
                                         (gx#core-identifier=?
                                          _%$%hd193347193361%_
                                          '%#begin-module))
                                    (let ((_%body193366%_
                                           _%$%tl193348193363%_))
                                      (if (gx#sealed-syntax? _%stx193342%_)
                                          _%body193366%_
                                          (gx#core-expand-module-body
                                           _%body193366%_)))
                                    (_%$%E193345193354%_))))
                            (_%$%E193345193354%_)))))
                (_%$%E193344193368%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx193338%_)))
    (define gx#core-expand-module-body
      (lambda (_%body193034%_)
        (letrec ((_%expand-special193036%_
                  (lambda (_%hd193165%_ _%K193166%_ _%rest193167%_ _%r193168%_)
                    (let* ((_%$%e193169193209%_ _%hd193165%_)
                           (_%$%E193204193213%_
                            (lambda ()
                              (_%K193166%_
                               _%rest193167%_
                               (cons (gx#core-expand-top _%hd193165%_)
                                     _%r193168%_))))
                           (_%$%E193191193225%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193169193209%_)
                                  (let ((_%$%e193205193217%_
                                         (gx#syntax-e _%$%e193169193209%_)))
                                    (let ((_%$%hd193206193220%_
                                           (##car _%$%e193205193217%_))
                                          (_%$%tl193207193222%_
                                           (##cdr _%$%e193205193217%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193206193220%_)
                                               (gx#core-identifier=?
                                                _%$%hd193206193220%_
                                                '%#export))
                                          (_%K193166%_
                                           _%rest193167%_
                                           (cons _%hd193165%_ _%r193168%_))
                                          (_%$%E193204193213%_))))
                                  (_%$%E193204193213%_))))
                           (_%$%E193181193267%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193169193209%_)
                                  (let ((_%$%e193192193229%_
                                         (gx#syntax-e _%$%e193169193209%_)))
                                    (let ((_%$%hd193193193232%_
                                           (##car _%$%e193192193229%_))
                                          (_%$%tl193194193234%_
                                           (##cdr _%$%e193192193229%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193193193232%_)
                                               (gx#core-identifier=?
                                                _%$%hd193193193232%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193194193234%_)
                                              (let ((_%$%e193195193237%_
                                                     (gx#syntax-e
                                                      _%$%tl193194193234%_)))
                                                (let ((_%$%hd193196193240%_
                                                       (##car _%$%e193195193237%_))
                                                      (_%$%tl193197193242%_
                                                       (##cdr _%$%e193195193237%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193196193240%_)
                                                      (let ((_%$%e193201193245%_
                                                             (gx#syntax-e
                                                              _%$%hd193196193240%_)))
                                                        (let ((_%$%hd193202193248%_
                                                               (##car _%$%e193201193245%_))
                                                              (_%$%tl193203193250%_
                                                               (##cdr _%$%e193201193245%_)))
                                                          (let ((_%id193253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193202193248%_))
                    (if (gx#stx-null? _%$%tl193203193250%_)
                        (if (gx#stx-pair? _%$%tl193197193242%_)
                            (let ((_%$%e193198193255%_
                                   (gx#syntax-e _%$%tl193197193242%_)))
                              (let ((_%$%hd193199193258%_
                                     (##car _%$%e193198193255%_))
                                    (_%$%tl193200193260%_
                                     (##cdr _%$%e193198193255%_)))
                                (let ((_%props193263%_ _%$%hd193199193258%_))
                                  (if (gx#stx-null? _%$%tl193200193260%_)
                                      (let ((_%bind193265%_
                                             (gx#resolve-identifier__0
                                              _%id193253%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193265%_
                                         _%props193263%_)
                                        (_%K193166%_
                                         _%rest193167%_
                                         _%r193168%_))
                                      (_%$%E193191193225%_)))))
                            (_%$%E193191193225%_))
                        (_%$%E193191193225%_)))))
              (_%$%E193191193225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193191193225%_))
                                          (_%$%E193191193225%_))))
                                  (_%$%E193191193225%_))))
                           (_%$%E193171193299%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193169193209%_)
                                  (let ((_%$%e193182193271%_
                                         (gx#syntax-e _%$%e193169193209%_)))
                                    (let ((_%$%hd193183193274%_
                                           (##car _%$%e193182193271%_))
                                          (_%$%tl193184193276%_
                                           (##cdr _%$%e193182193271%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193183193274%_)
                                               (gx#core-identifier=?
                                                _%$%hd193183193274%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193184193276%_)
                                              (let ((_%$%e193185193279%_
                                                     (gx#syntax-e
                                                      _%$%tl193184193276%_)))
                                                (let ((_%$%hd193186193282%_
                                                       (##car _%$%e193185193279%_))
                                                      (_%$%tl193187193284%_
                                                       (##cdr _%$%e193185193279%_)))
                                                  (let ((_%hd-bind193287%_
                                                         _%$%hd193186193282%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193187193284%_)
                                                        (let ((_%$%e193188193289%_
                                                               (gx#syntax-e
                                                                _%$%tl193187193284%_)))
                                                          (let ((_%$%hd193189193292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193188193289%_))
                        (_%$%tl193190193294%_ (##cdr _%$%e193188193289%_)))
                    (let ((_%expr193297%_ _%$%hd193189193292%_))
                      (if (gx#stx-null? _%$%tl193190193294%_)
                          (if (gx#core-bind-values? _%hd-bind193287%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193287%_)
                                (_%K193166%_
                                 _%rest193167%_
                                 (cons _%hd193165%_ _%r193168%_)))
                              (_%$%E193181193267%_))
                          (_%$%E193181193267%_)))))
                (_%$%E193181193267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193181193267%_))
                                          (_%$%E193181193267%_))))
                                  (_%$%E193181193267%_))))
                           (_%$%E193170193333%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193169193209%_)
                                  (let ((_%$%e193172193303%_
                                         (gx#syntax-e _%$%e193169193209%_)))
                                    (let ((_%$%hd193173193306%_
                                           (##car _%$%e193172193303%_))
                                          (_%$%tl193174193308%_
                                           (##cdr _%$%e193172193303%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193173193306%_)
                                               (gx#core-identifier=?
                                                _%$%hd193173193306%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193174193308%_)
                                              (let ((_%$%e193175193311%_
                                                     (gx#syntax-e
                                                      _%$%tl193174193308%_)))
                                                (let ((_%$%hd193176193314%_
                                                       (##car _%$%e193175193311%_))
                                                      (_%$%tl193177193316%_
                                                       (##cdr _%$%e193175193311%_)))
                                                  (let ((_%hd-bind193319%_
                                                         _%$%hd193176193314%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193177193316%_)
                                                        (let ((_%$%e193178193321%_
                                                               (gx#syntax-e
                                                                _%$%tl193177193316%_)))
                                                          (let ((_%$%hd193179193324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193178193321%_))
                        (_%$%tl193180193326%_ (##cdr _%$%e193178193321%_)))
                    (let* ((_%expr193329%_ _%$%hd193179193324%_)
                           (_%props193331%_ _%$%tl193180193326%_))
                      (if (and (gx#core-bind-values? _%hd-bind193319%_)
                               (gx#stx-list? _%props193331%_)
                               (not (gx#stx-null? _%props193331%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193319%_)
                            (_%K193166%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193319%_
                                          (cons _%props193331%_ '())))
                                   _%rest193167%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193319%_
                                          (cons _%expr193329%_ '())))
                                   _%r193168%_)))
                          (_%$%E193171193299%_)))))
                (_%$%E193171193299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193171193299%_))
                                          (_%$%E193171193299%_))))
                                  (_%$%E193171193299%_)))))
                      (_%$%E193170193333%_))))
                 (_%expand-body193037%_
                  (lambda (_%rbody193039%_)
                    (let _%lp193041%_ ((_%rest193043%_ _%rbody193039%_)
                                       (_%body193044%_ '()))
                      (let* ((_%$%rest193045193053%_ _%rest193043%_)
                             (_%$%else193047193061%_
                              (lambda () _%body193044%_))
                             (_%$%K193049193153%_
                              (lambda (_%rest193064%_ _%hd193065%_)
                                (let* ((_%$%e193066193087%_ _%hd193065%_)
                                       (_%$%E193082193091%_
                                        (lambda ()
                                          (_%lp193041%_
                                           _%rest193064%_
                                           (cons (gx#core-expand-expression
                                                  _%hd193065%_)
                                                 _%body193044%_))))
                                       (_%$%E193078193105%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193066193087%_)
                                              (let ((_%$%e193083193095%_
                                                     (gx#syntax-e
                                                      _%$%e193066193087%_)))
                                                (let ((_%$%hd193084193098%_
                                                       (##car _%$%e193083193095%_))
                                                      (_%$%tl193085193100%_
                                                       (##cdr _%$%e193083193095%_)))
                                                  (let ((_%form193103%_
                                                         _%$%hd193084193098%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form193103%_
                                                         gx#special-form-binding?)
                                                        (_%lp193041%_
                                                         _%rest193064%_
                                                         (cons _%hd193065%_
                                                               _%body193044%_))
                                                        (_%$%E193082193091%_)))))
                                              (_%$%E193082193091%_))))
                                       (_%$%E193068193117%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193066193087%_)
                                              (let ((_%$%e193079193109%_
                                                     (gx#syntax-e
                                                      _%$%e193066193087%_)))
                                                (let ((_%$%hd193080193112%_
                                                       (##car _%$%e193079193109%_))
                                                      (_%$%tl193081193114%_
                                                       (##cdr _%$%e193079193109%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193080193112%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193080193112%_
                                                            '%#export))
                                                      (_%lp193041%_
                                                       _%rest193064%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd193065%_)
                                                             _%body193044%_))
                                                      (_%$%E193078193105%_))))
                                              (_%$%E193078193105%_))))
                                       (_%$%E193067193149%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193066193087%_)
                                              (let ((_%$%e193069193121%_
                                                     (gx#syntax-e
                                                      _%$%e193066193087%_)))
                                                (let ((_%$%hd193070193124%_
                                                       (##car _%$%e193069193121%_))
                                                      (_%$%tl193071193126%_
                                                       (##cdr _%$%e193069193121%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193070193124%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193070193124%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl193071193126%_)
                                                          (let ((_%$%e193072193129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl193071193126%_)))
                    (let ((_%$%hd193073193132%_ (##car _%$%e193072193129%_))
                          (_%$%tl193074193134%_ (##cdr _%$%e193072193129%_)))
                      (let ((_%hd-bind193137%_ _%$%hd193073193132%_))
                        (if (gx#stx-pair? _%$%tl193074193134%_)
                            (let ((_%$%e193075193139%_
                                   (gx#syntax-e _%$%tl193074193134%_)))
                              (let ((_%$%hd193076193142%_
                                     (##car _%$%e193075193139%_))
                                    (_%$%tl193077193144%_
                                     (##cdr _%$%e193075193139%_)))
                                (let ((_%expr193147%_ _%$%hd193076193142%_))
                                  (if (gx#stx-null? _%$%tl193077193144%_)
                                      (_%lp193041%_
                                       _%rest193064%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind193137%_)
                                               (gx#core-expand-expression
                                                _%expr193147%_))
                                              (gx#stx-source _%hd193065%_))
                                             _%body193044%_))
                                      (_%$%E193068193117%_)))))
                            (_%$%E193068193117%_)))))
                  (_%$%E193068193117%_))
              (_%$%E193068193117%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193068193117%_)))))
                                  (_%$%E193067193149%_)))))
                        (if (pair? _%$%rest193045193053%_)
                            (let ((_%$%hd193050193156%_
                                   (##car _%$%rest193045193053%_))
                                  (_%$%tl193051193158%_
                                   (##cdr _%$%rest193045193053%_)))
                              (let* ((_%hd193161%_ _%$%hd193050193156%_)
                                     (_%rest193163%_ _%$%tl193051193158%_))
                                (_%$%K193049193153%_
                                 _%rest193163%_
                                 _%hd193161%_)))
                            (_%$%else193047193061%_)))))))
          (_%expand-body193037%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body193034%_)
            _%expand-special193036%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx192875%_
               _%expanded?192876%_
               _%method192877%_
               _%current-phi192878%_
               _%expand1192879%_)
        (letrec ((_%K192881%_
                  (lambda (_%rest193001%_ _%r193002%_)
                    (let* ((_%$%e193003193010%_ _%rest193001%_)
                           (_%$%E193005193014%_ (lambda () _%r193002%_))
                           (_%$%E193004193030%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193003193010%_)
                                  (let ((_%$%e193006193018%_
                                         (gx#syntax-e _%$%e193003193010%_)))
                                    (let ((_%$%hd193007193021%_
                                           (##car _%$%e193006193018%_))
                                          (_%$%tl193008193023%_
                                           (##cdr _%$%e193006193018%_)))
                                      (let* ((_%hd193026%_
                                              _%$%hd193007193021%_)
                                             (_%rest193028%_
                                              _%$%tl193008193023%_))
                                        (_%step192882%_
                                         _%hd193026%_
                                         _%rest193028%_
                                         _%r193002%_))))
                                  (_%$%E193005193014%_)))))
                      (_%$%E193004193030%_))))
                 (_%step192882%_
                  (lambda (_%hd192915%_ _%rest192916%_ _%r192917%_)
                    (let* ((_%$%e192918192936%_ _%hd192915%_)
                           (_%$%E192931192940%_
                            (lambda ()
                              (if (_%expanded?192876%_ (gx#stx-e _%hd192915%_))
                                  (_%K192881%_
                                   _%rest192916%_
                                   (cons (gx#stx-e _%hd192915%_) _%r192917%_))
                                  (_%expand1192879%_
                                   _%hd192915%_
                                   _%K192881%_
                                   _%rest192916%_
                                   _%r192917%_))))
                           (_%$%E192927192956%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192918192936%_)
                                  (let ((_%$%e192932192944%_
                                         (gx#syntax-e _%$%e192918192936%_)))
                                    (let ((_%$%hd192933192947%_
                                           (##car _%$%e192932192944%_))
                                          (_%$%tl192934192949%_
                                           (##cdr _%$%e192932192944%_)))
                                      (let* ((_%macro192952%_
                                              _%$%hd192933192947%_)
                                             (_%body192954%_
                                              _%$%tl192934192949%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro192952%_
                                             gx#syntax-binding?)
                                            (_%K192881%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro192952%_)
                                                    _%hd192915%_
                                                    _%method192877%_)
                                                   _%rest192916%_)
                                             _%r192917%_)
                                            (_%$%E192931192940%_)))))
                                  (_%$%E192931192940%_))))
                           (_%$%E192920192970%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192918192936%_)
                                  (let ((_%$%e192928192960%_
                                         (gx#syntax-e _%$%e192918192936%_)))
                                    (let ((_%$%hd192929192963%_
                                           (##car _%$%e192928192960%_))
                                          (_%$%tl192930192965%_
                                           (##cdr _%$%e192928192960%_)))
                                      (if (eq? (gx#stx-e _%$%hd192929192963%_)
                                               'begin:)
                                          (let ((_%body192968%_
                                                 _%$%tl192930192965%_))
                                            (_%K192881%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest192916%_
                                              _%body192968%_)
                                             _%r192917%_))
                                          (_%$%E192927192956%_))))
                                  (_%$%E192927192956%_))))
                           (_%$%E192919192997%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192918192936%_)
                                  (let ((_%$%e192921192974%_
                                         (gx#syntax-e _%$%e192918192936%_)))
                                    (let ((_%$%hd192922192977%_
                                           (##car _%$%e192921192974%_))
                                          (_%$%tl192923192979%_
                                           (##cdr _%$%e192921192974%_)))
                                      (if (eq? (gx#stx-e _%$%hd192922192977%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl192923192979%_)
                                              (let ((_%$%e192924192982%_
                                                     (gx#syntax-e
                                                      _%$%tl192923192979%_)))
                                                (let ((_%$%hd192925192985%_
                                                       (##car _%$%e192924192982%_))
                                                      (_%$%tl192926192987%_
                                                       (##cdr _%$%e192924192982%_)))
                                                  (let* ((_%dphi192990%_
                                                          _%$%hd192925192985%_)
                                                         (_%body192992%_
                                                          _%$%tl192926192987%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi192990%_)
                                                        (let ((_%rbody192995%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K192881%_ _%body192992%_ '()))
                        _%current-phi192878%_
                        (fx+ (gx#stx-e _%dphi192990%_)
                             (_%current-phi192878%_)))))
                  (_%K192881%_
                   _%rest192916%_
                   (append _%rbody192995%_ _%r192917%_)))
                (_%$%E192920192970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192920192970%_))
                                          (_%$%E192920192970%_))))
                                  (_%$%E192920192970%_)))))
                      (_%$%E192919192997%_)))))
          (let* ((_%$%e192883192890%_ _%stx192875%_)
                 (_%$%E192885192894%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e192883192890%_)))
                 (_%$%E192884192911%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e192883192890%_)
                        (let ((_%$%e192886192898%_
                               (gx#syntax-e _%$%e192883192890%_)))
                          (let ((_%$%hd192887192901%_
                                 (##car _%$%e192886192898%_))
                                (_%$%tl192888192903%_
                                 (##cdr _%$%e192886192898%_)))
                            (let ((_%body192906%_ _%$%tl192888192903%_))
                              (if (_%current-phi192878%_)
                                  (_%K192881%_ _%body192906%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K192881%_ _%body192906%_ '()))
                                   _%current-phi192878%_
                                   (gx#current-expander-phi))))))
                        (_%$%E192885192894%_)))))
            (_%$%E192884192911%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx192529%_ _%internal-expand?192530%_)
        (letrec ((_%expand1192532%_
                  (lambda (_%hd192847%_ _%K192848%_ _%rest192849%_ _%r192850%_)
                    (if (gx#core-bound-module? _%hd192847%_)
                        (_%import1192533%_
                         (gx#syntax-local-e__0 _%hd192847%_)
                         _%K192848%_
                         _%rest192849%_
                         _%r192850%_)
                        (if (gx#core-library-module-path? _%hd192847%_)
                            (_%import1192533%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd192847%_))
                             _%K192848%_
                             _%rest192849%_
                             _%r192850%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd192847%_)
                                (_%import1192533%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd192847%_))
                                 _%K192848%_
                                 _%rest192849%_
                                 _%r192850%_)
                                (let ((_%e192856%_ (gx#stx-e _%hd192847%_)))
                                  (if (pair? _%e192856%_)
                                      (let ((_%$e192859%_
                                             (gx#stx-e (##car _%e192856%_))))
                                        (if (eq? 'spec: _%$e192859%_)
                                            (_%import-spec192536%_
                                             _%hd192847%_
                                             _%K192848%_
                                             _%rest192849%_
                                             _%r192850%_)
                                            (if (eq? 'in: _%$e192859%_)
                                                (_%import-submodule192534%_
                                                 _%hd192847%_
                                                 _%K192848%_
                                                 _%rest192849%_
                                                 _%r192850%_)
                                                (if (eq? 'runtime:
                                                         _%$e192859%_)
                                                    (_%import-runtime192535%_
                                                     _%hd192847%_
                                                     _%K192848%_
                                                     _%rest192849%_
                                                     _%r192850%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx192529%_
                                                     _%hd192847%_)))))
                                      (if (string? _%e192856%_)
                                          (_%import1192533%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd192847%_
                                             (gx#stx-source _%stx192529%_)))
                                           _%K192848%_
                                           _%rest192849%_
                                           _%r192850%_)
                                          (if (##structure-instance-of?
                                               _%e192856%_
                                               'gx#module-context::t)
                                              (_%K192848%_
                                               _%rest192849%_
                                               (cons _%e192856%_ _%r192850%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx192529%_
                                               _%hd192847%_))))))))))
                 (_%import1192533%_
                  (lambda (_%ctx192836%_
                           _%K192837%_
                           _%rest192838%_
                           _%r192839%_)
                    (let ((_%dphi192841%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K192837%_
                       _%rest192838%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx192836%_
                              _%dphi192841%_
                              (map (lambda (_%$%g192842192844%_)
                                     (gx#core-module-export->import__%
                                      _%$%g192842192844%_
                                      '#f
                                      _%dphi192841%_))
                                   (##unchecked-structure-ref
                                    _%ctx192836%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r192839%_)))))
                 (_%import-submodule192534%_
                  (lambda (_%hd192803%_ _%K192804%_ _%rest192805%_ _%r192806%_)
                    (let* ((_%$%e192807192814%_ _%hd192803%_)
                           (_%$%E192809192818%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192807192814%_)))
                           (_%$%E192808192832%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192807192814%_)
                                  (let ((_%$%e192810192822%_
                                         (gx#syntax-e _%$%e192807192814%_)))
                                    (let ((_%$%hd192811192825%_
                                           (##car _%$%e192810192822%_))
                                          (_%$%tl192812192827%_
                                           (##cdr _%$%e192810192822%_)))
                                      (let ((_%spath192830%_
                                             _%$%tl192812192827%_))
                                        (_%import1192533%_
                                         (_%import-spec-source192537%_
                                          _%spath192830%_)
                                         _%K192804%_
                                         _%rest192805%_
                                         _%r192806%_))))
                                  (_%$%E192809192818%_)))))
                      (_%$%E192808192832%_))))
                 (_%import-runtime192535%_
                  (lambda (_%hd192770%_ _%K192771%_ _%rest192772%_ _%r192773%_)
                    (let* ((_%$%e192774192781%_ _%hd192770%_)
                           (_%$%E192776192785%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192774192781%_)))
                           (_%$%E192775192799%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192774192781%_)
                                  (let ((_%$%e192777192789%_
                                         (gx#syntax-e _%$%e192774192781%_)))
                                    (let ((_%$%hd192778192792%_
                                           (##car _%$%e192777192789%_))
                                          (_%$%tl192779192794%_
                                           (##cdr _%$%e192777192789%_)))
                                      (let ((_%spath192797%_
                                             _%$%tl192779192794%_))
                                        (_%K192771%_
                                         _%rest192772%_
                                         (cons (_%import-spec-source192537%_
                                                _%spath192797%_)
                                               _%r192773%_)))))
                                  (_%$%E192776192785%_)))))
                      (_%$%E192775192799%_))))
                 (_%import-spec192536%_
                  (lambda (_%hd192608%_ _%K192609%_ _%rest192610%_ _%r192611%_)
                    (let* ((_%$%e192612192629%_ _%hd192608%_)
                           (_%$%E192621192633%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e192612192629%_)))
                           (_%$%E192614192744%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192612192629%_)
                                  (let ((_%$%e192622192637%_
                                         (gx#syntax-e _%$%e192612192629%_)))
                                    (let ((_%$%hd192623192640%_
                                           (##car _%$%e192622192637%_))
                                          (_%$%tl192624192642%_
                                           (##cdr _%$%e192622192637%_)))
                                      (if (gx#stx-pair? _%$%tl192624192642%_)
                                          (let ((_%$%e192625192645%_
                                                 (gx#syntax-e
                                                  _%$%tl192624192642%_)))
                                            (let ((_%$%hd192626192648%_
                                                   (##car _%$%e192625192645%_))
                                                  (_%$%tl192627192650%_
                                                   (##cdr _%$%e192625192645%_)))
                                              (let* ((_%path192653%_
                                                      _%$%hd192626192648%_)
                                                     (_%specs192655%_
                                                      _%$%tl192627192650%_))
                                                (let ((_%src-ctx192657%_
                                                       (_%import-spec-source192537%_
                                                        _%path192653%_))
                                                      (_%exports192658%_
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
                                                      (_%specs192659%_
                                                       (gx#syntax->list
                                                        _%specs192655%_)))
                                                  (for-each
                                                   (lambda (_%out192661%_)
                                                     (__hash-put!
                                                      _%exports192658%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out192661%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out192661%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out192661%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx192657%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K192609%_
                                                   _%rest192610%_
                                                   (foldl__0
                                                    (lambda (_%spec192663%_
                                                             _%r192664%_)
                                                      (let* ((_%$%e192665192681%_
                                                              _%spec192663%_)
                                                             (_%$%E192667192685%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e192665192681%_)))
                     (_%$%E192666192740%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e192665192681%_)
                            (let ((_%$%e192668192689%_
                                   (gx#syntax-e _%$%e192665192681%_)))
                              (let ((_%$%hd192669192692%_
                                     (##car _%$%e192668192689%_))
                                    (_%$%tl192670192694%_
                                     (##cdr _%$%e192668192689%_)))
                                (let ((_%phi192697%_ _%$%hd192669192692%_))
                                  (if (gx#stx-pair? _%$%tl192670192694%_)
                                      (let ((_%$%e192671192699%_
                                             (gx#syntax-e
                                              _%$%tl192670192694%_)))
                                        (let ((_%$%hd192672192702%_
                                               (##car _%$%e192671192699%_))
                                              (_%$%tl192673192704%_
                                               (##cdr _%$%e192671192699%_)))
                                          (let ((_%name192707%_
                                                 _%$%hd192672192702%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl192673192704%_)
                                                (let ((_%$%e192674192709%_
                                                       (gx#syntax-e
                                                        _%$%tl192673192704%_)))
                                                  (let ((_%$%hd192675192712%_
                                                         (##car _%$%e192674192709%_))
                                                        (_%$%tl192676192714%_
                                                         (##cdr _%$%e192674192709%_)))
                                                    (let ((_%src-phi192717%_
                                                           _%$%hd192675192712%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl192676192714%_)
                                                          (let ((_%$%e192677192719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl192676192714%_)))
                    (let ((_%$%hd192678192722%_ (##car _%$%e192677192719%_))
                          (_%$%tl192679192724%_ (##cdr _%$%e192677192719%_)))
                      (let ((_%src-name192727%_ _%$%hd192678192722%_))
                        (if (gx#stx-null? _%$%tl192679192724%_)
                            (if (and (gx#stx-fixnum? _%src-phi192717%_)
                                     (gx#identifier? _%src-name192727%_)
                                     (gx#stx-fixnum? _%phi192697%_)
                                     (gx#identifier? _%name192707%_))
                                (let ((_%src-phi192729%_
                                       (gx#stx-e _%src-phi192717%_))
                                      (_%src-name192730%_
                                       (gx#core-identifier-key
                                        _%src-name192727%_))
                                      (_%phi192731%_ (gx#stx-e _%phi192697%_))
                                      (_%name192732%_
                                       (gx#core-identifier-key
                                        _%name192707%_)))
                                  (let ((_%$e192734%_
                                         (__hash-get
                                          _%exports192658%_
                                          (cons _%src-phi192729%_
                                                _%src-name192730%_))))
                                    (if _%$e192734%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e192734%_
                                               _%name192732%_
                                               (fx- _%phi192731%_
                                                    _%src-phi192729%_))
                                              _%r192664%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx192529%_
                                         _%hd192608%_))))
                                (_%$%E192667192685%_))
                            (_%$%E192667192685%_)))))
                  (_%$%E192667192685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E192667192685%_)))))
                                      (_%$%E192667192685%_)))))
                            (_%$%E192667192685%_)))))
                (_%$%E192666192740%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r192611%_
                                                    _%specs192659%_))))))
                                          (_%$%E192621192633%_))))
                                  (_%$%E192621192633%_))))
                           (_%$%E192613192766%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e192612192629%_)
                                  (let ((_%$%e192615192748%_
                                         (gx#syntax-e _%$%e192612192629%_)))
                                    (let ((_%$%hd192616192751%_
                                           (##car _%$%e192615192748%_))
                                          (_%$%tl192617192753%_
                                           (##cdr _%$%e192615192748%_)))
                                      (if (gx#stx-pair? _%$%tl192617192753%_)
                                          (let ((_%$%e192618192756%_
                                                 (gx#syntax-e
                                                  _%$%tl192617192753%_)))
                                            (let ((_%$%hd192619192759%_
                                                   (##car _%$%e192618192756%_))
                                                  (_%$%tl192620192761%_
                                                   (##cdr _%$%e192618192756%_)))
                                              (let ((_%path192764%_
                                                     _%$%hd192619192759%_))
                                                (if (gx#stx-null?
                                                     _%$%tl192620192761%_)
                                                    (_%K192609%_
                                                     _%rest192610%_
                                                     (cons (_%import-spec-source192537%_
                                                            _%path192764%_)
                                                           _%r192611%_))
                                                    (_%$%E192614192744%_)))))
                                          (_%$%E192614192744%_))))
                                  (_%$%E192614192744%_)))))
                      (_%$%E192613192766%_))))
                 (_%import-spec-source192537%_
                  (lambda (_%spath192606%_)
                    (gx#core-import-nested-module
                     _%spath192606%_
                     _%stx192529%_)))
                 (_%import!192538%_
                  (lambda (_%rbody192551%_)
                    (letrec* ((_%current-ctx192553%_
                               (gx#current-expander-context))
                              (_%deps192554%_ (make-hash-table-eq))
                              (_%bind!192555%_
                               (lambda (_%hd192604%_)
                                 (gx#core-bind-import!__1
                                  _%hd192604%_
                                  _%current-ctx192553%_))))
                      (let _%lp192557%_ ((_%rest192559%_ _%rbody192551%_)
                                         (_%body192560%_ '()))
                        (let* ((_%$%rest192561192569%_ _%rest192559%_)
                               (_%$%else192563192580%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx192553%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx192553%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx192553%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body192560%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx192577%_ _%_192578%_)
                                     (gx#eval-module _%ctx192577%_))
                                   _%deps192554%_)
                                  _%body192560%_))
                               (_%$%K192565192592%_
                                (lambda (_%rest192583%_ _%hd192584%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd192584%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!192555%_ _%hd192584%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd192584%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd192584%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps192554%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd192584%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd192584%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!192555%_
                                             (##unchecked-structure-ref
                                              _%hd192584%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd192584%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps192554%_
                                                 (##unchecked-structure-ref
                                                  _%hd192584%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e192588%_
                                                 (##structure-instance-of?
                                                  _%hd192584%_
                                                  'gx#module-context::t)))
                                            (if _%$e192588%_
                                                _%$e192588%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx192529%_
                                                 _%hd192584%_)))))
                                  (_%lp192557%_
                                   _%rest192583%_
                                   (cons _%hd192584%_ _%body192560%_)))))
                          (if (pair? _%$%rest192561192569%_)
                              (let ((_%$%hd192566192595%_
                                     (##car _%$%rest192561192569%_))
                                    (_%$%tl192567192597%_
                                     (##cdr _%$%rest192561192569%_)))
                                (let* ((_%hd192600%_ _%$%hd192566192595%_)
                                       (_%rest192602%_ _%$%tl192567192597%_))
                                  (_%$%K192565192592%_
                                   _%rest192602%_
                                   _%hd192600%_)))
                              (_%$%else192563192580%_)))))))
                 (_%expanded-import?192539%_
                  (lambda (_%e192543%_)
                    (let ((_%$e192545%_
                           (##structure-direct-instance-of?
                            _%e192543%_
                            'gx#import-set::t)))
                      (if _%$e192545%_
                          _%$e192545%_
                          (let ((_%$e192548%_
                                 (##structure-direct-instance-of?
                                  _%e192543%_
                                  'gx#module-import::t)))
                            (if _%$e192548%_
                                _%$e192548%_
                                (##structure-instance-of?
                                 _%e192543%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody192541%_
                 (gx#core-expand-import/export
                  _%stx192529%_
                  _%expanded-import?192539%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1192532%_)))
            (if _%internal-expand?192530%_
                (reverse _%rbody192541%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!192538%_ _%rbody192541%_))
                 (gx#stx-source _%stx192529%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx192868%_)
        (let ((_%internal-expand?192870%_ '#f))
          (gx#core-expand-import%__%
           _%stx192868%_
           _%internal-expand?192870%_))))
    (define gx#core-expand-import%
      (lambda _g195626_
        (let ((_g195627_ (##length _g195626_)))
          (cond ((##fx= _g195627_ 1)
                 (apply gx#core-expand-import%__0 _g195626_))
                ((##fx= _g195627_ 2)
                 (apply gx#core-expand-import%__% _g195626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g195626_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath192456%_ _%where192457%_)
        (let* ((_%$%e192458192465%_ _%spath192456%_)
               (_%$%E192460192469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192458192465%_)))
               (_%$%E192459192524%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192458192465%_)
                      (let ((_%$%e192461192473%_
                             (gx#syntax-e _%$%e192458192465%_)))
                        (let ((_%$%hd192462192476%_
                               (##car _%$%e192461192473%_))
                              (_%$%tl192463192478%_
                               (##cdr _%$%e192461192473%_)))
                          (let* ((_%origin192481%_ _%$%hd192462192476%_)
                                 (_%sub192483%_ _%$%tl192463192478%_)
                                 (_%origin-ctx192485%_
                                  (if (gx#stx-false? _%origin192481%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin192481%_))))
                            (let _%lp192487%_ ((_%rest192489%_ _%sub192483%_)
                                               (_%ctx192490%_
                                                _%origin-ctx192485%_))
                              (let* ((_%$%e192491192498%_ _%rest192489%_)
                                     (_%$%E192493192502%_
                                      (lambda () _%ctx192490%_))
                                     (_%$%E192492192520%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e192491192498%_)
                                            (let ((_%$%e192494192506%_
                                                   (gx#syntax-e
                                                    _%$%e192491192498%_)))
                                              (let ((_%$%hd192495192509%_
                                                     (##car _%$%e192494192506%_))
                                                    (_%$%tl192496192511%_
                                                     (##cdr _%$%e192494192506%_)))
                                                (let* ((_%id192514%_
                                                        _%$%hd192495192509%_)
                                                       (_%rest192516%_
                                                        _%$%tl192496192511%_)
                                                       (_%bind192518%_
                                                        (gx#resolve-identifier__%
                                                         _%id192514%_
                                                         '0
                                                         _%ctx192490%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind192518%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind192518%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where192457%_
                                                       _%spath192456%_
                                                       _%id192514%_))
                                                  (_%lp192487%_
                                                   _%rest192516%_
                                                   (##unchecked-structure-ref
                                                    _%bind192518%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E192493192502%_)))))
                                (_%$%E192492192520%_))))))
                      (_%$%E192460192469%_)))))
          (_%$%E192459192524%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd192454%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd192454%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx191949%_ _%internal-expand?191950%_)
        (letrec* ((_%make-export__195554195555%_
                   (lambda (_%bind192402%_
                            _%phi192403%_
                            _%ctx192404%_
                            _%name192405%_)
                     (let* ((_%key192407%_
                             (##unchecked-structure-ref
                              _%bind192402%_
                              '2
                              '#f
                              '#f))
                            (_%export-key192409%_
                             (if _%name192405%_
                                 (gx#core-identifier-key _%name192405%_)
                                 _%key192407%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx192404%_
                        _%key192407%_
                        _%phi192403%_
                        _%export-key192409%_
                        (let ((_%$e192412%_
                               (##structure-instance-of?
                                _%bind192402%_
                                'gx#extern-binding::t)))
                          (if _%$e192412%_
                              _%$e192412%_
                              (##structure-direct-instance-of?
                               _%bind192402%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__195556195559%_
                   (lambda (_%bind192418%_)
                     (let* ((_%phi192420%_ (gx#current-export-expander-phi))
                            (_%ctx192422%_ (gx#current-expander-context))
                            (_%name192424%_ '#f))
                       (_%make-export__195554195555%_
                        _%bind192418%_
                        _%phi192420%_
                        _%ctx192422%_
                        _%name192424%_))))
                  (_%make-export__1__195557195560%_
                   (lambda (_%bind192426%_ _%phi192427%_)
                     (let* ((_%ctx192429%_ (gx#current-expander-context))
                            (_%name192431%_ '#f))
                       (_%make-export__195554195555%_
                        _%bind192426%_
                        _%phi192427%_
                        _%ctx192429%_
                        _%name192431%_))))
                  (_%make-export__2__195558195561%_
                   (lambda (_%bind192433%_ _%phi192434%_ _%ctx192435%_)
                     (let ((_%name192437%_ '#f))
                       (_%make-export__195554195555%_
                        _%bind192433%_
                        _%phi192434%_
                        _%ctx192435%_
                        _%name192437%_))))
                  (_%make-export191952%_
                   (lambda _g195628_
                     (let ((_g195629_ (##length _g195628_)))
                       (cond ((##fx= _g195629_ 1)
                              (apply _%make-export__0__195556195559%_
                                     _g195628_))
                             ((##fx= _g195629_ 2)
                              (apply _%make-export__1__195557195560%_
                                     _g195628_))
                             ((##fx= _g195629_ 3)
                              (apply _%make-export__2__195558195561%_
                                     _g195628_))
                             ((##fx= _g195629_ 4)
                              (apply _%make-export__195554195555%_ _g195628_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g195628_))))))
                  (_%expand1191953%_
                   (lambda (_%hd192107%_
                            _%K192108%_
                            _%rest192109%_
                            _%r192110%_)
                     (let* ((_%$%e192111192143%_ _%hd192107%_)
                            (_%$%E192138192147%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx191949%_
                                _%hd192107%_)))
                            (_%$%E192128192231%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192111192143%_)
                                   (let ((_%$%e192139192151%_
                                          (gx#syntax-e _%$%e192111192143%_)))
                                     (let ((_%$%hd192140192154%_
                                            (##car _%$%e192139192151%_))
                                           (_%$%tl192141192156%_
                                            (##cdr _%$%e192139192151%_)))
                                       (if (eq? (gx#stx-e _%$%hd192140192154%_)
                                                'import:)
                                           (let ((_%in192159%_
                                                  _%$%tl192141192156%_))
                                             (if (gx#stx-list? _%in192159%_)
                                                 (let _%lp192161%_ ((_%in-rest192163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in192159%_)
                            (_%r192164%_ _%r192110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e192165192172%_
                                                           _%in-rest192163%_)
                                                          (_%$%E192167192176%_
                                                           (lambda ()
                                                             (_%K192108%_
                                                              _%rest192109%_
                                                              _%r192164%_)))
                                                          (_%$%E192166192227%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e192165192172%_)
                         (let ((_%$%e192168192180%_
                                (gx#syntax-e _%$%e192165192172%_)))
                           (let ((_%$%hd192169192183%_
                                  (##car _%$%e192168192180%_))
                                 (_%$%tl192170192185%_
                                  (##cdr _%$%e192168192180%_)))
                             (let* ((_%hd192188%_ _%$%hd192169192183%_)
                                    (_%in-rest192190%_ _%$%tl192170192185%_)
                                    (_%src192225%_
                                     (if (gx#core-bound-module? _%hd192188%_)
                                         (gx#syntax-local-e__0 _%hd192188%_)
                                         (if (gx#core-library-module-path?
                                              _%hd192188%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd192188%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd192188%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd192188%_))
                                                 (if (gx#stx-string?
                                                      _%hd192188%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd192188%_
                                                       (gx#stx-source
                                                        _%stx191949%_)))
                                                     (let* ((_%$%e192196192203%_
                                                             _%hd192188%_)
                                                            (_%$%E192198192207%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx191949%_
                                                                _%hd192188%_)))
                                                            (_%$%E192197192221%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e192196192203%_)
                           (let ((_%$%e192199192211%_
                                  (gx#syntax-e _%$%e192196192203%_)))
                             (let ((_%$%hd192200192214%_
                                    (##car _%$%e192199192211%_))
                                   (_%$%tl192201192216%_
                                    (##cdr _%$%e192199192211%_)))
                               (if (eq? (gx#stx-e _%$%hd192200192214%_) 'in:)
                                   (let ((_%spath192219%_
                                          _%$%tl192201192216%_))
                                     (gx#core-import-nested-module
                                      _%spath192219%_
                                      _%stx191949%_))
                                   (_%$%E192198192207%_))))
                           (_%$%E192198192207%_)))))
               (_%$%E192197192221%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp192161%_
                                _%in-rest192190%_
                                (_%export-imports191954%_
                                 _%src192225%_
                                 _%r192164%_)))))
                         (_%$%E192167192176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E192166192227%_)))
                                                 (_%$%E192138192147%_)))
                                           (_%$%E192138192147%_))))
                                   (_%$%E192138192147%_))))
                            (_%$%E192115192271%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192111192143%_)
                                   (let ((_%$%e192129192235%_
                                          (gx#syntax-e _%$%e192111192143%_)))
                                     (let ((_%$%hd192130192238%_
                                            (##car _%$%e192129192235%_))
                                           (_%$%tl192131192240%_
                                            (##cdr _%$%e192129192235%_)))
                                       (if (eq? (gx#stx-e _%$%hd192130192238%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl192131192240%_)
                                               (let ((_%$%e192132192243%_
                                                      (gx#syntax-e
                                                       _%$%tl192131192240%_)))
                                                 (let ((_%$%hd192133192246%_
                                                        (##car _%$%e192132192243%_))
                                                       (_%$%tl192134192248%_
                                                        (##cdr _%$%e192132192243%_)))
                                                   (let ((_%id192251%_
                                                          _%$%hd192133192246%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl192134192248%_)
                                                         (let ((_%$%e192135192253%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl192134192248%_)))
                   (let ((_%$%hd192136192256%_ (##car _%$%e192135192253%_))
                         (_%$%tl192137192258%_ (##cdr _%$%e192135192253%_)))
                     (let ((_%name192261%_ _%$%hd192136192256%_))
                       (if (gx#stx-null? _%$%tl192137192258%_)
                           (let* ((_%phi192263%_
                                   (gx#current-export-expander-phi))
                                  (_%$e192265%_
                                   (gx#core-resolve-identifier__1
                                    _%id192251%_
                                    _%phi192263%_)))
                             (if _%$e192265%_
                                 (_%K192108%_
                                  _%rest192109%_
                                  (cons (_%make-export__195554195555%_
                                         _%$e192265%_
                                         _%phi192263%_
                                         (gx#current-expander-context)
                                         _%name192261%_)
                                        _%r192110%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx191949%_
                                  _%hd192107%_
                                  _%id192251%_)))
                           (_%$%E192128192231%_)))))
                 (_%$%E192128192231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E192128192231%_))
                                           (_%$%E192128192231%_))))
                                   (_%$%E192128192231%_))))
                            (_%$%E192114192321%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e192111192143%_)
                                   (let ((_%$%e192116192275%_
                                          (gx#syntax-e _%$%e192111192143%_)))
                                     (let ((_%$%hd192117192278%_
                                            (##car _%$%e192116192275%_))
                                           (_%$%tl192118192280%_
                                            (##cdr _%$%e192116192275%_)))
                                       (if (eq? (gx#stx-e _%$%hd192117192278%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl192118192280%_)
                                               (let ((_%$%e192119192283%_
                                                      (gx#syntax-e
                                                       _%$%tl192118192280%_)))
                                                 (let ((_%$%hd192120192286%_
                                                        (##car _%$%e192119192283%_))
                                                       (_%$%tl192121192288%_
                                                        (##cdr _%$%e192119192283%_)))
                                                   (let ((_%phi192291%_
                                                          _%$%hd192120192286%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl192121192288%_)
                                                         (let ((_%$%e192122192293%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl192121192288%_)))
                   (let ((_%$%hd192123192296%_ (##car _%$%e192122192293%_))
                         (_%$%tl192124192298%_ (##cdr _%$%e192122192293%_)))
                     (let ((_%id192301%_ _%$%hd192123192296%_))
                       (if (gx#stx-pair? _%$%tl192124192298%_)
                           (let ((_%$%e192125192303%_
                                  (gx#syntax-e _%$%tl192124192298%_)))
                             (let ((_%$%hd192126192306%_
                                    (##car _%$%e192125192303%_))
                                   (_%$%tl192127192308%_
                                    (##cdr _%$%e192125192303%_)))
                               (let ((_%name192311%_ _%$%hd192126192306%_))
                                 (if (gx#stx-null? _%$%tl192127192308%_)
                                     (if (and (gx#stx-fixnum? _%phi192291%_)
                                              (gx#identifier? _%id192301%_)
                                              (gx#identifier? _%name192311%_))
                                         (let* ((_%phi192313%_
                                                 (gx#stx-e _%phi192291%_))
                                                (_%$e192315%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id192301%_
                                                  _%phi192313%_)))
                                           (if _%$e192315%_
                                               (_%K192108%_
                                                _%rest192109%_
                                                (cons (_%make-export__195554195555%_
                                                       _%$e192315%_
                                                       _%phi192313%_
                                                       (gx#current-expander-context)
                                                       _%name192311%_)
                                                      _%r192110%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx191949%_
                                                _%hd192107%_
                                                _%id192301%_)))
                                         (_%$%E192115192271%_))
                                     (_%$%E192115192271%_)))))
                           (_%$%E192115192271%_)))))
                 (_%$%E192115192271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E192115192271%_))
                                           (_%$%E192115192271%_))))
                                   (_%$%E192115192271%_))))
                            (_%$%E192113192333%_
                             (lambda ()
                               (let ((_%id192325%_ _%$%e192111192143%_))
                                 (if (gx#identifier? _%id192325%_)
                                     (let ((_%$e192327%_
                                            (gx#core-resolve-identifier__1
                                             _%id192325%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e192327%_
                                           (_%K192108%_
                                            _%rest192109%_
                                            (cons (_%make-export__0__195556195559%_
                                                   _%$e192327%_)
                                                  _%r192110%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx191949%_
                                            _%hd192107%_)))
                                     (_%$%E192114192321%_)))))
                            (_%$%E192112192397%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e192111192143%_) '#t)
                                   (let* ((_%current-ctx192337%_
                                           (gx#current-expander-context))
                                          (_%current-phi192339%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx192341%_
                                           (gx#core-context-shift
                                            _%current-ctx192337%_
                                            _%current-phi192339%_))
                                          (_%phi-bind192343%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx192341%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp192346%_ ((_%bind-rest192348%_
                                                         _%phi-bind192343%_)
                                                        (_%set192349%_ '()))
                                       (let* ((_%$%bind-rest192350192360%_
                                               _%bind-rest192348%_)
                                              (_%$%else192352192368%_
                                               (lambda ()
                                                 (_%K192108%_
                                                  _%rest192109%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi192339%_
                                                         _%set192349%_)
                                                        _%r192110%_))))
                                              (_%$%K192354192378%_
                                               (lambda (_%bind-rest192371%_
                                                        _%bind192372%_
                                                        _%key192373%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind192372%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind192372%_))
                                                     (_%lp192346%_
                                                      _%bind-rest192371%_
                                                      _%set192349%_)
                                                     (_%lp192346%_
                                                      _%bind-rest192371%_
                                                      (cons (_%make-export__2__195558195561%_
                                                             _%bind192372%_
                                                             _%current-phi192339%_
                                                             _%current-ctx192337%_)
                                                            _%set192349%_))))))
                                         (if (pair? _%$%bind-rest192350192360%_)
                                             (let ((_%$%hd192355192381%_
                                                    (##car _%$%bind-rest192350192360%_))
                                                   (_%$%tl192356192383%_
                                                    (##cdr _%$%bind-rest192350192360%_)))
                                               (if (pair? _%$%hd192355192381%_)
                                                   (let ((_%$%hd192357192386%_
                                                          (##car _%$%hd192355192381%_))
                                                         (_%$%tl192358192388%_
                                                          (##cdr _%$%hd192355192381%_)))
                                                     (let* ((_%key192391%_
                                                             _%$%hd192357192386%_)
                                                            (_%bind192393%_
                                                             _%$%tl192358192388%_)
                                                            (_%bind-rest192395%_
                                                             _%$%tl192356192383%_))
                                                       (_%$%K192354192378%_
                                                        _%bind-rest192395%_
                                                        _%bind192393%_
                                                        _%key192391%_)))
                                                   (_%$%else192352192368%_)))
                                             (_%$%else192352192368%_)))))
                                   (_%$%E192113192333%_)))))
                       (_%$%E192112192397%_))))
                  (_%export-imports191954%_
                   (lambda (_%src191984%_ _%r191985%_)
                     (letrec* ((_%current-ctx191987%_
                                (gx#current-expander-context))
                               (_%current-phi191988%_
                                (gx#current-export-expander-phi))
                               (_%import->export191989%_
                                (lambda (_%in192070%_)
                                  (let* ((_%$%in192071192079%_ _%in192070%_)
                                         (_%$%E192073192082%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in192071192079%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K192074192089%_
                                          (lambda (_%phi192085%_
                                                   _%key192086%_
                                                   _%out192087%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx191987%_
                                             _%key192086%_
                                             _%phi192085%_
                                             _%key192086%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in192071192079%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e192075192092%_
                                                (##unchecked-structure-ref
                                                 _%$%in192071192079%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out192095%_
                                                _%$%e192075192092%_)
                                               (_%$%e192076192097%_
                                                (##unchecked-structure-ref
                                                 _%$%in192071192079%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key192100%_
                                                _%$%e192076192097%_)
                                               (_%$%e192077192102%_
                                                (##unchecked-structure-ref
                                                 _%$%in192071192079%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi192105%_
                                                _%$%e192077192102%_))
                                          (_%$%K192074192089%_
                                           _%phi192105%_
                                           _%key192100%_
                                           _%out192095%_))
                                        (_%$%E192073192082%_)))))
                               (_%fold-e191990%_
                                (lambda (_%in191992%_ _%r191993%_)
                                  (let* ((_%$%in191994192008%_ _%in191992%_)
                                         (_%$%else191997192016%_
                                          (lambda () _%r191993%_)))
                                    (let ((_%$%K192003192052%_
                                           (lambda (_%phi192048%_
                                                    _%key192049%_
                                                    _%out192050%_)
                                             (if (and (fx= _%phi192048%_
                                                           _%current-phi191988%_)
                                                      (eq? _%src191984%_
                                                           (##unchecked-structure-ref
                                                            _%out192050%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export191989%_
                                                        _%in191992%_)
                                                       _%r191993%_)
                                                 _%r191993%_)))
                                          (_%$%K191999192027%_
                                           (lambda (_%imports192020%_
                                                    _%phi192021%_
                                                    _%ctx192022%_)
                                             (if (and (fx= _%phi192021%_
                                                           _%current-phi191988%_)
                                                      (eq? _%src191984%_
                                                           _%ctx192022%_))
                                                 (foldl__0
                                                  (lambda (_%in192024%_
                                                           _%r192025%_)
                                                    (cons (_%import->export191989%_
                                                           _%in192024%_)
                                                          _%r192025%_))
                                                  _%r191993%_
                                                  _%imports192020%_)
                                                 _%r191993%_))))
                                      (let ((_%$%try-match191996192045%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in191994192008%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e192000192030%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191994192008%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e192001192035%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191994192008%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e192002192040%_
                                                           (##unchecked-structure-ref
                                                            _%$%in191994192008%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx192033%_
                                                            _%$%e192000192030%_)
                                                           (_%phi192038%_
                                                            _%$%e192001192035%_)
                                                           (_%imports192043%_
                                                            _%$%e192002192040%_))
                                                       (_%$%K191999192027%_
                                                        _%imports192043%_
                                                        _%phi192038%_
                                                        _%ctx192033%_)))
                                                   (_%$%else191997192016%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in191994192008%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e192004192055%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191994192008%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e192005192060%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191994192008%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e192006192065%_
                                                    (##unchecked-structure-ref
                                                     _%$%in191994192008%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out192058%_
                                                     _%$%e192004192055%_)
                                                    (_%key192063%_
                                                     _%$%e192005192060%_)
                                                    (_%phi192068%_
                                                     _%$%e192006192065%_))
                                                (_%$%K192003192052%_
                                                 _%phi192068%_
                                                 _%key192063%_
                                                 _%out192058%_)))
                                            (_%$%try-match191996192045%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src191984%_
                              _%current-phi191988%_
                              (foldl__0
                               _%fold-e191990%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx191987%_
                                '8
                                '#f
                                '#f)))
                             _%r191985%_))))
                  (_%export!191955%_
                   (lambda (_%rbody191971%_)
                     (letrec* ((_%current-ctx191973%_
                                (gx#current-expander-context))
                               (_%fold-e191974%_
                                (lambda (_%out191978%_ _%r191979%_)
                                  (if (##structure-direct-instance-of?
                                       _%out191978%_
                                       'gx#module-export::t)
                                      (cons _%out191978%_ _%r191979%_)
                                      (if (##structure-direct-instance-of?
                                           _%out191978%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r191979%_
                                           (##unchecked-structure-ref
                                            _%out191978%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r191979%_)))))
                       (let ((_%body191976%_ (reverse _%rbody191971%_)))
                         (##unchecked-structure-set!
                          _%current-ctx191973%_
                          (foldl__0
                           _%fold-e191974%_
                           (##unchecked-structure-ref
                            _%current-ctx191973%_
                            '9
                            '#f
                            '#f)
                           _%body191976%_)
                          '9
                          '#f
                          '#f)
                         _%body191976%_))))
                  (_%expanded-export?191956%_
                   (lambda (_%e191966%_)
                     (let ((_%$e191968%_
                            (##structure-direct-instance-of?
                             _%e191966%_
                             'gx#module-export::t)))
                       (if _%$e191968%_
                           _%$e191968%_
                           (##structure-direct-instance-of?
                            _%e191966%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?191950%_)
              (let ((_%rbody191962%_
                     (gx#core-expand-import/export
                      _%stx191949%_
                      _%expanded-export?191956%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1191953%_)))
                (if _%internal-expand?191950%_
                    (reverse _%rbody191962%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!191955%_ _%rbody191962%_))
                     (gx#stx-source _%stx191949%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx191949%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx191949%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx192447%_)
        (let ((_%internal-expand?192449%_ '#f))
          (gx#core-expand-export%__%
           _%stx192447%_
           _%internal-expand?192449%_))))
    (define gx#core-expand-export%
      (lambda _g195630_
        (let ((_g195631_ (##length _g195630_)))
          (cond ((##fx= _g195631_ 1)
                 (apply gx#core-expand-export%__0 _g195630_))
                ((##fx= _g195631_ 2)
                 (apply gx#core-expand-export%__% _g195630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g195630_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd191946%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd191946%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx191916%_)
        (let* ((_%$%e191917191924%_ _%stx191916%_)
               (_%$%E191919191928%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191917191924%_)))
               (_%$%E191918191942%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191917191924%_)
                      (let ((_%$%e191920191932%_
                             (gx#syntax-e _%$%e191917191924%_)))
                        (let ((_%$%hd191921191935%_
                               (##car _%$%e191920191932%_))
                              (_%$%tl191922191937%_
                               (##cdr _%$%e191920191932%_)))
                          (let ((_%body191940%_ _%$%tl191922191937%_))
                            (if (gx#identifier-list? _%body191940%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body191940%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body191940%_))
                                   (gx#stx-source _%stx191916%_)))
                                (_%$%E191919191928%_)))))
                      (_%$%E191919191928%_)))))
          (_%$%E191918191942%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id191882%_ _%private?191883%_ _%phi191884%_ _%ctx191885%_)
        (gx#core-bind-syntax!__%
         _%id191882%_
         ((if _%private?191883%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id191882%_))
         _%private?191883%_
         _%phi191884%_
         _%ctx191885%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id191890%_)
        (let* ((_%private?191892%_ '#f)
               (_%phi191894%_ (gx#current-expander-phi))
               (_%ctx191896%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191890%_
           _%private?191892%_
           _%phi191894%_
           _%ctx191896%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id191898%_ _%private?191899%_)
        (let* ((_%phi191901%_ (gx#current-expander-phi))
               (_%ctx191903%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191898%_
           _%private?191899%_
           _%phi191901%_
           _%ctx191903%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id191905%_ _%private?191906%_ _%phi191907%_)
        (let ((_%ctx191909%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id191905%_
           _%private?191906%_
           _%phi191907%_
           _%ctx191909%_))))
    (define gx#core-bind-feature!
      (lambda _g195632_
        (let ((_g195633_ (##length _g195632_)))
          (cond ((##fx= _g195633_ 1)
                 (apply gx#core-bind-feature!__0 _g195632_))
                ((##fx= _g195633_ 2)
                 (apply gx#core-bind-feature!__1 _g195632_))
                ((##fx= _g195633_ 3)
                 (apply gx#core-bind-feature!__2 _g195632_))
                ((##fx= _g195633_ 4)
                 (apply gx#core-bind-feature!__% _g195632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g195632_))))))))
