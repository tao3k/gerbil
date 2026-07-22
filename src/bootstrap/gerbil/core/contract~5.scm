(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g105380_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105382_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105384_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105386_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105387_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105388_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105389_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105391_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105392_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105393_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105394_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105396_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105397_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105398_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105399_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105401_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105402_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105403_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g105404_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj105203
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
         __obj105203
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj105203
         '(var type checked? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 '#f '13 '#f '#f))
      (let ((__tmp105379 |gerbil/core/contract~TypeEnv[1]#_g105380_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105379 '4 '#f '#f))
      (let ((__tmp105381 |gerbil/core/contract~TypeEnv[1]#_g105382_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105381 '14 '#f '#f))
      (let ((__tmp105383 |gerbil/core/contract~TypeEnv[1]#_g105384_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105383 '15 '#f '#f))
      (let ((__tmp105385
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105386_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105387_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105388_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105389_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105385 '16 '#f '#f))
      (let ((__tmp105390
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105391_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105392_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105393_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105394_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105390 '17 '#f '#f))
      (let ((__tmp105395
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105396_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105397_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105398_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105399_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105395 '18 '#f '#f))
      (let ((__tmp105400
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g105401_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g105402_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g105403_|)
                               (cons (cons 'super
                                           |gerbil/core/contract~TypeEnv[1]#_g105404_|)
                                     '()))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj105203 __tmp105400 '19 '#f '#f))
      __obj105203)))
