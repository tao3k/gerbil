(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeEnv[1]#_g107181_|
    (##structure
     gx#syntax-quote::t
     'type-env::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107183_|
    (##structure
     gx#syntax-quote::t
     'make-type-env
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107185_|
    (##structure
     gx#syntax-quote::t
     'type-env?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107187_|
    (##structure
     gx#syntax-quote::t
     'type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107188_|
    (##structure
     gx#syntax-quote::t
     'type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107189_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107190_|
    (##structure
     gx#syntax-quote::t
     'type-env-nullable?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107191_|
    (##structure
     gx#syntax-quote::t
     'type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107193_|
    (##structure
     gx#syntax-quote::t
     'type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107194_|
    (##structure
     gx#syntax-quote::t
     'type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107195_|
    (##structure
     gx#syntax-quote::t
     'type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107196_|
    (##structure
     gx#syntax-quote::t
     'type-env-nullable?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107197_|
    (##structure
     gx#syntax-quote::t
     'type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107199_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107200_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107201_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107202_|
    (##structure
     gx#syntax-quote::t
     '&type-env-nullable?
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107203_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107205_|
    (##structure
     gx#syntax-quote::t
     '&type-env-var-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107206_|
    (##structure
     gx#syntax-quote::t
     '&type-env-type-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107207_|
    (##structure
     gx#syntax-quote::t
     '&type-env-checked?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107208_|
    (##structure
     gx#syntax-quote::t
     '&type-env-nullable?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[1]#_g107209_|
    (##structure
     gx#syntax-quote::t
     '&type-env-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypeEnv[:0:]#type-env|
    (let ((__obj106992
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
         __obj106992
         'gerbil/core/contract~TypeEnv#type-env::t
         '2
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 'type-env '3 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set!
         __obj106992
         '(var type checked? nullable? super)
         '6
         '#f
         '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 '() '5 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 '#t '9 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 '#t '10 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 '#f '12 '#f '#f))
      (let ()
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 '#f '13 '#f '#f))
      (let ((__tmp107180 |gerbil/core/contract~TypeEnv[1]#_g107181_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107180 '4 '#f '#f))
      (let ((__tmp107182 |gerbil/core/contract~TypeEnv[1]#_g107183_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107182 '14 '#f '#f))
      (let ((__tmp107184 |gerbil/core/contract~TypeEnv[1]#_g107185_|))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107184 '15 '#f '#f))
      (let ((__tmp107186
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107187_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107188_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107189_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107190_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107191_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107186 '16 '#f '#f))
      (let ((__tmp107192
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107193_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107194_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107195_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107196_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107197_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107192 '17 '#f '#f))
      (let ((__tmp107198
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107199_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107200_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107201_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107202_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107203_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107198 '18 '#f '#f))
      (let ((__tmp107204
             (cons (cons 'var |gerbil/core/contract~TypeEnv[1]#_g107205_|)
                   (cons (cons 'type
                               |gerbil/core/contract~TypeEnv[1]#_g107206_|)
                         (cons (cons 'checked?
                                     |gerbil/core/contract~TypeEnv[1]#_g107207_|)
                               (cons (cons 'nullable?
                                           |gerbil/core/contract~TypeEnv[1]#_g107208_|)
                                     (cons (cons 'super
                                                 |gerbil/core/contract~TypeEnv[1]#_g107209_|)
                                           '())))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj106992 __tmp107204 '19 '#f '#f))
      __obj106992)))
