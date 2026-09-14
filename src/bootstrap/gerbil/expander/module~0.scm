(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1789371530)
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
      (lambda _%$args197581%_
        (apply make-instance gx#module-import::t _%$args197581%_)))
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
      (lambda _%$args197578%_
        (apply make-instance gx#module-export::t _%$args197578%_)))
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
      (lambda _%$args197575%_
        (apply make-instance gx#import-set::t _%$args197575%_)))
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
      (lambda _%$args197572%_
        (apply make-instance gx#export-set::t _%$args197572%_)))
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
      (lambda _%$args197569%_
        (apply make-instance gx#import-expander::t _%$args197569%_)))
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
      (lambda _%$args197566%_
        (apply make-instance gx#export-expander::t _%$args197566%_)))
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
      (lambda _%$args197563%_
        (apply make-instance gx#import-export-expander::t _%$args197563%_)))
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
      (lambda (_%path197560%_ _%fun197561%_)
        (call-with-input-file
         (cons 'path: (cons _%path197560%_ gx#source-file-settings))
         _%fun197561%_)))
    (define gx#module-context:::init!
      (lambda (_%self197543%_
               _%id197544%_
               _%super197545%_
               _%ns197546%_
               _%path197547%_)
        (let ((_%self197550%_ _%self197543%_))
          (if (##fx< '11 (##structure-length _%self197550%_))
              (begin
                (##unchecked-structure-set!
                 _%self197550%_
                 _%id197544%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197550%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197550%_
                 _%super197545%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197550%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197550%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self197550%_
                 _%ns197546%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197550%_
                 _%path197547%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197550%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self197550%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self197550%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self197550%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197550%_
                     '11
                     (##structure-length _%self197550%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self197376%_ _%ctx197377%_ _%root197378%_)
        (let* ((_%self197381%_ _%self197376%_)
               (_%super197397%_
                (let ((_%$e197391%_ _%root197378%_))
                  (if _%$e197391%_
                      _%$e197391%_
                      (let ((_%$e197394%_ (gx#core-context-root__0)))
                        (if _%$e197394%_
                            _%$e197394%_
                            (let ((__obj197625
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor197626
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj197625
                                      ':init!)))
                                (if __constructor197626
                                    (__constructor197626 __obj197625)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj197625)))))))
          (if _%ctx197377%_
              (let ((_%id197400%_
                     (##structure-ref
                      _%ctx197377%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path197401%_
                     (##structure-ref
                      _%ctx197377%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in197402%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx197377%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e197403%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx197377%_)))))
                (if (##fx< '8 (##structure-length _%self197381%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self197381%_
                       _%id197400%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       (make-hash-table-eq 'size: (##length _%in197402%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       _%super197397%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       _%path197401%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       _%in197402%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197381%_
                       _%e197403%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self197381%_
                           '8
                           (##structure-length _%self197381%_)))
                (##for-each
                 (lambda (_%$%g197404197406%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g197404197406%_
                    _%self197381%_))
                 _%in197402%_))
              (if (##fx< '8 (##structure-length _%self197381%_))
                  (begin
                    (##unchecked-structure-set! _%self197381%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self197381%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self197381%_
                     _%super197397%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self197381%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self197381%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self197381%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self197381%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self197381%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self197381%_
                         '8
                         (##structure-length _%self197381%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self197412%_ _%ctx197413%_)
        (let ((_%root197415%_ '#f))
          (gx#prelude-context:::init!__%
           _%self197412%_
           _%ctx197413%_
           _%root197415%_))))
    (define gx#prelude-context:::init!
      (lambda _g197632_
        (let ((_g197633_ (##length _g197632_)))
          (cond ((##fx= _g197633_ 2)
                 (apply gx#prelude-context:::init!__0 _g197632_))
                ((##fx= _g197633_ 3)
                 (apply gx#prelude-context:::init!__% _g197632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g197632_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self197250%_ _%e197251%_)
        (if (##fx< '3 (##structure-length _%self197250%_))
            (begin
              (##unchecked-structure-set!
               _%self197250%_
               _%e197251%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self197250%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self197250%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self197250%_
                   '3
                   (##structure-length _%self197250%_)))))
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
      (lambda (_%$%g196876196879%_ _%$%g196877196881%_)
        (gx#core-apply-user-expander__%
         _%$%g196876196879%_
         _%$%g196877196881%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g196747196750%_ _%$%g196748196752%_)
        (gx#core-apply-user-expander__%
         _%$%g196747196750%_
         _%$%g196748196752%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx196618%_)
        (let* ((_%path196620%_
                (##structure-ref _%ctx196618%_ '7 gx#module-context::t '#f))
               (_%path196622%_
                (if (pair? _%path196620%_)
                    (##last _%path196620%_)
                    _%path196620%_)))
          (if (string? _%path196622%_) _%path196622%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path196594%_ _%reload?196595%_ _%eval?196596%_)
        (let ((_%ctx196598%_
               ((gx#current-expander-module-import)
                _%path196594%_
                _%reload?196595%_)))
          (if (and _%ctx196598%_ _%eval?196596%_)
              (gx#eval-module _%ctx196598%_)
              '#!void)
          _%ctx196598%_)))
    (define gx#import-module__0
      (lambda (_%path196603%_)
        (let* ((_%reload?196605%_ '#f) (_%eval?196607%_ '#f))
          (gx#import-module__%
           _%path196603%_
           _%reload?196605%_
           _%eval?196607%_))))
    (define gx#import-module__1
      (lambda (_%path196609%_ _%reload?196610%_)
        (let ((_%eval?196612%_ '#f))
          (gx#import-module__%
           _%path196609%_
           _%reload?196610%_
           _%eval?196612%_))))
    (define gx#import-module
      (lambda _g197634_
        (let ((_g197635_ (##length _g197634_)))
          (cond ((##fx= _g197635_ 1) (apply gx#import-module__0 _g197634_))
                ((##fx= _g197635_ 2) (apply gx#import-module__1 _g197634_))
                ((##fx= _g197635_ 3) (apply gx#import-module__% _g197634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g197634_))))))
    (define gx#eval-module
      (lambda (_%mod196591%_)
        ((gx#current-expander-module-eval) _%mod196591%_)))
    (define gx#core-eval-module
      (lambda (_%obj196570%_)
        (letrec ((_%force-e196572%_
                  (lambda (_%getf196586%_ _%e196587%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf196586%_ _%e196587%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e196587%_))))
          (let _%recur196574%_ ((_%e196576%_ _%obj196570%_))
            (if (##structure-instance-of? _%e196576%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e196579%_
                         (gx#core-context-prelude__% _%e196576%_)))
                    (if _%$e196579%_ (_%recur196574%_ _%$e196579%_) '#!void))
                  (_%force-e196572%_ gx#module-context-e _%e196576%_))
                (if (##structure-instance-of?
                     _%e196576%_
                     'gx#prelude-context::t)
                    (_%force-e196572%_ gx#prelude-context-e _%e196576%_)
                    (if (gx#stx-string? _%e196576%_)
                        (_%recur196574%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e196576%_)))
                        (if (gx#core-library-module-path? _%e196576%_)
                            (_%recur196574%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e196576%_)))
                            (error '"cannot eval module" _%obj196570%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx196550%_)
        (let _%lp196552%_ ((_%e196554%_ _%ctx196550%_))
          (if (or (##structure-instance-of? _%e196554%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e196554%_ 'gx#local-context::t))
              (_%lp196552%_ (##unchecked-structure-ref _%e196554%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e196554%_ 'gx#prelude-context::t)
                  _%e196554%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx196566%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx196566%_))))
    (define gx#core-context-prelude
      (lambda _g197636_
        (let ((_g197637_ (##length _g197636_)))
          (cond ((##fx= _g197637_ 0)
                 (apply gx#core-context-prelude__0 _g197636_))
                ((##fx= _g197637_ 1)
                 (apply gx#core-context-prelude__% _g197636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g197636_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx196541%_)
        (let ((_%$e196543%_ (__hash-get gx#__module-registry _%ctx196541%_)))
          (if _%$e196543%_
              _%$e196543%_
              (let ((_%pre196547%_
                     (let ((__obj197627
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
                        __obj197627
                        _%ctx196541%_)
                       __obj197627)))
                (__hash-put! gx#__module-registry _%ctx196541%_ _%pre196547%_)
                _%pre196547%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath196409%_ _%reload?196410%_)
        (letrec ((_%import-source196412%_
                  (lambda (_%path196500%_)
                    (if (member _%path196500%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         (##append
                          (##member
                           _%path196500%_
                           (reverse (gx#current-expander-path)))
                          (cons _%path196500%_ '())))
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
                                      (let ((_g197638_
                                             (gx#core-read-module
                                              _%path196500%_)))
                                        (begin
                                          (let ((_g197639_
                                                 (if (##values? _g197638_)
                                                     (##values-length
                                                      _g197638_)
                                                     1)))
                                            (if (not (##fx= _g197639_ 4))
                                                (error "Context expects 4 values"
                                                       _g197639_)))
                                          (let ((_%pre196508%_
                                                 (##values-ref _g197638_ 0))
                                                (_%id196509%_
                                                 (##values-ref _g197638_ 1))
                                                (_%ns196510%_
                                                 (##values-ref _g197638_ 2))
                                                (_%body196511%_
                                                 (##values-ref _g197638_ 3)))
                                            (let* ((_%prelude196521%_
                                                    (if (##structure-instance-of?
                                                         _%pre196508%_
                                                         'gx#prelude-context::t)
                                                        _%pre196508%_
                                                        (if (##structure-instance-of?
                                                             _%pre196508%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre196508%_)
                                                            (if (string? _%pre196508%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre196508%_))
                        (if _%pre196508%_
                            (error '"cannot import module; unknown prelude"
                                   _%rpath196409%_
                                   _%pre196508%_)
                            (let ((_%$e196517%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e196517%_
                                  _%$e196517%_
                                  (let ((__obj197628
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
                                     __obj197628
                                     '#f)
                                    __obj197628))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx196523%_
                                                    (let ((__obj197629
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
                                                       __obj197629
                                                       _%id196509%_
                                                       _%prelude196521%_
                                                       _%ns196510%_
                                                       _%path196500%_)
                                                      __obj197629))
                                                   (_%body196525%_
                                                    (gx#core-expand-module-begin
                                                     _%body196511%_
                                                     _%ctx196523%_))
                                                   (_%body196527%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body196525%_)
                                                     _%path196500%_
                                                     _%ctx196523%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx196523%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body196527%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx196523%_
                                               _%body196527%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path196500%_
                                               _%ctx196523%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id196509%_
                                               _%ctx196523%_)
                                              _%ctx196523%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path196500%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule196413%_
                  (lambda (_%rpath196429%_)
                    (let* ((_%$%rpath196430196437%_ _%rpath196429%_)
                           (_%$%E196432196440%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath196430196437%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K196433196488%_
                            (lambda (_%refs196443%_ _%origin196444%_)
                              (let ((_%ctx196446%_
                                     (if _%origin196444%_
                                         (gx#core-import-module__%
                                          _%origin196444%_
                                          _%reload?196410%_)
                                         (gx#current-expander-context))))
                                (let _%lp196448%_ ((_%rest196450%_
                                                    _%refs196443%_)
                                                   (_%ctx196451%_
                                                    _%ctx196446%_))
                                  (let* ((_%$%rest196452196460%_
                                          _%rest196450%_)
                                         (_%$%else196454196468%_
                                          (lambda () _%ctx196451%_))
                                         (_%$%K196456196476%_
                                          (lambda (_%rest196471%_ _%id196472%_)
                                            (let ((_%bind196474%_
                                                   (gx#resolve-identifier__%
                                                    _%id196472%_
                                                    '0
                                                    _%ctx196451%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind196474%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind196474%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp196448%_
                                                   _%rest196471%_
                                                   (##unchecked-structure-ref
                                                    _%bind196474%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath196429%_
                                                         _%id196472%_
                                                         _%bind196474%_))))))
                                    (if (pair? _%$%rest196452196460%_)
                                        (let ((_%$%hd196457196479%_
                                               (##car _%$%rest196452196460%_))
                                              (_%$%tl196458196481%_
                                               (##cdr _%$%rest196452196460%_)))
                                          (let* ((_%id196484%_
                                                  _%$%hd196457196479%_)
                                                 (_%rest196486%_
                                                  _%$%tl196458196481%_))
                                            (_%$%K196456196476%_
                                             _%rest196486%_
                                             _%id196484%_)))
                                        (_%$%else196454196468%_))))))))
                      (if (pair? _%$%rpath196430196437%_)
                          (let ((_%$%hd196434196491%_
                                 (##car _%$%rpath196430196437%_))
                                (_%$%tl196435196493%_
                                 (##cdr _%$%rpath196430196437%_)))
                            (let* ((_%origin196496%_ _%$%hd196434196491%_)
                                   (_%refs196498%_ _%$%tl196435196493%_))
                              (_%$%K196433196488%_
                               _%refs196498%_
                               _%origin196496%_)))
                          (_%$%E196432196440%_))))))
          (let ((_%$e196415%_
                 (if _%reload?196410%_
                     '#f
                     (__hash-get gx#__module-registry _%rpath196409%_))))
            (if _%$e196415%_
                _%$e196415%_
                (if (list? _%rpath196409%_)
                    (_%import-submodule196413%_ _%rpath196409%_)
                    (if (gx#core-library-module-path? _%rpath196409%_)
                        (let ((_%ctx196420%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath196409%_)
                                _%reload?196410%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath196409%_
                           _%ctx196420%_)
                          _%ctx196420%_)
                        (let* ((_%npath196423%_
                                (path-normalize _%rpath196409%_))
                               (_%$e196425%_
                                (if _%reload?196410%_
                                    '#f
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath196423%_))))
                          (if _%$e196425%_
                              _%$e196425%_
                              (_%import-source196412%_
                               _%npath196423%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath196534%_)
        (let ((_%reload?196536%_ '#f))
          (gx#core-import-module__% _%rpath196534%_ _%reload?196536%_))))
    (define gx#core-import-module
      (lambda _g197640_
        (let ((_g197641_ (##length _g197640_)))
          (cond ((##fx= _g197641_ 1)
                 (apply gx#core-import-module__0 _g197640_))
                ((##fx= _g197641_ 2)
                 (apply gx#core-import-module__% _g197640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g197640_))))))
    (define gx#core-read-module
      (lambda (_%path196391%_)
        (__with-catch
         (lambda (_%exn196393%_)
           (if (datum-parsing-exception? _%exn196393%_)
               (let ((_%pos196395%_
                      (datum-parsing-exception-filepos _%exn196393%_)))
                 (if (= _%pos196395%_ '0)
                     (gx#core-read-module/lang _%path196391%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path196391%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g196397196399%_)
                            (display-exception__%
                             _%exn196393%_
                             _%$%g196397196399%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos196395%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos196395%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path196391%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g196402196404%_)
                      (display-exception__%
                       _%exn196393%_
                       _%$%g196402196404%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path196391%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path196243%_)
        (let _%lp196245%_ ((_%body196247%_
                            (read-syntax-from-file _%path196243%_))
                           (_%pre196248%_ '#f)
                           (_%ns196249%_ '#f)
                           (_%pkg196250%_ '#f))
          (let* ((_%$%e196251196275%_ _%body196247%_)
                 (_%$%E196267196301%_
                  (lambda ()
                    (let ((_g197642_
                           (if _%pkg196250%_
                               (values _%pre196248%_
                                       _%ns196249%_
                                       _%pkg196250%_)
                               (gx#core-read-module-package
                                _%path196243%_
                                _%pre196248%_
                                _%ns196249%_))))
                      (begin
                        (let ((_g197643_
                               (if (##values? _g197642_)
                                   (##values-length _g197642_)
                                   1)))
                          (if (not (##fx= _g197643_ 3))
                              (error "Context expects 3 values" _g197643_)))
                        (let ((_%pre196279%_ (##values-ref _g197642_ 0))
                              (_%ns196280%_ (##values-ref _g197642_ 1))
                              (_%pkg196281%_ (##values-ref _g197642_ 2)))
                          (let* ((_%prelude196287%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre196279%_)
                                      (gx#syntax-local-e__0 _%pre196279%_)
                                      (if (gx#core-library-module-path?
                                           _%pre196279%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre196279%_)
                                          (if (gx#stx-string? _%pre196279%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre196279%_
                                               _%path196243%_)
                                              (gx#stx-e _%pre196279%_)))))
                                 (_%path-id196289%_
                                  (gx#core-module-path->namespace
                                   _%path196243%_))
                                 (_%pkg-id196291%_
                                  (if _%pkg196281%_
                                      (##string-append
                                       _%pkg196281%_
                                       '"/"
                                       _%path-id196289%_)
                                      _%path-id196289%_))
                                 (_%module-id196293%_
                                  (##string->symbol _%pkg-id196291%_))
                                 (_%module-ns196298%_
                                  (if (eq? _%ns196280%_ '#!void)
                                      '#f
                                      (let ((_%$e196295%_ _%ns196280%_))
                                        (if _%$e196295%_
                                            _%$e196295%_
                                            _%pkg-id196291%_)))))
                            (values _%prelude196287%_
                                    _%module-id196293%_
                                    _%module-ns196298%_
                                    _%body196247%_)))))))
                 (_%$%E196260196333%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196251196275%_)
                        (let ((_%$%e196268196305%_
                               (gx#syntax-e _%$%e196251196275%_)))
                          (let ((_%$%hd196269196308%_
                                 (##car _%$%e196268196305%_))
                                (_%$%tl196270196310%_
                                 (##cdr _%$%e196268196305%_)))
                            (if (eq? (gx#stx-e _%$%hd196269196308%_) 'package:)
                                (if (gx#stx-pair? _%$%tl196270196310%_)
                                    (let ((_%$%e196271196313%_
                                           (gx#syntax-e _%$%tl196270196310%_)))
                                      (let ((_%$%hd196272196316%_
                                             (##car _%$%e196271196313%_))
                                            (_%$%tl196273196318%_
                                             (##cdr _%$%e196271196313%_)))
                                        (let* ((_%pkg196321%_
                                                _%$%hd196272196316%_)
                                               (_%rest196323%_
                                                _%$%tl196273196318%_)
                                               (_%pkg196331%_
                                                (if (gx#identifier?
                                                     _%pkg196321%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg196321%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg196321%_)
                                                            (gx#stx-false?
                                                             _%pkg196321%_))
                                                        (gx#stx-e
                                                         _%pkg196321%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg196321%_)))))
                                          (_%lp196245%_
                                           _%rest196323%_
                                           _%pre196248%_
                                           _%ns196249%_
                                           _%pkg196331%_))))
                                    (_%$%E196267196301%_))
                                (_%$%E196267196301%_))))
                        (_%$%E196267196301%_))))
                 (_%$%E196253196363%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196251196275%_)
                        (let ((_%$%e196261196337%_
                               (gx#syntax-e _%$%e196251196275%_)))
                          (let ((_%$%hd196262196340%_
                                 (##car _%$%e196261196337%_))
                                (_%$%tl196263196342%_
                                 (##cdr _%$%e196261196337%_)))
                            (if (eq? (gx#stx-e _%$%hd196262196340%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl196263196342%_)
                                    (let ((_%$%e196264196345%_
                                           (gx#syntax-e _%$%tl196263196342%_)))
                                      (let ((_%$%hd196265196348%_
                                             (##car _%$%e196264196345%_))
                                            (_%$%tl196266196350%_
                                             (##cdr _%$%e196264196345%_)))
                                        (let* ((_%ns196353%_
                                                _%$%hd196265196348%_)
                                               (_%rest196355%_
                                                _%$%tl196266196350%_)
                                               (_%ns196361%_
                                                (if (gx#identifier?
                                                     _%ns196353%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns196353%_))
                                                    (if (gx#stx-string?
                                                         _%ns196353%_)
                                                        (gx#stx-e _%ns196353%_)
                                                        (if (gx#stx-false?
                                                             _%ns196353%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns196353%_))))))
                                          (_%lp196245%_
                                           _%rest196355%_
                                           _%pre196248%_
                                           _%ns196361%_
                                           _%pkg196250%_))))
                                    (_%$%E196260196333%_))
                                (_%$%E196260196333%_))))
                        (_%$%E196260196333%_))))
                 (_%$%E196252196387%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196251196275%_)
                        (let ((_%$%e196254196367%_
                               (gx#syntax-e _%$%e196251196275%_)))
                          (let ((_%$%hd196255196370%_
                                 (##car _%$%e196254196367%_))
                                (_%$%tl196256196372%_
                                 (##cdr _%$%e196254196367%_)))
                            (if (eq? (gx#stx-e _%$%hd196255196370%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl196256196372%_)
                                    (let ((_%$%e196257196375%_
                                           (gx#syntax-e _%$%tl196256196372%_)))
                                      (let ((_%$%hd196258196378%_
                                             (##car _%$%e196257196375%_))
                                            (_%$%tl196259196380%_
                                             (##cdr _%$%e196257196375%_)))
                                        (let* ((_%prelude196383%_
                                                _%$%hd196258196378%_)
                                               (_%rest196385%_
                                                _%$%tl196259196380%_))
                                          (_%lp196245%_
                                           _%rest196385%_
                                           _%prelude196383%_
                                           _%ns196249%_
                                           _%pkg196250%_))))
                                    (_%$%E196253196363%_))
                                (_%$%E196253196363%_))))
                        (_%$%E196253196363%_)))))
            (_%$%E196252196387%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path196064%_)
        (letrec ((_%default-read-module-body196066%_
                  (lambda (_%inp196235%_)
                    (let _%lp196237%_ ((_%body196239%_ '()))
                      (let ((_%next196241%_ (read-syntax__% _%inp196235%_)))
                        (if (eof-object? _%next196241%_)
                            (reverse _%body196239%_)
                            (_%lp196237%_
                             (cons _%next196241%_ _%body196239%_)))))))
                 (_%read-body196067%_
                  (lambda (_%inp196152%_
                           _%pre196153%_
                           _%ns196154%_
                           _%pkg196155%_
                           _%args196156%_)
                    (let ((_g197644_
                           (if _%pkg196155%_
                               (values _%pre196153%_
                                       _%ns196154%_
                                       _%pkg196155%_)
                               (gx#core-read-module-package
                                _%path196064%_
                                _%pre196153%_
                                _%ns196154%_))))
                      (begin
                        (let ((_g197645_
                               (if (##values? _g197644_)
                                   (##values-length _g197644_)
                                   1)))
                          (if (not (##fx= _g197645_ 3))
                              (error "Context expects 3 values" _g197645_)))
                        (let ((_%pre196158%_ (##values-ref _g197644_ 0))
                              (_%ns196159%_ (##values-ref _g197644_ 1))
                              (_%pkg196160%_ (##values-ref _g197644_ 2)))
                          (let* ((_%prelude196162%_
                                  (gx#import-module__0 _%pre196158%_))
                                 (_%read-module-body196217%_
                                  (let ((_%$e196208%_
                                         (__find (lambda (_%$%e196163196165%_)
                                                   (let* ((_%$%$%e196163196167196177%_
                                                           _%$%e196163196165%_)
                                                          (_%$%else196169196185%_
                                                           (lambda () '#f))
                                                          (_%$%K196171196189%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e196163196167196177%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e196172196192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e196163196167196177%_
                          '1
                          '#f
                          '#f))
                        (_%$%e196173196195%_
                         (##unchecked-structure-ref
                          _%$%$%e196163196167196177%_
                          '2
                          '#f
                          '#f))
                        (_%$%e196174196198%_
                         (##unchecked-structure-ref
                          _%$%$%e196163196167196177%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e196174196198%_ '1)
                       (let ((_%$%e196175196201%_
                              (##unchecked-structure-ref
                               _%$%$%e196163196167196177%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e196175196201%_ 'read-module-body)
                             (_%$%K196171196189%_)
                             (_%$%else196169196185%_)))
                       (_%$%else196169196185%_)))
                 (_%$%else196169196185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude196162%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e196208%_
                                        (let ((_%proc196214%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e196208%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc196214%_)
                                              _%proc196214%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path196064%_
                                               _%pre196158%_
                                               _%proc196214%_)))
                                        _%default-read-module-body196066%_)))
                                 (_%path-id196219%_
                                  (gx#core-module-path->namespace
                                   _%path196064%_))
                                 (_%pkg-id196221%_
                                  (if _%pkg196160%_
                                      (##string-append
                                       _%pkg196160%_
                                       '"/"
                                       _%path-id196219%_)
                                      _%path-id196219%_))
                                 (_%module-id196223%_
                                  (##string->symbol _%pkg-id196221%_))
                                 (_%module-ns196228%_
                                  (let ((_%$e196225%_ _%ns196159%_))
                                    (if _%$e196225%_
                                        _%$e196225%_
                                        _%pkg-id196221%_)))
                                 (_%body196232%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body196217%_
                                         _%inp196152%_))
                                      gx#current-module-reader-args
                                      _%args196156%_))
                                   gx#current-module-reader-path
                                   _%path196064%_)))
                            (values _%prelude196162%_
                                    _%module-id196223%_
                                    _%module-ns196228%_
                                    _%body196232%_)))))))
                 (_%string-e196068%_
                  (lambda (_%obj196146%_ _%what196147%_)
                    (if (string? _%obj196146%_)
                        _%obj196146%_
                        (if (symbol? _%obj196146%_)
                            (##symbol->string _%obj196146%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what196147%_)
                             _%path196064%_
                             _%obj196146%_)))))
                 (_%read-lang-args196069%_
                  (lambda (_%inp196101%_ _%args196102%_)
                    (let* ((_%$%args196103196111%_ _%args196102%_)
                           (_%$%else196105196119%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path196064%_)))
                           (_%$%K196107196134%_
                            (lambda (_%args196122%_ _%prelude196123%_)
                              (let* ((_%pkg196125%_
                                      (pgetq__0 'package: _%args196122%_))
                                     (_%pkg196127%_
                                      (if _%pkg196125%_
                                          (_%string-e196068%_
                                           _%pkg196125%_
                                           '"package")
                                          '#f))
                                     (_%ns196129%_
                                      (pgetq__0 'namespace: _%args196122%_))
                                     (_%ns196131%_
                                      (if _%ns196129%_
                                          (_%string-e196068%_
                                           _%ns196129%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body196067%_
                                 _%inp196101%_
                                 _%prelude196123%_
                                 _%ns196131%_
                                 _%pkg196127%_
                                 _%args196122%_)))))
                      (if (pair? _%$%args196103196111%_)
                          (let ((_%$%hd196108196137%_
                                 (##car _%$%args196103196111%_))
                                (_%$%tl196109196139%_
                                 (##cdr _%$%args196103196111%_)))
                            (let* ((_%prelude196142%_ _%$%hd196108196137%_)
                                   (_%args196144%_ _%$%tl196109196139%_))
                              (_%$%K196107196134%_
                               _%args196144%_
                               _%prelude196142%_)))
                          (_%$%else196105196119%_)))))
                 (_%read-lang196070%_
                  (lambda (_%inp196075%_)
                    (let* ((_%head196077%_ (read-line _%inp196075%_))
                           (_%$e196079%_
                            (string-index__0 _%head196077%_ '#\space)))
                      (if _%$e196079%_
                          (let ((_%lang196084%_
                                 (substring _%head196077%_ '0 _%$e196079%_)))
                            (if (equal? _%lang196084%_ '"#lang")
                                (let* ((_%rest196086%_
                                        (substring
                                         _%head196077%_
                                         (##fx+ _%$e196079%_ '1)
                                         (string-length _%head196077%_)))
                                       (_%args196097%_
                                        (__with-catch
                                         (lambda (_%$%g196087196089%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path196064%_
                                            _%$%g196087196089%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest196086%_
                                            (lambda (_%$%g196092196094%_)
                                              (read-all
                                               _%$%g196092196094%_
                                               read)))))))
                                  (_%read-lang-args196069%_
                                   _%inp196075%_
                                   _%args196097%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path196064%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path196064%_)))))
                 (_%read-e196071%_
                  (lambda (_%inp196073%_)
                    (if (eq? (peek-char _%inp196073%_) '#\#)
                        (_%read-lang196070%_ _%inp196073%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path196064%_)))))
          (gx#call-with-input-source-file _%path196064%_ _%read-e196071%_))))
    (define gx#core-read-module-package
      (lambda (_%path196012%_ _%pre196013%_ _%ns196014%_)
        (letrec ((_%string-e196016%_
                  (lambda (_%e196059%_)
                    (if (symbol? _%e196059%_)
                        (##symbol->string _%e196059%_)
                        (if (string? _%e196059%_)
                            _%e196059%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e196059%_))))))
          (let _%lp196018%_ ((_%dir196020%_ (path-directory _%path196012%_))
                             (_%pkg-path196021%_ '()))
            (let ((_%gerbil.pkg196023%_
                   (path-expand '"gerbil.pkg" _%dir196020%_)))
              (if (##file-exists? _%gerbil.pkg196023%_)
                  (let ((_%plist196025%_
                         (gx#core-library-package-plist__% _%dir196020%_ '#t)))
                    (if (null? _%plist196025%_)
                        (let ((_%pkg196028%_
                               (if (null? _%pkg-path196021%_)
                                   '#f
                                   (string-join _%pkg-path196021%_ '"/"))))
                          (values _%pre196013%_ _%ns196014%_ _%pkg196028%_))
                        (if (list? _%plist196025%_)
                            (let* ((_%root196031%_
                                    (pgetq__0 'package: _%plist196025%_))
                                   (_%pkg196035%_
                                    (let ((_%pkg-path196033%_
                                           (if _%root196031%_
                                               (cons (_%string-e196016%_
                                                      _%root196031%_)
                                                     _%pkg-path196021%_)
                                               _%pkg-path196021%_)))
                                      (if (null? _%pkg-path196033%_)
                                          '#f
                                          (string-join
                                           _%pkg-path196033%_
                                           '"/"))))
                                   (_%ns196042%_
                                    (let ((_%ns196040%_
                                           (let ((_%$e196037%_ _%ns196014%_))
                                             (if _%$e196037%_
                                                 _%$e196037%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist196025%_)))))
                                      (if _%ns196040%_
                                          (_%string-e196016%_ _%ns196040%_)
                                          '#f)))
                                   (_%pre196047%_
                                    (let ((_%$e196044%_ _%pre196013%_))
                                      (if _%$e196044%_
                                          _%$e196044%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist196025%_)))))
                              (values _%pre196047%_
                                      _%ns196042%_
                                      _%pkg196035%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist196025%_))))
                  (let ((_%dir*196051%_
                         (path-strip-trailing-directory-separator
                          _%dir196020%_)))
                    (if (or (__string-empty? _%dir*196051%_)
                            (equal? _%dir196020%_ _%dir*196051%_))
                        (values _%pre196013%_ _%ns196014%_ '#f)
                        (let ((_%xpath196056%_
                               (path-strip-directory _%dir*196051%_))
                              (_%xdir196057%_ (path-directory _%dir*196051%_)))
                          (_%lp196018%_
                           _%xdir196057%_
                           (cons _%xpath196056%_ _%pkg-path196021%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path196010%_)
        (path-strip-extension (path-strip-directory _%path196010%_))))
    (define gx#core-module-path->id
      (lambda (_%path196008%_)
        (##string->symbol (gx#core-module-path->namespace _%path196008%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path195987%_ _%rel195988%_)
        (let* ((_%path195990%_ (gx#stx-e _%stx-path195987%_))
               (_%path195992%_
                (if (__string-empty? (path-extension _%path195990%_))
                    (##string-append _%path195990%_ '".ss")
                    _%path195990%_)))
          (gx#core-resolve-path__%
           _%path195992%_
           (let ((_%$e195995%_ (gx#stx-source _%stx-path195987%_)))
             (if _%$e195995%_ _%$e195995%_ _%rel195988%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path196001%_)
        (let ((_%rel196003%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path196001%_ _%rel196003%_))))
    (define gx#core-resolve-module-path
      (lambda _g197646_
        (let ((_g197647_ (##length _g197646_)))
          (cond ((##fx= _g197647_ 1)
                 (apply gx#core-resolve-module-path__0 _g197646_))
                ((##fx= _g197647_ 2)
                 (apply gx#core-resolve-module-path__% _g197646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g197646_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath195872%_)
        (let* ((_%spath195874%_ (symbol->string (gx#stx-e _%libpath195872%_)))
               (_%spath195876%_
                (substring
                 _%spath195874%_
                 '1
                 (##string-length _%spath195874%_)))
               (_%ext195878%_ (path-extension _%spath195876%_))
               (_%ssi195880%_
                (if (__string-empty? _%ext195878%_)
                    (##string-append _%spath195876%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath195876%_)
                     '".ssi")))
               (_%srcs195884%_
                (if (__string-empty? _%ext195878%_)
                    (##map (lambda (_%ext195882%_)
                             (string-append _%spath195876%_ _%ext195882%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath195876%_ '()))))
          (let _%lp195887%_ ((_%rest195889%_ (load-path)))
            (let* ((_%$%rest195890195899%_ _%rest195889%_)
                   (_%$%E195893195903%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest195890195899%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K195895195974%_
                     (lambda (_%rest195914%_ _%dir195915%_)
                       (letrec ((_%resolve195917%_
                                 (lambda (_%ssi195930%_ _%srcs195931%_)
                                   (let ((_%compiled-path195933%_
                                          (path-expand
                                           _%ssi195930%_
                                           _%dir195915%_)))
                                     (if (##file-exists?
                                          _%compiled-path195933%_)
                                         (path-normalize
                                          _%compiled-path195933%_)
                                         (let _%lpr195935%_ ((_%rest-src195937%_
                                                              _%srcs195931%_))
                                           (let* ((_%$%rest-src195938195946%_
                                                   _%rest-src195937%_)
                                                  (_%$%else195940195954%_
                                                   (lambda ()
                                                     (_%lp195887%_
                                                      _%rest195914%_)))
                                                  (_%$%K195942195962%_
                                                   (lambda (_%rest-src195957%_
                                                            _%src195958%_)
                                                     (let ((_%src-path195960%_
                                                            (path-expand
                                                             _%src195958%_
                                                             _%dir195915%_)))
                                                       (if (##file-exists?
                                                            _%src-path195960%_)
                                                           (path-normalize
                                                            _%src-path195960%_)
                                                           (_%lpr195935%_
                                                            _%rest-src195957%_))))))
                                             (if (pair? _%$%rest-src195938195946%_)
                                                 (let ((_%$%hd195943195965%_
                                                        (##car _%$%rest-src195938195946%_))
                                                       (_%$%tl195944195967%_
                                                        (##cdr _%$%rest-src195938195946%_)))
                                                   (let* ((_%src195970%_
                                                           _%$%hd195943195965%_)
                                                          (_%rest-src195972%_
                                                           _%$%tl195944195967%_))
                                                     (_%$%K195942195962%_
                                                      _%rest-src195972%_
                                                      _%src195970%_)))
                                                 (_%$%else195940195954%_)))))))))
                         (let ((_%$e195919%_
                                (gx#core-library-package-path-prefix
                                 _%dir195915%_)))
                           (if _%$e195919%_
                               (if (##string-prefix?
                                    _%$e195919%_
                                    _%spath195876%_)
                                   (let ((_%ssi195926%_
                                          (substring
                                           _%ssi195880%_
                                           (##string-length _%$e195919%_)
                                           (##string-length _%ssi195880%_)))
                                         (_%srcs195927%_
                                          (##map (lambda (_%src195924%_)
                                                   (substring
                                                    _%src195924%_
                                                    (##string-length
                                                     _%$e195919%_)
                                                    (string-length
                                                     _%src195924%_)))
                                                 _%srcs195884%_)))
                                     (_%resolve195917%_
                                      _%ssi195926%_
                                      _%srcs195927%_))
                                   (_%lp195887%_ _%rest195914%_))
                               (_%resolve195917%_
                                _%ssi195880%_
                                _%srcs195884%_))))))
                    (_%$%K195894195908%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath195872%_))))
                (let ((_%$%try-match195892195911%_
                       (lambda ()
                         (if (null? _%$%rest195890195899%_)
                             (_%$%K195894195908%_)
                             (_%$%E195893195903%_)))))
                  (if (pair? _%$%rest195890195899%_)
                      (let ((_%$%tl195897195979%_
                             (##cdr _%$%rest195890195899%_))
                            (_%$%hd195896195977%_
                             (##car _%$%rest195890195899%_)))
                        (let ((_%dir195982%_ _%$%hd195896195977%_)
                              (_%rest195984%_ _%$%tl195897195979%_))
                          (_%$%K195895195974%_ _%rest195984%_ _%dir195982%_)))
                      (_%$%try-match195892195911%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath195840%_)
        (letrec ((_%resolve195842%_
                  (lambda (_%path195863%_ _%base195864%_)
                    (let ((_%$e195866%_
                           (string-rindex__0 _%base195864%_ '#\/)))
                      (if _%$e195866%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base195864%_ '0 _%$e195866%_)
                             '"/"
                             _%path195863%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path195863%_))))))))
          (let ((_%spath195844%_ (symbol->string (gx#stx-e _%modpath195840%_)))
                (_%mod195845%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod195845%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath195840%_))
            (let ((_%mpath195847%_
                   (symbol->string
                    (##structure-ref
                     _%mod195845%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp195849%_ ((_%spath195851%_ _%spath195844%_)
                                 (_%mpath195852%_ _%mpath195847%_))
                (if (string-prefix? '"../" _%spath195851%_)
                    (let ((_%$e195855%_
                           (string-rindex__0 _%mpath195852%_ '#\/)))
                      (if _%$e195855%_
                          (_%lp195849%_
                           (substring
                            _%spath195851%_
                            '3
                            (string-length _%spath195851%_))
                           (substring _%mpath195852%_ '0 _%$e195855%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath195840%_)))
                    (if (string-prefix? '"./" _%spath195851%_)
                        (_%lp195849%_
                         (substring
                          _%spath195851%_
                          '2
                          (string-length _%spath195851%_))
                         _%mpath195852%_)
                        (_%resolve195842%_
                         _%spath195851%_
                         _%mpath195852%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir195832%_)
        (let ((_%$e195834%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir195832%_))))
          (if _%$e195834%_
              (##string-append (symbol->string _%$e195834%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir195802%_ _%exists?195803%_)
        (let ((_%$e195805%_ (__hash-get gx#__module-pkg-cache _%dir195802%_)))
          (if _%$e195805%_
              _%$e195805%_
              (let* ((_%gerbil.pkg195809%_
                      (path-expand '"gerbil.pkg" _%dir195802%_))
                     (_%plist195819%_
                      (if (or _%exists?195803%_
                              (##file-exists? _%gerbil.pkg195809%_))
                          (let ((_%e195814%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg195809%_
                                  read)))
                            (if (eof-object? _%e195814%_)
                                '()
                                (if (list? _%e195814%_)
                                    _%e195814%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg195809%_
                                     _%e195814%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir195802%_
                 _%plist195819%_)
                _%plist195819%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir195825%_)
        (let ((_%exists?195827%_ '#f))
          (gx#core-library-package-plist__% _%dir195825%_ _%exists?195827%_))))
    (define gx#core-library-package-plist
      (lambda _g197648_
        (let ((_g197649_ (##length _g197648_)))
          (cond ((##fx= _g197649_ 1)
                 (apply gx#core-library-package-plist__0 _g197648_))
                ((##fx= _g197649_ 2)
                 (apply gx#core-library-package-plist__% _g197648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g197648_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx195799%_)
        (gx#core-special-module-path? _%stx195799%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx195797%_)
        (gx#core-special-module-path? _%stx195797%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx195792%_ _%char195793%_)
        (if (gx#identifier? _%stx195792%_)
            (if (interned-symbol? (gx#stx-e _%stx195792%_))
                (let ((_%str195795%_
                       (symbol->string (gx#stx-e _%stx195792%_))))
                  (if (##fx> (##string-length _%str195795%_) '1)
                      (eq? (string-ref _%str195795%_ '0) _%char195793%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx195786%_)
        (gx#core-bound-identifier?__%
         _%stx195786%_
         (lambda (_%$%g195787195789%_)
           (gx#expander-binding?__%
            _%$%g195787195789%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx195780%_)
        (gx#core-bound-identifier?__%
         _%stx195780%_
         (lambda (_%$%g195781195783%_)
           (gx#expander-binding?__% _%$%g195781195783%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx195767%_)
        (letrec ((_%module-prelude?195769%_
                  (lambda (_%e195775%_)
                    (let ((_%$e195777%_
                           (##structure-instance-of?
                            _%e195775%_
                            'gx#module-context::t)))
                      (if _%$e195777%_
                          _%$e195777%_
                          (##structure-instance-of?
                           _%e195775%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx195767%_
           (lambda (_%$%g195770195772%_)
             (gx#expander-binding?__%
              _%$%g195770195772%_
              _%module-prelude?195769%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in195698%_ _%ctx195699%_ _%force-weak?195700%_)
        (let* ((_%$%in195701195710%_ _%in195698%_)
               (_%$%E195703195713%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in195701195710%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K195704195726%_
                (lambda (_%weak?195716%_
                         _%phi195717%_
                         _%key195718%_
                         _%source195719%_)
                  (gx#core-bind!__%
                   _%key195718%_
                   (let* ((_%e195721%_
                           (gx#core-resolve-module-export _%source195719%_))
                          (__obj197630
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
                      __obj197630
                      (##unchecked-structure-ref _%e195721%_ '1 '#f '#f)
                      _%key195718%_
                      _%phi195717%_
                      _%e195721%_
                      (##unchecked-structure-ref _%source195719%_ '1 '#f '#f)
                      (let ((_%$e195723%_ _%force-weak?195700%_))
                        (if _%$e195723%_ _%$e195723%_ _%weak?195716%_)))
                     __obj197630)
                   gx#core-context-rebind?
                   _%phi195717%_
                   _%ctx195699%_))))
          (if (##structure-direct-instance-of?
               _%$%in195701195710%_
               'gx#module-import::t)
              (let* ((_%$%e195705195729%_
                      (##unchecked-structure-ref
                       _%$%in195701195710%_
                       '1
                       '#f
                       '#f))
                     (_%source195732%_ _%$%e195705195729%_)
                     (_%$%e195706195734%_
                      (##unchecked-structure-ref
                       _%$%in195701195710%_
                       '2
                       '#f
                       '#f))
                     (_%key195737%_ _%$%e195706195734%_)
                     (_%$%e195707195739%_
                      (##unchecked-structure-ref
                       _%$%in195701195710%_
                       '3
                       '#f
                       '#f))
                     (_%phi195742%_ _%$%e195707195739%_)
                     (_%$%e195708195744%_
                      (##unchecked-structure-ref
                       _%$%in195701195710%_
                       '4
                       '#f
                       '#f))
                     (_%weak?195747%_ _%$%e195708195744%_))
                (_%$%K195704195726%_
                 _%weak?195747%_
                 _%phi195742%_
                 _%key195737%_
                 _%source195732%_))
              (_%$%E195703195713%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in195752%_)
        (let* ((_%ctx195754%_ (gx#current-expander-context))
               (_%force-weak?195756%_ '#f))
          (gx#core-bind-import!__%
           _%in195752%_
           _%ctx195754%_
           _%force-weak?195756%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in195758%_ _%ctx195759%_)
        (let ((_%force-weak?195761%_ '#f))
          (gx#core-bind-import!__%
           _%in195758%_
           _%ctx195759%_
           _%force-weak?195761%_))))
    (define gx#core-bind-import!
      (lambda _g197650_
        (let ((_g197651_ (##length _g197650_)))
          (cond ((##fx= _g197651_ 1) (apply gx#core-bind-import!__0 _g197650_))
                ((##fx= _g197651_ 2) (apply gx#core-bind-import!__1 _g197650_))
                ((##fx= _g197651_ 3) (apply gx#core-bind-import!__% _g197650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g197650_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in195684%_ _%ctx195685%_)
        (gx#core-bind-import!__% _%in195684%_ _%ctx195685%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in195690%_)
        (let ((_%ctx195692%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in195690%_ _%ctx195692%_))))
    (define gx#core-bind-weak-import!
      (lambda _g197652_
        (let ((_g197653_ (##length _g197652_)))
          (cond ((##fx= _g197653_ 1)
                 (apply gx#core-bind-weak-import!__0 _g197652_))
                ((##fx= _g197653_ 2)
                 (apply gx#core-bind-weak-import!__% _g197652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g197652_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out195577%_)
        (letrec ((_%subst195579%_
                  (lambda (_%key195624%_)
                    (let* ((_%$%key195625195633%_ _%key195624%_)
                           (_%$%else195627195641%_ (lambda () _%key195624%_))
                           (_%$%K195629195671%_
                            (lambda (_%mark195644%_ _%id195645%_)
                              (let* ((_%$%mark195646195652%_ _%mark195644%_)
                                     (_%$%E195648195655%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark195646195652%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K195649195663%_
                                      (lambda (_%subst195658%_)
                                        (let ((_%$e195660%_
                                               (if _%subst195658%_
                                                   (hash-get
                                                    _%subst195658%_
                                                    _%id195645%_)
                                                   '#f)))
                                          (if _%$e195660%_
                                              _%$e195660%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key195624%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark195646195652%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e195650195666%_
                                            (##unchecked-structure-ref
                                             _%$%mark195646195652%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst195669%_
                                            _%$%e195650195666%_))
                                      (_%$%K195649195663%_ _%subst195669%_))
                                    (_%$%E195648195655%_))))))
                      (if (pair? _%$%key195625195633%_)
                          (let ((_%$%hd195630195674%_
                                 (##car _%$%key195625195633%_))
                                (_%$%tl195631195676%_
                                 (##cdr _%$%key195625195633%_)))
                            (let* ((_%id195679%_ _%$%hd195630195674%_)
                                   (_%mark195681%_ _%$%tl195631195676%_))
                              (_%$%K195629195671%_
                               _%mark195681%_
                               _%id195679%_)))
                          (_%$%else195627195641%_))))))
          (let* ((_%$%out195580195590%_ _%out195577%_)
                 (_%$%E195582195593%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out195580195590%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K195583195600%_
                  (lambda (_%phi195596%_ _%key195597%_ _%ctx195598%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx195598%_ _%phi195596%_)
                     (_%subst195579%_ _%key195597%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out195580195590%_
                 'gx#module-export::t)
                (let* ((_%$%e195584195603%_
                        (##unchecked-structure-ref
                         _%$%out195580195590%_
                         '1
                         '#f
                         '#f))
                       (_%ctx195606%_ _%$%e195584195603%_)
                       (_%$%e195585195608%_
                        (##unchecked-structure-ref
                         _%$%out195580195590%_
                         '2
                         '#f
                         '#f))
                       (_%key195611%_ _%$%e195585195608%_)
                       (_%$%e195586195613%_
                        (##unchecked-structure-ref
                         _%$%out195580195590%_
                         '3
                         '#f
                         '#f))
                       (_%phi195616%_ _%$%e195586195613%_)
                       (_%$%e195587195618%_
                        (##unchecked-structure-ref
                         _%$%out195580195590%_
                         '4
                         '#f
                         '#f))
                       (_%$%e195588195621%_
                        (##unchecked-structure-ref
                         _%$%out195580195590%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K195583195600%_
                   _%phi195616%_
                   _%key195611%_
                   _%ctx195606%_))
                (_%$%E195582195593%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out195503%_ _%rename195504%_ _%dphi195505%_)
        (let* ((_%$%out195506195516%_ _%out195503%_)
               (_%$%E195508195519%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out195506195516%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K195509195531%_
                (lambda (_%weak?195522%_
                         _%name195523%_
                         _%phi195524%_
                         _%key195525%_
                         _%ctx195526%_)
                  (##structure
                   gx#module-import::t
                   _%out195503%_
                   (let ((_%$e195528%_ _%rename195504%_))
                     (if _%$e195528%_ _%$e195528%_ _%name195523%_))
                   (fx+ _%phi195524%_ _%dphi195505%_)
                   _%weak?195522%_))))
          (if (##structure-direct-instance-of?
               _%$%out195506195516%_
               'gx#module-export::t)
              (let* ((_%$%e195510195534%_
                      (##unchecked-structure-ref
                       _%$%out195506195516%_
                       '1
                       '#f
                       '#f))
                     (_%ctx195537%_ _%$%e195510195534%_)
                     (_%$%e195511195539%_
                      (##unchecked-structure-ref
                       _%$%out195506195516%_
                       '2
                       '#f
                       '#f))
                     (_%key195542%_ _%$%e195511195539%_)
                     (_%$%e195512195544%_
                      (##unchecked-structure-ref
                       _%$%out195506195516%_
                       '3
                       '#f
                       '#f))
                     (_%phi195547%_ _%$%e195512195544%_)
                     (_%$%e195513195549%_
                      (##unchecked-structure-ref
                       _%$%out195506195516%_
                       '4
                       '#f
                       '#f))
                     (_%name195552%_ _%$%e195513195549%_)
                     (_%$%e195514195554%_
                      (##unchecked-structure-ref
                       _%$%out195506195516%_
                       '5
                       '#f
                       '#f))
                     (_%weak?195557%_ _%$%e195514195554%_))
                (_%$%K195509195531%_
                 _%weak?195557%_
                 _%name195552%_
                 _%phi195547%_
                 _%key195542%_
                 _%ctx195537%_))
              (_%$%E195508195519%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out195562%_)
        (let* ((_%rename195564%_ '#f) (_%dphi195566%_ '0))
          (gx#core-module-export->import__%
           _%out195562%_
           _%rename195564%_
           _%dphi195566%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out195568%_ _%rename195569%_)
        (let ((_%dphi195571%_ '0))
          (gx#core-module-export->import__%
           _%out195568%_
           _%rename195569%_
           _%dphi195571%_))))
    (define gx#core-module-export->import
      (lambda _g197654_
        (let ((_g197655_ (##length _g197654_)))
          (cond ((##fx= _g197655_ 1)
                 (apply gx#core-module-export->import__0 _g197654_))
                ((##fx= _g197655_ 2)
                 (apply gx#core-module-export->import__1 _g197654_))
                ((##fx= _g197655_ 3)
                 (apply gx#core-module-export->import__% _g197654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g197654_))))))
    (define gx#core-expand-module%
      (lambda (_%stx195402%_)
        (letrec ((_%make-context195404%_
                  (lambda (_%id195481%_)
                    (let* ((_%super195483%_ (gx#current-expander-context))
                           (_%bind-id195485%_ (gx#stx-e _%id195481%_))
                           (_%mod-id195487%_
                            (if (##structure-instance-of?
                                 _%super195483%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super195483%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id195485%_)
                                _%bind-id195485%_))
                           (_%ns195489%_ (symbol->string _%mod-id195487%_))
                           (_%path195499%_
                            (if (##structure-instance-of?
                                 _%super195483%_
                                 'gx#module-context::t)
                                (let ((_%path195491%_
                                       (##unchecked-structure-ref
                                        _%super195483%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path195491%_)
                                          (null? _%path195491%_))
                                      (cons _%bind-id195485%_ _%path195491%_)
                                      (if _%path195491%_
                                          (cons _%bind-id195485%_
                                                (cons _%path195491%_ '()))
                                          _%bind-id195485%_)))
                                _%bind-id195485%_))
                           (__obj197631
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
                       __obj197631
                       _%mod-id195487%_
                       _%super195483%_
                       _%ns195489%_
                       _%path195499%_)
                      __obj197631)))
                 (_%valid-module-id?195405%_
                  (lambda (_%id195456%_)
                    (let* ((_%str195458%_ (symbol->string _%id195456%_))
                           (_%len195460%_ (##string-length _%str195458%_)))
                      (if (##fx>= _%len195460%_ '1)
                          (let _%loop195463%_ ((_%index195465%_
                                                (##fx- (##string-length
                                                        _%str195458%_)
                                                       '1)))
                            (if (##fx>= _%index195465%_ '0)
                                (let ((_%c195467%_
                                       (string-ref
                                        _%str195458%_
                                        _%index195465%_)))
                                  (if (or (and (##char>=? _%c195467%_ '#\a)
                                               (##char<=? _%c195467%_ '#\z))
                                          (and (##char>=? _%c195467%_ '#\A)
                                               (##char<=? _%c195467%_ '#\Z))
                                          (and (##char>=? _%c195467%_ '#\0)
                                               (##char<=? _%c195467%_ '#\9))
                                          (##char=? _%c195467%_ '#\_)
                                          (##char=? _%c195467%_ '#\-))
                                      (_%loop195463%_
                                       (##fx- _%index195465%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e195406195416%_ _%stx195402%_)
                 (_%$%E195408195420%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e195406195416%_)))
                 (_%$%E195407195452%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e195406195416%_)
                        (let ((_%$%e195409195424%_
                               (gx#syntax-e _%$%e195406195416%_)))
                          (let ((_%$%hd195410195427%_
                                 (##car _%$%e195409195424%_))
                                (_%$%tl195411195429%_
                                 (##cdr _%$%e195409195424%_)))
                            (if (gx#stx-pair? _%$%tl195411195429%_)
                                (let ((_%$%e195412195432%_
                                       (gx#syntax-e _%$%tl195411195429%_)))
                                  (let ((_%$%hd195413195435%_
                                         (##car _%$%e195412195432%_))
                                        (_%$%tl195414195437%_
                                         (##cdr _%$%e195412195432%_)))
                                    (let* ((_%id195440%_ _%$%hd195413195435%_)
                                           (_%body195442%_
                                            _%$%tl195414195437%_))
                                      (if (and (gx#identifier? _%id195440%_)
                                               (gx#stx-list? _%body195442%_))
                                          (if (_%valid-module-id?195405%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx195444%_
                                                      (_%make-context195404%_
                                                       _%id195440%_))
                                                     (_%body195446%_
                                                      (gx#core-expand-module-begin
                                                       _%body195442%_
                                                       _%ctx195444%_))
                                                     (_%body195448%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body195446%_)
                                                       (gx#stx-source
                                                        _%stx195402%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx195444%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body195448%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx195444%_
                                                 _%body195448%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id195440%_
                                                 _%ctx195444%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id195440%_)
                                                  _%body195448%_)
                                                 (gx#stx-source
                                                  _%stx195402%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx195402%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E195408195420%_)))))
                                (_%$%E195408195420%_))))
                        (_%$%E195408195420%_)))))
            (_%$%E195407195452%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body195367%_ _%ctx195368%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx195372%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body195367%_)))
                     (_%$%e195373195380%_ _%stx195372%_)
                     (_%$%E195375195384%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx195372%_)))
                     (_%$%E195374195398%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e195373195380%_)
                            (let ((_%$%e195376195388%_
                                   (gx#syntax-e _%$%e195373195380%_)))
                              (let ((_%$%hd195377195391%_
                                     (##car _%$%e195376195388%_))
                                    (_%$%tl195378195393%_
                                     (##cdr _%$%e195376195388%_)))
                                (if (and (gx#identifier? _%$%hd195377195391%_)
                                         (gx#core-identifier=?
                                          _%$%hd195377195391%_
                                          '%#begin-module))
                                    (let ((_%body195396%_
                                           _%$%tl195378195393%_))
                                      (if (gx#sealed-syntax? _%stx195372%_)
                                          _%body195396%_
                                          (gx#core-expand-module-body
                                           _%body195396%_)))
                                    (_%$%E195375195384%_))))
                            (_%$%E195375195384%_)))))
                (_%$%E195374195398%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx195368%_)))
    (define gx#core-expand-module-body
      (lambda (_%body195064%_)
        (letrec ((_%expand-special195066%_
                  (lambda (_%hd195195%_ _%K195196%_ _%rest195197%_ _%r195198%_)
                    (let* ((_%$%e195199195239%_ _%hd195195%_)
                           (_%$%E195234195243%_
                            (lambda ()
                              (_%K195196%_
                               _%rest195197%_
                               (cons (gx#core-expand-top _%hd195195%_)
                                     _%r195198%_))))
                           (_%$%E195221195255%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195199195239%_)
                                  (let ((_%$%e195235195247%_
                                         (gx#syntax-e _%$%e195199195239%_)))
                                    (let ((_%$%hd195236195250%_
                                           (##car _%$%e195235195247%_))
                                          (_%$%tl195237195252%_
                                           (##cdr _%$%e195235195247%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195236195250%_)
                                               (gx#core-identifier=?
                                                _%$%hd195236195250%_
                                                '%#export))
                                          (_%K195196%_
                                           _%rest195197%_
                                           (cons _%hd195195%_ _%r195198%_))
                                          (_%$%E195234195243%_))))
                                  (_%$%E195234195243%_))))
                           (_%$%E195211195297%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195199195239%_)
                                  (let ((_%$%e195222195259%_
                                         (gx#syntax-e _%$%e195199195239%_)))
                                    (let ((_%$%hd195223195262%_
                                           (##car _%$%e195222195259%_))
                                          (_%$%tl195224195264%_
                                           (##cdr _%$%e195222195259%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195223195262%_)
                                               (gx#core-identifier=?
                                                _%$%hd195223195262%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl195224195264%_)
                                              (let ((_%$%e195225195267%_
                                                     (gx#syntax-e
                                                      _%$%tl195224195264%_)))
                                                (let ((_%$%hd195226195270%_
                                                       (##car _%$%e195225195267%_))
                                                      (_%$%tl195227195272%_
                                                       (##cdr _%$%e195225195267%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd195226195270%_)
                                                      (let ((_%$%e195231195275%_
                                                             (gx#syntax-e
                                                              _%$%hd195226195270%_)))
                                                        (let ((_%$%hd195232195278%_
                                                               (##car _%$%e195231195275%_))
                                                              (_%$%tl195233195280%_
                                                               (##cdr _%$%e195231195275%_)))
                                                          (let ((_%id195283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd195232195278%_))
                    (if (gx#stx-null? _%$%tl195233195280%_)
                        (if (gx#stx-pair? _%$%tl195227195272%_)
                            (let ((_%$%e195228195285%_
                                   (gx#syntax-e _%$%tl195227195272%_)))
                              (let ((_%$%hd195229195288%_
                                     (##car _%$%e195228195285%_))
                                    (_%$%tl195230195290%_
                                     (##cdr _%$%e195228195285%_)))
                                (let ((_%props195293%_ _%$%hd195229195288%_))
                                  (if (gx#stx-null? _%$%tl195230195290%_)
                                      (let ((_%bind195295%_
                                             (gx#resolve-identifier__0
                                              _%id195283%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind195295%_
                                         _%props195293%_)
                                        (_%K195196%_
                                         _%rest195197%_
                                         _%r195198%_))
                                      (_%$%E195221195255%_)))))
                            (_%$%E195221195255%_))
                        (_%$%E195221195255%_)))))
              (_%$%E195221195255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195221195255%_))
                                          (_%$%E195221195255%_))))
                                  (_%$%E195221195255%_))))
                           (_%$%E195201195329%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195199195239%_)
                                  (let ((_%$%e195212195301%_
                                         (gx#syntax-e _%$%e195199195239%_)))
                                    (let ((_%$%hd195213195304%_
                                           (##car _%$%e195212195301%_))
                                          (_%$%tl195214195306%_
                                           (##cdr _%$%e195212195301%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195213195304%_)
                                               (gx#core-identifier=?
                                                _%$%hd195213195304%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl195214195306%_)
                                              (let ((_%$%e195215195309%_
                                                     (gx#syntax-e
                                                      _%$%tl195214195306%_)))
                                                (let ((_%$%hd195216195312%_
                                                       (##car _%$%e195215195309%_))
                                                      (_%$%tl195217195314%_
                                                       (##cdr _%$%e195215195309%_)))
                                                  (let ((_%hd-bind195317%_
                                                         _%$%hd195216195312%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl195217195314%_)
                                                        (let ((_%$%e195218195319%_
                                                               (gx#syntax-e
                                                                _%$%tl195217195314%_)))
                                                          (let ((_%$%hd195219195322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e195218195319%_))
                        (_%$%tl195220195324%_ (##cdr _%$%e195218195319%_)))
                    (let ((_%expr195327%_ _%$%hd195219195322%_))
                      (if (gx#stx-null? _%$%tl195220195324%_)
                          (if (gx#core-bind-values? _%hd-bind195317%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind195317%_)
                                (_%K195196%_
                                 _%rest195197%_
                                 (cons _%hd195195%_ _%r195198%_)))
                              (_%$%E195211195297%_))
                          (_%$%E195211195297%_)))))
                (_%$%E195211195297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195211195297%_))
                                          (_%$%E195211195297%_))))
                                  (_%$%E195211195297%_))))
                           (_%$%E195200195363%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195199195239%_)
                                  (let ((_%$%e195202195333%_
                                         (gx#syntax-e _%$%e195199195239%_)))
                                    (let ((_%$%hd195203195336%_
                                           (##car _%$%e195202195333%_))
                                          (_%$%tl195204195338%_
                                           (##cdr _%$%e195202195333%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195203195336%_)
                                               (gx#core-identifier=?
                                                _%$%hd195203195336%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl195204195338%_)
                                              (let ((_%$%e195205195341%_
                                                     (gx#syntax-e
                                                      _%$%tl195204195338%_)))
                                                (let ((_%$%hd195206195344%_
                                                       (##car _%$%e195205195341%_))
                                                      (_%$%tl195207195346%_
                                                       (##cdr _%$%e195205195341%_)))
                                                  (let ((_%hd-bind195349%_
                                                         _%$%hd195206195344%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl195207195346%_)
                                                        (let ((_%$%e195208195351%_
                                                               (gx#syntax-e
                                                                _%$%tl195207195346%_)))
                                                          (let ((_%$%hd195209195354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e195208195351%_))
                        (_%$%tl195210195356%_ (##cdr _%$%e195208195351%_)))
                    (let* ((_%expr195359%_ _%$%hd195209195354%_)
                           (_%props195361%_ _%$%tl195210195356%_))
                      (if (and (gx#core-bind-values? _%hd-bind195349%_)
                               (gx#stx-list? _%props195361%_)
                               (not (gx#stx-null? _%props195361%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind195349%_)
                            (_%K195196%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind195349%_
                                          (cons _%props195361%_ '())))
                                   _%rest195197%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind195349%_
                                          (cons _%expr195359%_ '())))
                                   _%r195198%_)))
                          (_%$%E195201195329%_)))))
                (_%$%E195201195329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195201195329%_))
                                          (_%$%E195201195329%_))))
                                  (_%$%E195201195329%_)))))
                      (_%$%E195200195363%_))))
                 (_%expand-body195067%_
                  (lambda (_%rbody195069%_)
                    (let _%lp195071%_ ((_%rest195073%_ _%rbody195069%_)
                                       (_%body195074%_ '()))
                      (let* ((_%$%rest195075195083%_ _%rest195073%_)
                             (_%$%else195077195091%_
                              (lambda () _%body195074%_))
                             (_%$%K195079195183%_
                              (lambda (_%rest195094%_ _%hd195095%_)
                                (let* ((_%$%e195096195117%_ _%hd195095%_)
                                       (_%$%E195112195121%_
                                        (lambda ()
                                          (_%lp195071%_
                                           _%rest195094%_
                                           (cons (gx#core-expand-expression
                                                  _%hd195095%_)
                                                 _%body195074%_))))
                                       (_%$%E195108195135%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195096195117%_)
                                              (let ((_%$%e195113195125%_
                                                     (gx#syntax-e
                                                      _%$%e195096195117%_)))
                                                (let ((_%$%hd195114195128%_
                                                       (##car _%$%e195113195125%_))
                                                      (_%$%tl195115195130%_
                                                       (##cdr _%$%e195113195125%_)))
                                                  (let ((_%form195133%_
                                                         _%$%hd195114195128%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form195133%_
                                                         gx#special-form-binding?)
                                                        (_%lp195071%_
                                                         _%rest195094%_
                                                         (cons _%hd195095%_
                                                               _%body195074%_))
                                                        (_%$%E195112195121%_)))))
                                              (_%$%E195112195121%_))))
                                       (_%$%E195098195147%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195096195117%_)
                                              (let ((_%$%e195109195139%_
                                                     (gx#syntax-e
                                                      _%$%e195096195117%_)))
                                                (let ((_%$%hd195110195142%_
                                                       (##car _%$%e195109195139%_))
                                                      (_%$%tl195111195144%_
                                                       (##cdr _%$%e195109195139%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd195110195142%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd195110195142%_
                                                            '%#export))
                                                      (_%lp195071%_
                                                       _%rest195094%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd195095%_)
                                                             _%body195074%_))
                                                      (_%$%E195108195135%_))))
                                              (_%$%E195108195135%_))))
                                       (_%$%E195097195179%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195096195117%_)
                                              (let ((_%$%e195099195151%_
                                                     (gx#syntax-e
                                                      _%$%e195096195117%_)))
                                                (let ((_%$%hd195100195154%_
                                                       (##car _%$%e195099195151%_))
                                                      (_%$%tl195101195156%_
                                                       (##cdr _%$%e195099195151%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd195100195154%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd195100195154%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl195101195156%_)
                                                          (let ((_%$%e195102195159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl195101195156%_)))
                    (let ((_%$%hd195103195162%_ (##car _%$%e195102195159%_))
                          (_%$%tl195104195164%_ (##cdr _%$%e195102195159%_)))
                      (let ((_%hd-bind195167%_ _%$%hd195103195162%_))
                        (if (gx#stx-pair? _%$%tl195104195164%_)
                            (let ((_%$%e195105195169%_
                                   (gx#syntax-e _%$%tl195104195164%_)))
                              (let ((_%$%hd195106195172%_
                                     (##car _%$%e195105195169%_))
                                    (_%$%tl195107195174%_
                                     (##cdr _%$%e195105195169%_)))
                                (let ((_%expr195177%_ _%$%hd195106195172%_))
                                  (if (gx#stx-null? _%$%tl195107195174%_)
                                      (_%lp195071%_
                                       _%rest195094%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind195167%_)
                                               (gx#core-expand-expression
                                                _%expr195177%_))
                                              (gx#stx-source _%hd195095%_))
                                             _%body195074%_))
                                      (_%$%E195098195147%_)))))
                            (_%$%E195098195147%_)))))
                  (_%$%E195098195147%_))
              (_%$%E195098195147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195098195147%_)))))
                                  (_%$%E195097195179%_)))))
                        (if (pair? _%$%rest195075195083%_)
                            (let ((_%$%hd195080195186%_
                                   (##car _%$%rest195075195083%_))
                                  (_%$%tl195081195188%_
                                   (##cdr _%$%rest195075195083%_)))
                              (let* ((_%hd195191%_ _%$%hd195080195186%_)
                                     (_%rest195193%_ _%$%tl195081195188%_))
                                (_%$%K195079195183%_
                                 _%rest195193%_
                                 _%hd195191%_)))
                            (_%$%else195077195091%_)))))))
          (_%expand-body195067%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body195064%_)
            _%expand-special195066%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx194905%_
               _%expanded?194906%_
               _%method194907%_
               _%current-phi194908%_
               _%expand1194909%_)
        (letrec ((_%K194911%_
                  (lambda (_%rest195031%_ _%r195032%_)
                    (let* ((_%$%e195033195040%_ _%rest195031%_)
                           (_%$%E195035195044%_ (lambda () _%r195032%_))
                           (_%$%E195034195060%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195033195040%_)
                                  (let ((_%$%e195036195048%_
                                         (gx#syntax-e _%$%e195033195040%_)))
                                    (let ((_%$%hd195037195051%_
                                           (##car _%$%e195036195048%_))
                                          (_%$%tl195038195053%_
                                           (##cdr _%$%e195036195048%_)))
                                      (let* ((_%hd195056%_
                                              _%$%hd195037195051%_)
                                             (_%rest195058%_
                                              _%$%tl195038195053%_))
                                        (_%step194912%_
                                         _%hd195056%_
                                         _%rest195058%_
                                         _%r195032%_))))
                                  (_%$%E195035195044%_)))))
                      (_%$%E195034195060%_))))
                 (_%step194912%_
                  (lambda (_%hd194945%_ _%rest194946%_ _%r194947%_)
                    (let* ((_%$%e194948194966%_ _%hd194945%_)
                           (_%$%E194961194970%_
                            (lambda ()
                              (if (_%expanded?194906%_ (gx#stx-e _%hd194945%_))
                                  (_%K194911%_
                                   _%rest194946%_
                                   (cons (gx#stx-e _%hd194945%_) _%r194947%_))
                                  (_%expand1194909%_
                                   _%hd194945%_
                                   _%K194911%_
                                   _%rest194946%_
                                   _%r194947%_))))
                           (_%$%E194957194986%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194948194966%_)
                                  (let ((_%$%e194962194974%_
                                         (gx#syntax-e _%$%e194948194966%_)))
                                    (let ((_%$%hd194963194977%_
                                           (##car _%$%e194962194974%_))
                                          (_%$%tl194964194979%_
                                           (##cdr _%$%e194962194974%_)))
                                      (let* ((_%macro194982%_
                                              _%$%hd194963194977%_)
                                             (_%body194984%_
                                              _%$%tl194964194979%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro194982%_
                                             gx#syntax-binding?)
                                            (_%K194911%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro194982%_)
                                                    _%hd194945%_
                                                    _%method194907%_)
                                                   _%rest194946%_)
                                             _%r194947%_)
                                            (_%$%E194961194970%_)))))
                                  (_%$%E194961194970%_))))
                           (_%$%E194950195000%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194948194966%_)
                                  (let ((_%$%e194958194990%_
                                         (gx#syntax-e _%$%e194948194966%_)))
                                    (let ((_%$%hd194959194993%_
                                           (##car _%$%e194958194990%_))
                                          (_%$%tl194960194995%_
                                           (##cdr _%$%e194958194990%_)))
                                      (if (eq? (gx#stx-e _%$%hd194959194993%_)
                                               'begin:)
                                          (let ((_%body194998%_
                                                 _%$%tl194960194995%_))
                                            (_%K194911%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest194946%_
                                              _%body194998%_)
                                             _%r194947%_))
                                          (_%$%E194957194986%_))))
                                  (_%$%E194957194986%_))))
                           (_%$%E194949195027%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194948194966%_)
                                  (let ((_%$%e194951195004%_
                                         (gx#syntax-e _%$%e194948194966%_)))
                                    (let ((_%$%hd194952195007%_
                                           (##car _%$%e194951195004%_))
                                          (_%$%tl194953195009%_
                                           (##cdr _%$%e194951195004%_)))
                                      (if (eq? (gx#stx-e _%$%hd194952195007%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl194953195009%_)
                                              (let ((_%$%e194954195012%_
                                                     (gx#syntax-e
                                                      _%$%tl194953195009%_)))
                                                (let ((_%$%hd194955195015%_
                                                       (##car _%$%e194954195012%_))
                                                      (_%$%tl194956195017%_
                                                       (##cdr _%$%e194954195012%_)))
                                                  (let* ((_%dphi195020%_
                                                          _%$%hd194955195015%_)
                                                         (_%body195022%_
                                                          _%$%tl194956195017%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi195020%_)
                                                        (let ((_%rbody195025%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K194911%_ _%body195022%_ '()))
                        _%current-phi194908%_
                        (fx+ (gx#stx-e _%dphi195020%_)
                             (_%current-phi194908%_)))))
                  (_%K194911%_
                   _%rest194946%_
                   (append _%rbody195025%_ _%r194947%_)))
                (_%$%E194950195000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E194950195000%_))
                                          (_%$%E194950195000%_))))
                                  (_%$%E194950195000%_)))))
                      (_%$%E194949195027%_)))))
          (let* ((_%$%e194913194920%_ _%stx194905%_)
                 (_%$%E194915194924%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e194913194920%_)))
                 (_%$%E194914194941%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e194913194920%_)
                        (let ((_%$%e194916194928%_
                               (gx#syntax-e _%$%e194913194920%_)))
                          (let ((_%$%hd194917194931%_
                                 (##car _%$%e194916194928%_))
                                (_%$%tl194918194933%_
                                 (##cdr _%$%e194916194928%_)))
                            (let ((_%body194936%_ _%$%tl194918194933%_))
                              (if (_%current-phi194908%_)
                                  (_%K194911%_ _%body194936%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K194911%_ _%body194936%_ '()))
                                   _%current-phi194908%_
                                   (gx#current-expander-phi))))))
                        (_%$%E194915194924%_)))))
            (_%$%E194914194941%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx194559%_ _%internal-expand?194560%_)
        (letrec ((_%expand1194562%_
                  (lambda (_%hd194877%_ _%K194878%_ _%rest194879%_ _%r194880%_)
                    (if (gx#core-bound-module? _%hd194877%_)
                        (_%import1194563%_
                         (gx#syntax-local-e__0 _%hd194877%_)
                         _%K194878%_
                         _%rest194879%_
                         _%r194880%_)
                        (if (gx#core-library-module-path? _%hd194877%_)
                            (_%import1194563%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd194877%_))
                             _%K194878%_
                             _%rest194879%_
                             _%r194880%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd194877%_)
                                (_%import1194563%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd194877%_))
                                 _%K194878%_
                                 _%rest194879%_
                                 _%r194880%_)
                                (let ((_%e194886%_ (gx#stx-e _%hd194877%_)))
                                  (if (pair? _%e194886%_)
                                      (let ((_%$e194889%_
                                             (gx#stx-e (##car _%e194886%_))))
                                        (if (eq? 'spec: _%$e194889%_)
                                            (_%import-spec194566%_
                                             _%hd194877%_
                                             _%K194878%_
                                             _%rest194879%_
                                             _%r194880%_)
                                            (if (eq? 'in: _%$e194889%_)
                                                (_%import-submodule194564%_
                                                 _%hd194877%_
                                                 _%K194878%_
                                                 _%rest194879%_
                                                 _%r194880%_)
                                                (if (eq? 'runtime:
                                                         _%$e194889%_)
                                                    (_%import-runtime194565%_
                                                     _%hd194877%_
                                                     _%K194878%_
                                                     _%rest194879%_
                                                     _%r194880%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx194559%_
                                                     _%hd194877%_)))))
                                      (if (string? _%e194886%_)
                                          (_%import1194563%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd194877%_
                                             (gx#stx-source _%stx194559%_)))
                                           _%K194878%_
                                           _%rest194879%_
                                           _%r194880%_)
                                          (if (##structure-instance-of?
                                               _%e194886%_
                                               'gx#module-context::t)
                                              (_%K194878%_
                                               _%rest194879%_
                                               (cons _%e194886%_ _%r194880%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx194559%_
                                               _%hd194877%_))))))))))
                 (_%import1194563%_
                  (lambda (_%ctx194866%_
                           _%K194867%_
                           _%rest194868%_
                           _%r194869%_)
                    (let ((_%dphi194871%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K194867%_
                       _%rest194868%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx194866%_
                              _%dphi194871%_
                              (map (lambda (_%$%g194872194874%_)
                                     (gx#core-module-export->import__%
                                      _%$%g194872194874%_
                                      '#f
                                      _%dphi194871%_))
                                   (##unchecked-structure-ref
                                    _%ctx194866%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r194869%_)))))
                 (_%import-submodule194564%_
                  (lambda (_%hd194833%_ _%K194834%_ _%rest194835%_ _%r194836%_)
                    (let* ((_%$%e194837194844%_ _%hd194833%_)
                           (_%$%E194839194848%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194837194844%_)))
                           (_%$%E194838194862%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194837194844%_)
                                  (let ((_%$%e194840194852%_
                                         (gx#syntax-e _%$%e194837194844%_)))
                                    (let ((_%$%hd194841194855%_
                                           (##car _%$%e194840194852%_))
                                          (_%$%tl194842194857%_
                                           (##cdr _%$%e194840194852%_)))
                                      (let ((_%spath194860%_
                                             _%$%tl194842194857%_))
                                        (_%import1194563%_
                                         (_%import-spec-source194567%_
                                          _%spath194860%_)
                                         _%K194834%_
                                         _%rest194835%_
                                         _%r194836%_))))
                                  (_%$%E194839194848%_)))))
                      (_%$%E194838194862%_))))
                 (_%import-runtime194565%_
                  (lambda (_%hd194800%_ _%K194801%_ _%rest194802%_ _%r194803%_)
                    (let* ((_%$%e194804194811%_ _%hd194800%_)
                           (_%$%E194806194815%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194804194811%_)))
                           (_%$%E194805194829%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194804194811%_)
                                  (let ((_%$%e194807194819%_
                                         (gx#syntax-e _%$%e194804194811%_)))
                                    (let ((_%$%hd194808194822%_
                                           (##car _%$%e194807194819%_))
                                          (_%$%tl194809194824%_
                                           (##cdr _%$%e194807194819%_)))
                                      (let ((_%spath194827%_
                                             _%$%tl194809194824%_))
                                        (_%K194801%_
                                         _%rest194802%_
                                         (cons (_%import-spec-source194567%_
                                                _%spath194827%_)
                                               _%r194803%_)))))
                                  (_%$%E194806194815%_)))))
                      (_%$%E194805194829%_))))
                 (_%import-spec194566%_
                  (lambda (_%hd194638%_ _%K194639%_ _%rest194640%_ _%r194641%_)
                    (let* ((_%$%e194642194659%_ _%hd194638%_)
                           (_%$%E194651194663%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194642194659%_)))
                           (_%$%E194644194774%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194642194659%_)
                                  (let ((_%$%e194652194667%_
                                         (gx#syntax-e _%$%e194642194659%_)))
                                    (let ((_%$%hd194653194670%_
                                           (##car _%$%e194652194667%_))
                                          (_%$%tl194654194672%_
                                           (##cdr _%$%e194652194667%_)))
                                      (if (gx#stx-pair? _%$%tl194654194672%_)
                                          (let ((_%$%e194655194675%_
                                                 (gx#syntax-e
                                                  _%$%tl194654194672%_)))
                                            (let ((_%$%hd194656194678%_
                                                   (##car _%$%e194655194675%_))
                                                  (_%$%tl194657194680%_
                                                   (##cdr _%$%e194655194675%_)))
                                              (let* ((_%path194683%_
                                                      _%$%hd194656194678%_)
                                                     (_%specs194685%_
                                                      _%$%tl194657194680%_))
                                                (let ((_%src-ctx194687%_
                                                       (_%import-spec-source194567%_
                                                        _%path194683%_))
                                                      (_%exports194688%_
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
                                                      (_%specs194689%_
                                                       (gx#syntax->list
                                                        _%specs194685%_)))
                                                  (for-each
                                                   (lambda (_%out194691%_)
                                                     (__hash-put!
                                                      _%exports194688%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out194691%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out194691%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out194691%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx194687%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K194639%_
                                                   _%rest194640%_
                                                   (foldl__0
                                                    (lambda (_%spec194693%_
                                                             _%r194694%_)
                                                      (let* ((_%$%e194695194711%_
                                                              _%spec194693%_)
                                                             (_%$%E194697194715%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e194695194711%_)))
                     (_%$%E194696194770%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e194695194711%_)
                            (let ((_%$%e194698194719%_
                                   (gx#syntax-e _%$%e194695194711%_)))
                              (let ((_%$%hd194699194722%_
                                     (##car _%$%e194698194719%_))
                                    (_%$%tl194700194724%_
                                     (##cdr _%$%e194698194719%_)))
                                (let ((_%phi194727%_ _%$%hd194699194722%_))
                                  (if (gx#stx-pair? _%$%tl194700194724%_)
                                      (let ((_%$%e194701194729%_
                                             (gx#syntax-e
                                              _%$%tl194700194724%_)))
                                        (let ((_%$%hd194702194732%_
                                               (##car _%$%e194701194729%_))
                                              (_%$%tl194703194734%_
                                               (##cdr _%$%e194701194729%_)))
                                          (let ((_%name194737%_
                                                 _%$%hd194702194732%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl194703194734%_)
                                                (let ((_%$%e194704194739%_
                                                       (gx#syntax-e
                                                        _%$%tl194703194734%_)))
                                                  (let ((_%$%hd194705194742%_
                                                         (##car _%$%e194704194739%_))
                                                        (_%$%tl194706194744%_
                                                         (##cdr _%$%e194704194739%_)))
                                                    (let ((_%src-phi194747%_
                                                           _%$%hd194705194742%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl194706194744%_)
                                                          (let ((_%$%e194707194749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl194706194744%_)))
                    (let ((_%$%hd194708194752%_ (##car _%$%e194707194749%_))
                          (_%$%tl194709194754%_ (##cdr _%$%e194707194749%_)))
                      (let ((_%src-name194757%_ _%$%hd194708194752%_))
                        (if (gx#stx-null? _%$%tl194709194754%_)
                            (if (and (gx#stx-fixnum? _%src-phi194747%_)
                                     (gx#identifier? _%src-name194757%_)
                                     (gx#stx-fixnum? _%phi194727%_)
                                     (gx#identifier? _%name194737%_))
                                (let ((_%src-phi194759%_
                                       (gx#stx-e _%src-phi194747%_))
                                      (_%src-name194760%_
                                       (gx#core-identifier-key
                                        _%src-name194757%_))
                                      (_%phi194761%_ (gx#stx-e _%phi194727%_))
                                      (_%name194762%_
                                       (gx#core-identifier-key
                                        _%name194737%_)))
                                  (let ((_%$e194764%_
                                         (__hash-get
                                          _%exports194688%_
                                          (cons _%src-phi194759%_
                                                _%src-name194760%_))))
                                    (if _%$e194764%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e194764%_
                                               _%name194762%_
                                               (fx- _%phi194761%_
                                                    _%src-phi194759%_))
                                              _%r194694%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx194559%_
                                         _%hd194638%_))))
                                (_%$%E194697194715%_))
                            (_%$%E194697194715%_)))))
                  (_%$%E194697194715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E194697194715%_)))))
                                      (_%$%E194697194715%_)))))
                            (_%$%E194697194715%_)))))
                (_%$%E194696194770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r194641%_
                                                    _%specs194689%_))))))
                                          (_%$%E194651194663%_))))
                                  (_%$%E194651194663%_))))
                           (_%$%E194643194796%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194642194659%_)
                                  (let ((_%$%e194645194778%_
                                         (gx#syntax-e _%$%e194642194659%_)))
                                    (let ((_%$%hd194646194781%_
                                           (##car _%$%e194645194778%_))
                                          (_%$%tl194647194783%_
                                           (##cdr _%$%e194645194778%_)))
                                      (if (gx#stx-pair? _%$%tl194647194783%_)
                                          (let ((_%$%e194648194786%_
                                                 (gx#syntax-e
                                                  _%$%tl194647194783%_)))
                                            (let ((_%$%hd194649194789%_
                                                   (##car _%$%e194648194786%_))
                                                  (_%$%tl194650194791%_
                                                   (##cdr _%$%e194648194786%_)))
                                              (let ((_%path194794%_
                                                     _%$%hd194649194789%_))
                                                (if (gx#stx-null?
                                                     _%$%tl194650194791%_)
                                                    (_%K194639%_
                                                     _%rest194640%_
                                                     (cons (_%import-spec-source194567%_
                                                            _%path194794%_)
                                                           _%r194641%_))
                                                    (_%$%E194644194774%_)))))
                                          (_%$%E194644194774%_))))
                                  (_%$%E194644194774%_)))))
                      (_%$%E194643194796%_))))
                 (_%import-spec-source194567%_
                  (lambda (_%spath194636%_)
                    (gx#core-import-nested-module
                     _%spath194636%_
                     _%stx194559%_)))
                 (_%import!194568%_
                  (lambda (_%rbody194581%_)
                    (letrec* ((_%current-ctx194583%_
                               (gx#current-expander-context))
                              (_%deps194584%_ (make-hash-table-eq))
                              (_%bind!194585%_
                               (lambda (_%hd194634%_)
                                 (gx#core-bind-import!__1
                                  _%hd194634%_
                                  _%current-ctx194583%_))))
                      (let _%lp194587%_ ((_%rest194589%_ _%rbody194581%_)
                                         (_%body194590%_ '()))
                        (let* ((_%$%rest194591194599%_ _%rest194589%_)
                               (_%$%else194593194610%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx194583%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx194583%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx194583%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body194590%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx194607%_ _%_194608%_)
                                     (gx#eval-module _%ctx194607%_))
                                   _%deps194584%_)
                                  _%body194590%_))
                               (_%$%K194595194622%_
                                (lambda (_%rest194613%_ _%hd194614%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd194614%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!194585%_ _%hd194614%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd194614%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd194614%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps194584%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd194614%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd194614%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!194585%_
                                             (##unchecked-structure-ref
                                              _%hd194614%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd194614%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps194584%_
                                                 (##unchecked-structure-ref
                                                  _%hd194614%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e194618%_
                                                 (##structure-instance-of?
                                                  _%hd194614%_
                                                  'gx#module-context::t)))
                                            (if _%$e194618%_
                                                _%$e194618%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx194559%_
                                                 _%hd194614%_)))))
                                  (_%lp194587%_
                                   _%rest194613%_
                                   (cons _%hd194614%_ _%body194590%_)))))
                          (if (pair? _%$%rest194591194599%_)
                              (let ((_%$%hd194596194625%_
                                     (##car _%$%rest194591194599%_))
                                    (_%$%tl194597194627%_
                                     (##cdr _%$%rest194591194599%_)))
                                (let* ((_%hd194630%_ _%$%hd194596194625%_)
                                       (_%rest194632%_ _%$%tl194597194627%_))
                                  (_%$%K194595194622%_
                                   _%rest194632%_
                                   _%hd194630%_)))
                              (_%$%else194593194610%_)))))))
                 (_%expanded-import?194569%_
                  (lambda (_%e194573%_)
                    (let ((_%$e194575%_
                           (##structure-direct-instance-of?
                            _%e194573%_
                            'gx#import-set::t)))
                      (if _%$e194575%_
                          _%$e194575%_
                          (let ((_%$e194578%_
                                 (##structure-direct-instance-of?
                                  _%e194573%_
                                  'gx#module-import::t)))
                            (if _%$e194578%_
                                _%$e194578%_
                                (##structure-instance-of?
                                 _%e194573%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody194571%_
                 (gx#core-expand-import/export
                  _%stx194559%_
                  _%expanded-import?194569%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1194562%_)))
            (if _%internal-expand?194560%_
                (reverse _%rbody194571%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!194568%_ _%rbody194571%_))
                 (gx#stx-source _%stx194559%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx194898%_)
        (let ((_%internal-expand?194900%_ '#f))
          (gx#core-expand-import%__%
           _%stx194898%_
           _%internal-expand?194900%_))))
    (define gx#core-expand-import%
      (lambda _g197656_
        (let ((_g197657_ (##length _g197656_)))
          (cond ((##fx= _g197657_ 1)
                 (apply gx#core-expand-import%__0 _g197656_))
                ((##fx= _g197657_ 2)
                 (apply gx#core-expand-import%__% _g197656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g197656_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath194486%_ _%where194487%_)
        (let* ((_%$%e194488194495%_ _%spath194486%_)
               (_%$%E194490194499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e194488194495%_)))
               (_%$%E194489194554%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e194488194495%_)
                      (let ((_%$%e194491194503%_
                             (gx#syntax-e _%$%e194488194495%_)))
                        (let ((_%$%hd194492194506%_
                               (##car _%$%e194491194503%_))
                              (_%$%tl194493194508%_
                               (##cdr _%$%e194491194503%_)))
                          (let* ((_%origin194511%_ _%$%hd194492194506%_)
                                 (_%sub194513%_ _%$%tl194493194508%_)
                                 (_%origin-ctx194515%_
                                  (if (gx#stx-false? _%origin194511%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin194511%_))))
                            (let _%lp194517%_ ((_%rest194519%_ _%sub194513%_)
                                               (_%ctx194520%_
                                                _%origin-ctx194515%_))
                              (let* ((_%$%e194521194528%_ _%rest194519%_)
                                     (_%$%E194523194532%_
                                      (lambda () _%ctx194520%_))
                                     (_%$%E194522194550%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e194521194528%_)
                                            (let ((_%$%e194524194536%_
                                                   (gx#syntax-e
                                                    _%$%e194521194528%_)))
                                              (let ((_%$%hd194525194539%_
                                                     (##car _%$%e194524194536%_))
                                                    (_%$%tl194526194541%_
                                                     (##cdr _%$%e194524194536%_)))
                                                (let* ((_%id194544%_
                                                        _%$%hd194525194539%_)
                                                       (_%rest194546%_
                                                        _%$%tl194526194541%_)
                                                       (_%bind194548%_
                                                        (gx#resolve-identifier__%
                                                         _%id194544%_
                                                         '0
                                                         _%ctx194520%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind194548%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind194548%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where194487%_
                                                       _%spath194486%_
                                                       _%id194544%_))
                                                  (_%lp194517%_
                                                   _%rest194546%_
                                                   (##unchecked-structure-ref
                                                    _%bind194548%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E194523194532%_)))))
                                (_%$%E194522194550%_))))))
                      (_%$%E194490194499%_)))))
          (_%$%E194489194554%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd194484%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd194484%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx193979%_ _%internal-expand?193980%_)
        (letrec* ((_%make-export__197584197585%_
                   (lambda (_%bind194432%_
                            _%phi194433%_
                            _%ctx194434%_
                            _%name194435%_)
                     (let* ((_%key194437%_
                             (##unchecked-structure-ref
                              _%bind194432%_
                              '2
                              '#f
                              '#f))
                            (_%export-key194439%_
                             (if _%name194435%_
                                 (gx#core-identifier-key _%name194435%_)
                                 _%key194437%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx194434%_
                        _%key194437%_
                        _%phi194433%_
                        _%export-key194439%_
                        (let ((_%$e194442%_
                               (##structure-instance-of?
                                _%bind194432%_
                                'gx#extern-binding::t)))
                          (if _%$e194442%_
                              _%$e194442%_
                              (##structure-direct-instance-of?
                               _%bind194432%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__197586197589%_
                   (lambda (_%bind194448%_)
                     (let* ((_%phi194450%_ (gx#current-export-expander-phi))
                            (_%ctx194452%_ (gx#current-expander-context))
                            (_%name194454%_ '#f))
                       (_%make-export__197584197585%_
                        _%bind194448%_
                        _%phi194450%_
                        _%ctx194452%_
                        _%name194454%_))))
                  (_%make-export__1__197587197590%_
                   (lambda (_%bind194456%_ _%phi194457%_)
                     (let* ((_%ctx194459%_ (gx#current-expander-context))
                            (_%name194461%_ '#f))
                       (_%make-export__197584197585%_
                        _%bind194456%_
                        _%phi194457%_
                        _%ctx194459%_
                        _%name194461%_))))
                  (_%make-export__2__197588197591%_
                   (lambda (_%bind194463%_ _%phi194464%_ _%ctx194465%_)
                     (let ((_%name194467%_ '#f))
                       (_%make-export__197584197585%_
                        _%bind194463%_
                        _%phi194464%_
                        _%ctx194465%_
                        _%name194467%_))))
                  (_%make-export193982%_
                   (lambda _g197658_
                     (let ((_g197659_ (##length _g197658_)))
                       (cond ((##fx= _g197659_ 1)
                              (apply _%make-export__0__197586197589%_
                                     _g197658_))
                             ((##fx= _g197659_ 2)
                              (apply _%make-export__1__197587197590%_
                                     _g197658_))
                             ((##fx= _g197659_ 3)
                              (apply _%make-export__2__197588197591%_
                                     _g197658_))
                             ((##fx= _g197659_ 4)
                              (apply _%make-export__197584197585%_ _g197658_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g197658_))))))
                  (_%expand1193983%_
                   (lambda (_%hd194137%_
                            _%K194138%_
                            _%rest194139%_
                            _%r194140%_)
                     (let* ((_%$%e194141194173%_ _%hd194137%_)
                            (_%$%E194168194177%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx193979%_
                                _%hd194137%_)))
                            (_%$%E194158194261%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194141194173%_)
                                   (let ((_%$%e194169194181%_
                                          (gx#syntax-e _%$%e194141194173%_)))
                                     (let ((_%$%hd194170194184%_
                                            (##car _%$%e194169194181%_))
                                           (_%$%tl194171194186%_
                                            (##cdr _%$%e194169194181%_)))
                                       (if (eq? (gx#stx-e _%$%hd194170194184%_)
                                                'import:)
                                           (let ((_%in194189%_
                                                  _%$%tl194171194186%_))
                                             (if (gx#stx-list? _%in194189%_)
                                                 (let _%lp194191%_ ((_%in-rest194193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in194189%_)
                            (_%r194194%_ _%r194140%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e194195194202%_
                                                           _%in-rest194193%_)
                                                          (_%$%E194197194206%_
                                                           (lambda ()
                                                             (_%K194138%_
                                                              _%rest194139%_
                                                              _%r194194%_)))
                                                          (_%$%E194196194257%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e194195194202%_)
                         (let ((_%$%e194198194210%_
                                (gx#syntax-e _%$%e194195194202%_)))
                           (let ((_%$%hd194199194213%_
                                  (##car _%$%e194198194210%_))
                                 (_%$%tl194200194215%_
                                  (##cdr _%$%e194198194210%_)))
                             (let* ((_%hd194218%_ _%$%hd194199194213%_)
                                    (_%in-rest194220%_ _%$%tl194200194215%_)
                                    (_%src194255%_
                                     (if (gx#core-bound-module? _%hd194218%_)
                                         (gx#syntax-local-e__0 _%hd194218%_)
                                         (if (gx#core-library-module-path?
                                              _%hd194218%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd194218%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd194218%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd194218%_))
                                                 (if (gx#stx-string?
                                                      _%hd194218%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd194218%_
                                                       (gx#stx-source
                                                        _%stx193979%_)))
                                                     (let* ((_%$%e194226194233%_
                                                             _%hd194218%_)
                                                            (_%$%E194228194237%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx193979%_
                                                                _%hd194218%_)))
                                                            (_%$%E194227194251%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e194226194233%_)
                           (let ((_%$%e194229194241%_
                                  (gx#syntax-e _%$%e194226194233%_)))
                             (let ((_%$%hd194230194244%_
                                    (##car _%$%e194229194241%_))
                                   (_%$%tl194231194246%_
                                    (##cdr _%$%e194229194241%_)))
                               (if (eq? (gx#stx-e _%$%hd194230194244%_) 'in:)
                                   (let ((_%spath194249%_
                                          _%$%tl194231194246%_))
                                     (gx#core-import-nested-module
                                      _%spath194249%_
                                      _%stx193979%_))
                                   (_%$%E194228194237%_))))
                           (_%$%E194228194237%_)))))
               (_%$%E194227194251%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp194191%_
                                _%in-rest194220%_
                                (_%export-imports193984%_
                                 _%src194255%_
                                 _%r194194%_)))))
                         (_%$%E194197194206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E194196194257%_)))
                                                 (_%$%E194168194177%_)))
                                           (_%$%E194168194177%_))))
                                   (_%$%E194168194177%_))))
                            (_%$%E194145194301%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194141194173%_)
                                   (let ((_%$%e194159194265%_
                                          (gx#syntax-e _%$%e194141194173%_)))
                                     (let ((_%$%hd194160194268%_
                                            (##car _%$%e194159194265%_))
                                           (_%$%tl194161194270%_
                                            (##cdr _%$%e194159194265%_)))
                                       (if (eq? (gx#stx-e _%$%hd194160194268%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl194161194270%_)
                                               (let ((_%$%e194162194273%_
                                                      (gx#syntax-e
                                                       _%$%tl194161194270%_)))
                                                 (let ((_%$%hd194163194276%_
                                                        (##car _%$%e194162194273%_))
                                                       (_%$%tl194164194278%_
                                                        (##cdr _%$%e194162194273%_)))
                                                   (let ((_%id194281%_
                                                          _%$%hd194163194276%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl194164194278%_)
                                                         (let ((_%$%e194165194283%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl194164194278%_)))
                   (let ((_%$%hd194166194286%_ (##car _%$%e194165194283%_))
                         (_%$%tl194167194288%_ (##cdr _%$%e194165194283%_)))
                     (let ((_%name194291%_ _%$%hd194166194286%_))
                       (if (gx#stx-null? _%$%tl194167194288%_)
                           (let* ((_%phi194293%_
                                   (gx#current-export-expander-phi))
                                  (_%$e194295%_
                                   (gx#core-resolve-identifier__1
                                    _%id194281%_
                                    _%phi194293%_)))
                             (if _%$e194295%_
                                 (_%K194138%_
                                  _%rest194139%_
                                  (cons (_%make-export__197584197585%_
                                         _%$e194295%_
                                         _%phi194293%_
                                         (gx#current-expander-context)
                                         _%name194291%_)
                                        _%r194140%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx193979%_
                                  _%hd194137%_
                                  _%id194281%_)))
                           (_%$%E194158194261%_)))))
                 (_%$%E194158194261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E194158194261%_))
                                           (_%$%E194158194261%_))))
                                   (_%$%E194158194261%_))))
                            (_%$%E194144194351%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194141194173%_)
                                   (let ((_%$%e194146194305%_
                                          (gx#syntax-e _%$%e194141194173%_)))
                                     (let ((_%$%hd194147194308%_
                                            (##car _%$%e194146194305%_))
                                           (_%$%tl194148194310%_
                                            (##cdr _%$%e194146194305%_)))
                                       (if (eq? (gx#stx-e _%$%hd194147194308%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl194148194310%_)
                                               (let ((_%$%e194149194313%_
                                                      (gx#syntax-e
                                                       _%$%tl194148194310%_)))
                                                 (let ((_%$%hd194150194316%_
                                                        (##car _%$%e194149194313%_))
                                                       (_%$%tl194151194318%_
                                                        (##cdr _%$%e194149194313%_)))
                                                   (let ((_%phi194321%_
                                                          _%$%hd194150194316%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl194151194318%_)
                                                         (let ((_%$%e194152194323%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl194151194318%_)))
                   (let ((_%$%hd194153194326%_ (##car _%$%e194152194323%_))
                         (_%$%tl194154194328%_ (##cdr _%$%e194152194323%_)))
                     (let ((_%id194331%_ _%$%hd194153194326%_))
                       (if (gx#stx-pair? _%$%tl194154194328%_)
                           (let ((_%$%e194155194333%_
                                  (gx#syntax-e _%$%tl194154194328%_)))
                             (let ((_%$%hd194156194336%_
                                    (##car _%$%e194155194333%_))
                                   (_%$%tl194157194338%_
                                    (##cdr _%$%e194155194333%_)))
                               (let ((_%name194341%_ _%$%hd194156194336%_))
                                 (if (gx#stx-null? _%$%tl194157194338%_)
                                     (if (and (gx#stx-fixnum? _%phi194321%_)
                                              (gx#identifier? _%id194331%_)
                                              (gx#identifier? _%name194341%_))
                                         (let* ((_%phi194343%_
                                                 (gx#stx-e _%phi194321%_))
                                                (_%$e194345%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id194331%_
                                                  _%phi194343%_)))
                                           (if _%$e194345%_
                                               (_%K194138%_
                                                _%rest194139%_
                                                (cons (_%make-export__197584197585%_
                                                       _%$e194345%_
                                                       _%phi194343%_
                                                       (gx#current-expander-context)
                                                       _%name194341%_)
                                                      _%r194140%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx193979%_
                                                _%hd194137%_
                                                _%id194331%_)))
                                         (_%$%E194145194301%_))
                                     (_%$%E194145194301%_)))))
                           (_%$%E194145194301%_)))))
                 (_%$%E194145194301%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E194145194301%_))
                                           (_%$%E194145194301%_))))
                                   (_%$%E194145194301%_))))
                            (_%$%E194143194363%_
                             (lambda ()
                               (let ((_%id194355%_ _%$%e194141194173%_))
                                 (if (gx#identifier? _%id194355%_)
                                     (let ((_%$e194357%_
                                            (gx#core-resolve-identifier__1
                                             _%id194355%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e194357%_
                                           (_%K194138%_
                                            _%rest194139%_
                                            (cons (_%make-export__0__197586197589%_
                                                   _%$e194357%_)
                                                  _%r194140%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx193979%_
                                            _%hd194137%_)))
                                     (_%$%E194144194351%_)))))
                            (_%$%E194142194427%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e194141194173%_) '#t)
                                   (let* ((_%current-ctx194367%_
                                           (gx#current-expander-context))
                                          (_%current-phi194369%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx194371%_
                                           (gx#core-context-shift
                                            _%current-ctx194367%_
                                            _%current-phi194369%_))
                                          (_%phi-bind194373%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx194371%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp194376%_ ((_%bind-rest194378%_
                                                         _%phi-bind194373%_)
                                                        (_%set194379%_ '()))
                                       (let* ((_%$%bind-rest194380194390%_
                                               _%bind-rest194378%_)
                                              (_%$%else194382194398%_
                                               (lambda ()
                                                 (_%K194138%_
                                                  _%rest194139%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi194369%_
                                                         _%set194379%_)
                                                        _%r194140%_))))
                                              (_%$%K194384194408%_
                                               (lambda (_%bind-rest194401%_
                                                        _%bind194402%_
                                                        _%key194403%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind194402%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind194402%_))
                                                     (_%lp194376%_
                                                      _%bind-rest194401%_
                                                      _%set194379%_)
                                                     (_%lp194376%_
                                                      _%bind-rest194401%_
                                                      (cons (_%make-export__2__197588197591%_
                                                             _%bind194402%_
                                                             _%current-phi194369%_
                                                             _%current-ctx194367%_)
                                                            _%set194379%_))))))
                                         (if (pair? _%$%bind-rest194380194390%_)
                                             (let ((_%$%hd194385194411%_
                                                    (##car _%$%bind-rest194380194390%_))
                                                   (_%$%tl194386194413%_
                                                    (##cdr _%$%bind-rest194380194390%_)))
                                               (if (pair? _%$%hd194385194411%_)
                                                   (let ((_%$%hd194387194416%_
                                                          (##car _%$%hd194385194411%_))
                                                         (_%$%tl194388194418%_
                                                          (##cdr _%$%hd194385194411%_)))
                                                     (let* ((_%key194421%_
                                                             _%$%hd194387194416%_)
                                                            (_%bind194423%_
                                                             _%$%tl194388194418%_)
                                                            (_%bind-rest194425%_
                                                             _%$%tl194386194413%_))
                                                       (_%$%K194384194408%_
                                                        _%bind-rest194425%_
                                                        _%bind194423%_
                                                        _%key194421%_)))
                                                   (_%$%else194382194398%_)))
                                             (_%$%else194382194398%_)))))
                                   (_%$%E194143194363%_)))))
                       (_%$%E194142194427%_))))
                  (_%export-imports193984%_
                   (lambda (_%src194014%_ _%r194015%_)
                     (letrec* ((_%current-ctx194017%_
                                (gx#current-expander-context))
                               (_%current-phi194018%_
                                (gx#current-export-expander-phi))
                               (_%import->export194019%_
                                (lambda (_%in194100%_)
                                  (let* ((_%$%in194101194109%_ _%in194100%_)
                                         (_%$%E194103194112%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in194101194109%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K194104194119%_
                                          (lambda (_%phi194115%_
                                                   _%key194116%_
                                                   _%out194117%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx194017%_
                                             _%key194116%_
                                             _%phi194115%_
                                             _%key194116%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in194101194109%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e194105194122%_
                                                (##unchecked-structure-ref
                                                 _%$%in194101194109%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out194125%_
                                                _%$%e194105194122%_)
                                               (_%$%e194106194127%_
                                                (##unchecked-structure-ref
                                                 _%$%in194101194109%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key194130%_
                                                _%$%e194106194127%_)
                                               (_%$%e194107194132%_
                                                (##unchecked-structure-ref
                                                 _%$%in194101194109%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi194135%_
                                                _%$%e194107194132%_))
                                          (_%$%K194104194119%_
                                           _%phi194135%_
                                           _%key194130%_
                                           _%out194125%_))
                                        (_%$%E194103194112%_)))))
                               (_%fold-e194020%_
                                (lambda (_%in194022%_ _%r194023%_)
                                  (let* ((_%$%in194024194038%_ _%in194022%_)
                                         (_%$%else194027194046%_
                                          (lambda () _%r194023%_)))
                                    (let ((_%$%K194033194082%_
                                           (lambda (_%phi194078%_
                                                    _%key194079%_
                                                    _%out194080%_)
                                             (if (and (fx= _%phi194078%_
                                                           _%current-phi194018%_)
                                                      (eq? _%src194014%_
                                                           (##unchecked-structure-ref
                                                            _%out194080%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export194019%_
                                                        _%in194022%_)
                                                       _%r194023%_)
                                                 _%r194023%_)))
                                          (_%$%K194029194057%_
                                           (lambda (_%imports194050%_
                                                    _%phi194051%_
                                                    _%ctx194052%_)
                                             (if (and (fx= _%phi194051%_
                                                           _%current-phi194018%_)
                                                      (eq? _%src194014%_
                                                           _%ctx194052%_))
                                                 (foldl__0
                                                  (lambda (_%in194054%_
                                                           _%r194055%_)
                                                    (cons (_%import->export194019%_
                                                           _%in194054%_)
                                                          _%r194055%_))
                                                  _%r194023%_
                                                  _%imports194050%_)
                                                 _%r194023%_))))
                                      (let ((_%$%try-match194026194075%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in194024194038%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e194030194060%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194024194038%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e194031194065%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194024194038%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e194032194070%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194024194038%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx194063%_
                                                            _%$%e194030194060%_)
                                                           (_%phi194068%_
                                                            _%$%e194031194065%_)
                                                           (_%imports194073%_
                                                            _%$%e194032194070%_))
                                                       (_%$%K194029194057%_
                                                        _%imports194073%_
                                                        _%phi194068%_
                                                        _%ctx194063%_)))
                                                   (_%$%else194027194046%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in194024194038%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e194034194085%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194024194038%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e194035194090%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194024194038%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e194036194095%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194024194038%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out194088%_
                                                     _%$%e194034194085%_)
                                                    (_%key194093%_
                                                     _%$%e194035194090%_)
                                                    (_%phi194098%_
                                                     _%$%e194036194095%_))
                                                (_%$%K194033194082%_
                                                 _%phi194098%_
                                                 _%key194093%_
                                                 _%out194088%_)))
                                            (_%$%try-match194026194075%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src194014%_
                              _%current-phi194018%_
                              (foldl__0
                               _%fold-e194020%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx194017%_
                                '8
                                '#f
                                '#f)))
                             _%r194015%_))))
                  (_%export!193985%_
                   (lambda (_%rbody194001%_)
                     (letrec* ((_%current-ctx194003%_
                                (gx#current-expander-context))
                               (_%fold-e194004%_
                                (lambda (_%out194008%_ _%r194009%_)
                                  (if (##structure-direct-instance-of?
                                       _%out194008%_
                                       'gx#module-export::t)
                                      (cons _%out194008%_ _%r194009%_)
                                      (if (##structure-direct-instance-of?
                                           _%out194008%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r194009%_
                                           (##unchecked-structure-ref
                                            _%out194008%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r194009%_)))))
                       (let ((_%body194006%_ (reverse _%rbody194001%_)))
                         (##unchecked-structure-set!
                          _%current-ctx194003%_
                          (foldl__0
                           _%fold-e194004%_
                           (##unchecked-structure-ref
                            _%current-ctx194003%_
                            '9
                            '#f
                            '#f)
                           _%body194006%_)
                          '9
                          '#f
                          '#f)
                         _%body194006%_))))
                  (_%expanded-export?193986%_
                   (lambda (_%e193996%_)
                     (let ((_%$e193998%_
                            (##structure-direct-instance-of?
                             _%e193996%_
                             'gx#module-export::t)))
                       (if _%$e193998%_
                           _%$e193998%_
                           (##structure-direct-instance-of?
                            _%e193996%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?193980%_)
              (let ((_%rbody193992%_
                     (gx#core-expand-import/export
                      _%stx193979%_
                      _%expanded-export?193986%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1193983%_)))
                (if _%internal-expand?193980%_
                    (reverse _%rbody193992%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!193985%_ _%rbody193992%_))
                     (gx#stx-source _%stx193979%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx193979%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx193979%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx194477%_)
        (let ((_%internal-expand?194479%_ '#f))
          (gx#core-expand-export%__%
           _%stx194477%_
           _%internal-expand?194479%_))))
    (define gx#core-expand-export%
      (lambda _g197660_
        (let ((_g197661_ (##length _g197660_)))
          (cond ((##fx= _g197661_ 1)
                 (apply gx#core-expand-export%__0 _g197660_))
                ((##fx= _g197661_ 2)
                 (apply gx#core-expand-export%__% _g197660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g197660_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd193976%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd193976%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx193946%_)
        (let* ((_%$%e193947193954%_ _%stx193946%_)
               (_%$%E193949193958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193947193954%_)))
               (_%$%E193948193972%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193947193954%_)
                      (let ((_%$%e193950193962%_
                             (gx#syntax-e _%$%e193947193954%_)))
                        (let ((_%$%hd193951193965%_
                               (##car _%$%e193950193962%_))
                              (_%$%tl193952193967%_
                               (##cdr _%$%e193950193962%_)))
                          (let ((_%body193970%_ _%$%tl193952193967%_))
                            (if (gx#identifier-list? _%body193970%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body193970%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body193970%_))
                                   (gx#stx-source _%stx193946%_)))
                                (_%$%E193949193958%_)))))
                      (_%$%E193949193958%_)))))
          (_%$%E193948193972%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id193912%_ _%private?193913%_ _%phi193914%_ _%ctx193915%_)
        (gx#core-bind-syntax!__%
         _%id193912%_
         ((if _%private?193913%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id193912%_))
         _%private?193913%_
         _%phi193914%_
         _%ctx193915%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id193920%_)
        (let* ((_%private?193922%_ '#f)
               (_%phi193924%_ (gx#current-expander-phi))
               (_%ctx193926%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id193920%_
           _%private?193922%_
           _%phi193924%_
           _%ctx193926%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id193928%_ _%private?193929%_)
        (let* ((_%phi193931%_ (gx#current-expander-phi))
               (_%ctx193933%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id193928%_
           _%private?193929%_
           _%phi193931%_
           _%ctx193933%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id193935%_ _%private?193936%_ _%phi193937%_)
        (let ((_%ctx193939%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id193935%_
           _%private?193936%_
           _%phi193937%_
           _%ctx193939%_))))
    (define gx#core-bind-feature!
      (lambda _g197662_
        (let ((_g197663_ (##length _g197662_)))
          (cond ((##fx= _g197663_ 1)
                 (apply gx#core-bind-feature!__0 _g197662_))
                ((##fx= _g197663_ 2)
                 (apply gx#core-bind-feature!__1 _g197662_))
                ((##fx= _g197663_ 3)
                 (apply gx#core-bind-feature!__2 _g197662_))
                ((##fx= _g197663_ 4)
                 (apply gx#core-bind-feature!__% _g197662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g197662_))))))))
