(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g107339_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107341_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107343_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107345_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107346_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107347_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107348_|
    (##structure
     gx#syntax-quote::t
     'type-env-nullable?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107349_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107351_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107352_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107353_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107354_|
    (##structure
     gx#syntax-quote::t
     'type-env-nullable?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107355_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107357_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107358_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107359_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107360_|
    (##structure
     gx#syntax-quote::t
     '&type-env-nullable?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107361_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107363_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107364_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107365_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107366_|
    (##structure
     gx#syntax-quote::t
     '&type-env-nullable?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107367_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj107150
           (let ()
             (declare (not safe))
             (##structure
              gerbil/core/mop~MOP-2#class-type-info::t
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
              '#f
              '#f
              '#f))))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj107150
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj107150
         '(var type checked? nullable? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 '#f '13 '#f '#f))
      (let ((__tmp107338 |gerbil/core/contract~TypeEnv[1]#_g107339_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107338 '4 '#f '#f))
      (let ((__tmp107340 |gerbil/core/contract~TypeEnv[1]#_g107341_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107340 '14 '#f '#f))
      (let ((__tmp107342 |gerbil/core/contract~TypeEnv[1]#_g107343_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107342 '15 '#f '#f))
      (let ((__tmp107344
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107345_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107346_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107347_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107348_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107349_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107344 '16 '#f '#f))
      (let ((__tmp107350
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107351_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107352_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107353_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107354_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107355_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107350 '17 '#f '#f))
      (let ((__tmp107356
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107357_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107358_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107359_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107360_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107361_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107356 '18 '#f '#f))
      (let ((__tmp107362
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107363_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107364_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107365_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107366_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107367_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj107150 __tmp107362 '19 '#f '#f))
      __obj107150)))
