(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1789839223)
  (begin
    (declare
      (not optimize-dead-definitions
           builtin::t
           subtyped::t
           structure::t
           immediate::t
           special::t
           atom::t
           char::t
           boolean::t
           true::t
           false::t
           eof::t
           void::t
           unbound::t
           unbound2::t
           dssl-token::t
           optional::t
           rest::t
           key::t
           number::t
           real::t
           integer::t
           fixnum::t
           bignum::t
           ratnum::t
           flonum::t
           stflonum::t
           haflonum::t
           cpxnum::t
           symbolic::t
           symbol::t
           keyword::t
           list::t
           pair::t
           null::t
           sequence::t
           vector::t
           string::t
           hvector::t
           u8vector::t
           s8vector::t
           u16vector::t
           s16vector::t
           u32vector::t
           s32vector::t
           u64vector::t
           s64vector::t
           f32vector::t
           f64vector::t
           values::t
           box::t
           frame::t
           continuation::t
           promise::t
           weak::t
           foreign::t
           procedure::t
           return::t))
    (define builtin::t
      (let ((__tmp149309 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp149309 '())))
    (define subtyped::t
      (let ((__tmp149310 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp149310 '())))
    (define structure::t
      (let ((__tmp149311 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp149311 '())))
    (define immediate::t
      (let ((__tmp149312 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp149312 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp149313 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp149313 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp149314 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp149314 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp149315 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp149315 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp149316 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp149316 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp149317 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp149317 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp149318 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp149318 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp149319 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp149319 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp149320 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp149320 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp149321 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp149321 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp149322 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp149322 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp149323 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp149323 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp149324 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp149324 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp149325 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp149325 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp149326 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp149326 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp149327 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp149327 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp149328 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp149328 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp149329 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp149329 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp149330 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp149330 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp149331 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp149331 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp149332 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp149332 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp149333 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp149333 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp149334 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp149334 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp149335 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp149335 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp149336 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp149336 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp149337 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp149337 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp149338 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp149338 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp149339 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp149339 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp149340 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp149340 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp149341 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp149341 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp149342 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp149342 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp149343 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp149343 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp149344 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp149344 '())))
    (define pair::t
      (let ((__tmp149345 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp149345 '())))
    (define null::t
      (let ((__tmp149346 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp149346 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp149347 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp149347 '())))
    (define vector::t
      (let ((__tmp149348 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp149348 '())))
    (define string::t
      (let ((__tmp149349 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp149349 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp149350 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp149350 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp149351 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp149351 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp149352 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp149352 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp149353 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp149353 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp149354 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp149354 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp149355 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp149355 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp149356 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp149356 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp149357 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp149357 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp149358 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp149358 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp149359 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp149359 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp149360 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp149360 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp149361 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp149361 '())))
    (define values::t
      (let ((__tmp149362 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp149362 '())))
    (define box::t
      (let ((__tmp149363 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp149363 '())))
    (define frame::t
      (let ((__tmp149364 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp149364 '())))
    (define continuation::t
      (let ((__tmp149365 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp149365 '())))
    (define promise::t
      (let ((__tmp149366 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp149366 '())))
    (define weak::t
      (let ((__tmp149367 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp149367 '())))
    (define foreign::t
      (let ((__tmp149368 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp149368 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp149369 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp149369 '())))
    (define return::t
      (let ((__tmp149370 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp149370 '())))
    (define time::t
      (let ((__tmp149371 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp149371 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp149372 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp149372 '())))
    (define thread-group::t
      (let ((__tmp149373 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp149373 '())))
    (define mutex::t
      (let ((__tmp149374 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp149374 '())))
    (define condvar::t
      (let ((__tmp149375 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp149375 '())))
    (define port::t
      (let ((__tmp149376 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149376 '())))
    (define object-port::t
      (let ((__tmp149377 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149377 '())))
    (define character-port::t
      (let ((__tmp149378 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149378 '())))
    (define byte-port::t
      (let ((__tmp149379 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149379 '())))
    (define device-port::t
      (let ((__tmp149380 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149380 '())))
    (define vector-port::t
      (let ((__tmp149381 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149381 '())))
    (define string-port::t
      (let ((__tmp149382 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149382 '())))
    (define u8vector-port::t
      (let ((__tmp149383 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149383 '())))
    (define raw-device-port::t
      (let ((__tmp149384 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149384 '())))
    (define tcp-server-port::t
      (let ((__tmp149385 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149385 '())))
    (define udp-port::t
      (let ((__tmp149386 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149386 '())))
    (define directory-port::t
      (let ((__tmp149387 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149387 '())))
    (define event-queue-port::t
      (let ((__tmp149388 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149388 '())))
    (define table::t
      (let ((__tmp149389 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp149389 '())))
    (define readenv::t
      (let ((__tmp149390 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp149390 '())))
    (define writeenv::t
      (let ((__tmp149391 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp149391 '())))
    (define readtable::t
      (let ((__tmp149392 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp149392 '())))
    (define processor::t
      (let ((__tmp149393 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp149393 '())))
    (define vm::t
      (let ((__tmp149394 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp149394 '())))
    (define file-info::t
      (let ((__tmp149395 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149395 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp149396 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149396 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp149397 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149397 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj149305%_)
        (let ((_%$e149307%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj149305%_)))))
          (if _%$e149307%_
              _%$e149307%_
              (not (let ((__tmp149398
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj149305%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp149398 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj149303%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149303%_))
            (builtin-object? _%obj149303%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj149301%_)
        (if (let () (declare (not safe)) (##structure? _%obj149301%_))
            (not (let ((__tmp149399
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj149301%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp149399 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj149299%_)
        (if (let () (declare (not safe)) (##special? _%obj149299%_))
            (let ((__tmp149400
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj149299%_ '0))))
              (declare (not safe))
              (##fx< __tmp149400 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj149297%_)
        (let () (declare (not safe)) (##special? _%obj149297%_))))
    (define unbound-object?
      (lambda (_%obj149295%_) (eq? _%obj149295%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj149293%_) (eq? _%obj149293%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj149291%_) (eq? _%obj149291%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj149289%_) (eq? _%obj149289%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj149287%_) (eq? _%obj149287%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj149279%_)
        (let ((_%$e149281%_ (eq? _%obj149279%_ '#!key)))
          (if _%$e149281%_
              _%$e149281%_
              (let ((_%$e149284%_ (eq? _%obj149279%_ '#!optional)))
                (if _%$e149284%_ _%$e149284%_ (eq? _%obj149279%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj149277%_) (eq? _%obj149277%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj149275%_) (eq? _%obj149275%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj149273%_) (eq? _%obj149273%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj149271%_)
        (if (flonum? _%obj149271%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj149271%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj149269%_)
        (if (flonum? _%obj149269%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj149269%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec149266%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec149266%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-string) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec149266%_ (macro-subtype-f64vector) '#t)
        _%vec149266%_))
    (define sequence?
      (lambda (_%obj149264%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149264%_))
            (let ((__tmp149401
                   (let () (declare (not safe)) (##subtype _%obj149264%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp149401))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec149261%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec149261%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec149261%_ (macro-subtype-f64vector) '#t)
        _%vec149261%_))
    (define hvector?
      (lambda (_%obj149259%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149259%_))
            (let ((__tmp149402
                   (let () (declare (not safe)) (##subtype _%obj149259%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp149402))
            '#f)))
    (define weak?
      (lambda (_%obj149257%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149257%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj149257%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj149255%_)
        (let ((__tmp149403
               (let ((__tmp149404 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp149404))))
          (declare (not safe))
          (##structure-instance-of? _%obj149255%_ __tmp149403))))
    (define character-port?
      (lambda (_%obj149253%_)
        (let ((__tmp149405
               (let ((__tmp149406 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp149406))))
          (declare (not safe))
          (##structure-instance-of? _%obj149253%_ __tmp149405))))
    (define byte-port?
      (lambda (_%obj149251%_)
        (let ((__tmp149407
               (let ((__tmp149408 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp149408))))
          (declare (not safe))
          (##structure-instance-of? _%obj149251%_ __tmp149407))))
    (define device-port?
      (lambda (_%obj149249%_)
        (let ((__tmp149409
               (let ((__tmp149410 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp149410))))
          (declare (not safe))
          (##structure-instance-of? _%obj149249%_ __tmp149409))))
    (define vector-port?
      (lambda (_%obj149247%_)
        (let ((__tmp149411
               (let ((__tmp149412 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp149412))))
          (declare (not safe))
          (##structure-instance-of? _%obj149247%_ __tmp149411))))
    (define string-port?
      (lambda (_%obj149245%_)
        (let ((__tmp149413
               (let ((__tmp149414 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp149414))))
          (declare (not safe))
          (##structure-instance-of? _%obj149245%_ __tmp149413))))
    (define u8vector-port?
      (lambda (_%obj149243%_)
        (let ((__tmp149415
               (let ((__tmp149416 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp149416))))
          (declare (not safe))
          (##structure-instance-of? _%obj149243%_ __tmp149415))))
    (define raw-device-port?
      (lambda (_%obj149241%_)
        (let ((__tmp149417
               (let ((__tmp149418 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp149418))))
          (declare (not safe))
          (##structure-instance-of? _%obj149241%_ __tmp149417))))
    (define tcp-server-port?
      (lambda (_%obj149239%_)
        (let ((__tmp149419
               (let ((__tmp149420 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp149420))))
          (declare (not safe))
          (##structure-instance-of? _%obj149239%_ __tmp149419))))
    (define udp-port?
      (lambda (_%obj149237%_)
        (let ((__tmp149421
               (let ((__tmp149422 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp149422))))
          (declare (not safe))
          (##structure-instance-of? _%obj149237%_ __tmp149421))))
    (define directory-port?
      (lambda (_%obj149235%_)
        (let ((__tmp149423
               (let ((__tmp149424 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp149424))))
          (declare (not safe))
          (##structure-instance-of? _%obj149235%_ __tmp149423))))
    (define event-queue-port?
      (lambda (_%obj149233%_)
        (let ((__tmp149425
               (let ((__tmp149426 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp149426))))
          (declare (not safe))
          (##structure-instance-of? _%obj149233%_ __tmp149425))))
    (define readenv?
      (lambda (_%obj149231%_)
        (let ((__tmp149427
               (let ((__tmp149428 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp149428))))
          (declare (not safe))
          (##structure-instance-of? _%obj149231%_ __tmp149427))))
    (define writeenv?
      (lambda (_%obj149229%_)
        (let ((__tmp149429
               (let ((__tmp149430 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp149430))))
          (declare (not safe))
          (##structure-instance-of? _%obj149229%_ __tmp149429))))
    (define vm?
      (lambda (_%obj149227%_)
        (let ((__tmp149431
               (let ((__tmp149432 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp149432))))
          (declare (not safe))
          (##structure-instance-of? _%obj149227%_ __tmp149431))))))
