(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1784461441)
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
      (let ((__tmp147110 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp147110 '())))
    (define subtyped::t
      (let ((__tmp147111 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp147111 '())))
    (define structure::t
      (let ((__tmp147112 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp147112 '())))
    (define immediate::t
      (let ((__tmp147113 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp147113 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp147114 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp147114 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp147115 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp147115 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp147116 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp147116 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp147117 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp147117 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp147118 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp147118 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp147119 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp147119 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp147120 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp147120 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp147121 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp147121 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp147122 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp147122 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp147123 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp147123 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp147124 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp147124 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp147125 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp147125 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp147126 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp147126 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp147127 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp147127 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp147128 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp147128 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp147129 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp147129 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp147130 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp147130 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp147131 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp147131 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp147132 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp147132 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp147133 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp147133 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp147134 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp147134 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp147135 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp147135 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp147136 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp147136 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp147137 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp147137 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp147138 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp147138 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp147139 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp147139 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp147140 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp147140 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp147141 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp147141 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp147142 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp147142 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp147143 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp147143 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp147144 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp147144 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp147145 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp147145 '())))
    (define pair::t
      (let ((__tmp147146 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp147146 '())))
    (define null::t
      (let ((__tmp147147 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp147147 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp147148 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp147148 '())))
    (define vector::t
      (let ((__tmp147149 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp147149 '())))
    (define string::t
      (let ((__tmp147150 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp147150 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp147151 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp147151 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp147152 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp147152 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp147153 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp147153 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp147154 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp147154 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp147155 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp147155 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp147156 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp147156 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp147157 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp147157 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp147158 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp147158 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp147159 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp147159 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp147160 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp147160 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp147161 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp147161 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp147162 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp147162 '())))
    (define values::t
      (let ((__tmp147163 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp147163 '())))
    (define box::t
      (let ((__tmp147164 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp147164 '())))
    (define frame::t
      (let ((__tmp147165 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp147165 '())))
    (define continuation::t
      (let ((__tmp147166 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp147166 '())))
    (define promise::t
      (let ((__tmp147167 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp147167 '())))
    (define weak::t
      (let ((__tmp147168 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp147168 '())))
    (define foreign::t
      (let ((__tmp147169 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp147169 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp147170 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp147170 '())))
    (define return::t
      (let ((__tmp147171 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp147171 '())))
    (define time::t
      (let ((__tmp147172 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp147172 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp147173 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp147173 '())))
    (define thread-group::t
      (let ((__tmp147174 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp147174 '())))
    (define mutex::t
      (let ((__tmp147175 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp147175 '())))
    (define condvar::t
      (let ((__tmp147176 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp147176 '())))
    (define port::t
      (let ((__tmp147177 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147177 '())))
    (define object-port::t
      (let ((__tmp147178 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147178 '())))
    (define character-port::t
      (let ((__tmp147179 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147179 '())))
    (define byte-port::t
      (let ((__tmp147180 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147180 '())))
    (define device-port::t
      (let ((__tmp147181 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147181 '())))
    (define vector-port::t
      (let ((__tmp147182 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147182 '())))
    (define string-port::t
      (let ((__tmp147183 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147183 '())))
    (define u8vector-port::t
      (let ((__tmp147184 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147184 '())))
    (define raw-device-port::t
      (let ((__tmp147185 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147185 '())))
    (define tcp-server-port::t
      (let ((__tmp147186 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147186 '())))
    (define udp-port::t
      (let ((__tmp147187 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147187 '())))
    (define directory-port::t
      (let ((__tmp147188 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147188 '())))
    (define event-queue-port::t
      (let ((__tmp147189 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147189 '())))
    (define table::t
      (let ((__tmp147190 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp147190 '())))
    (define readenv::t
      (let ((__tmp147191 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147191 '())))
    (define writeenv::t
      (let ((__tmp147192 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147192 '())))
    (define readtable::t
      (let ((__tmp147193 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp147193 '())))
    (define processor::t
      (let ((__tmp147194 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp147194 '())))
    (define vm::t
      (let ((__tmp147195 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp147195 '())))
    (define file-info::t
      (let ((__tmp147196 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147196 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp147197 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147197 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp147198 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147198 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj147106%_)
        (let ((_%$e147108%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj147106%_)))))
          (if _%$e147108%_
              _%$e147108%_
              (not (let ((__tmp147199
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj147106%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp147199 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj147104%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147104%_))
            (builtin-object? _%obj147104%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj147102%_)
        (if (let () (declare (not safe)) (##structure? _%obj147102%_))
            (not (let ((__tmp147200
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj147102%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp147200 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj147100%_)
        (if (let () (declare (not safe)) (##special? _%obj147100%_))
            (let ((__tmp147201
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj147100%_ '0))))
              (declare (not safe))
              (##fx< __tmp147201 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj147098%_)
        (let () (declare (not safe)) (##special? _%obj147098%_))))
    (define unbound-object?
      (lambda (_%obj147096%_) (eq? _%obj147096%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj147094%_) (eq? _%obj147094%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj147092%_) (eq? _%obj147092%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj147090%_) (eq? _%obj147090%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj147088%_) (eq? _%obj147088%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj147080%_)
        (let ((_%$e147082%_ (eq? _%obj147080%_ '#!key)))
          (if _%$e147082%_
              _%$e147082%_
              (let ((_%$e147085%_ (eq? _%obj147080%_ '#!optional)))
                (if _%$e147085%_ _%$e147085%_ (eq? _%obj147080%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj147078%_) (eq? _%obj147078%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj147076%_) (eq? _%obj147076%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj147074%_) (eq? _%obj147074%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj147072%_)
        (if (flonum? _%obj147072%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj147072%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj147070%_)
        (if (flonum? _%obj147070%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj147070%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec147067%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147067%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-string) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147067%_ (macro-subtype-f64vector) '#t)
        _%vec147067%_))
    (define sequence?
      (lambda (_%obj147065%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147065%_))
            (let ((__tmp147202
                   (let () (declare (not safe)) (##subtype _%obj147065%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp147202))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec147062%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147062%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147062%_ (macro-subtype-f64vector) '#t)
        _%vec147062%_))
    (define hvector?
      (lambda (_%obj147060%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147060%_))
            (let ((__tmp147203
                   (let () (declare (not safe)) (##subtype _%obj147060%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp147203))
            '#f)))
    (define weak?
      (lambda (_%obj147058%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147058%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj147058%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj147056%_)
        (let ((__tmp147204
               (let ((__tmp147205 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp147205))))
          (declare (not safe))
          (##structure-instance-of? _%obj147056%_ __tmp147204))))
    (define character-port?
      (lambda (_%obj147054%_)
        (let ((__tmp147206
               (let ((__tmp147207 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp147207))))
          (declare (not safe))
          (##structure-instance-of? _%obj147054%_ __tmp147206))))
    (define byte-port?
      (lambda (_%obj147052%_)
        (let ((__tmp147208
               (let ((__tmp147209 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp147209))))
          (declare (not safe))
          (##structure-instance-of? _%obj147052%_ __tmp147208))))
    (define device-port?
      (lambda (_%obj147050%_)
        (let ((__tmp147210
               (let ((__tmp147211 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147211))))
          (declare (not safe))
          (##structure-instance-of? _%obj147050%_ __tmp147210))))
    (define vector-port?
      (lambda (_%obj147048%_)
        (let ((__tmp147212
               (let ((__tmp147213 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147213))))
          (declare (not safe))
          (##structure-instance-of? _%obj147048%_ __tmp147212))))
    (define string-port?
      (lambda (_%obj147046%_)
        (let ((__tmp147214
               (let ((__tmp147215 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp147215))))
          (declare (not safe))
          (##structure-instance-of? _%obj147046%_ __tmp147214))))
    (define u8vector-port?
      (lambda (_%obj147044%_)
        (let ((__tmp147216
               (let ((__tmp147217 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147217))))
          (declare (not safe))
          (##structure-instance-of? _%obj147044%_ __tmp147216))))
    (define raw-device-port?
      (lambda (_%obj147042%_)
        (let ((__tmp147218
               (let ((__tmp147219 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147219))))
          (declare (not safe))
          (##structure-instance-of? _%obj147042%_ __tmp147218))))
    (define tcp-server-port?
      (lambda (_%obj147040%_)
        (let ((__tmp147220
               (let ((__tmp147221 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp147221))))
          (declare (not safe))
          (##structure-instance-of? _%obj147040%_ __tmp147220))))
    (define udp-port?
      (lambda (_%obj147038%_)
        (let ((__tmp147222
               (let ((__tmp147223 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp147223))))
          (declare (not safe))
          (##structure-instance-of? _%obj147038%_ __tmp147222))))
    (define directory-port?
      (lambda (_%obj147036%_)
        (let ((__tmp147224
               (let ((__tmp147225 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp147225))))
          (declare (not safe))
          (##structure-instance-of? _%obj147036%_ __tmp147224))))
    (define event-queue-port?
      (lambda (_%obj147034%_)
        (let ((__tmp147226
               (let ((__tmp147227 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp147227))))
          (declare (not safe))
          (##structure-instance-of? _%obj147034%_ __tmp147226))))
    (define readenv?
      (lambda (_%obj147032%_)
        (let ((__tmp147228
               (let ((__tmp147229 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp147229))))
          (declare (not safe))
          (##structure-instance-of? _%obj147032%_ __tmp147228))))
    (define writeenv?
      (lambda (_%obj147030%_)
        (let ((__tmp147230
               (let ((__tmp147231 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp147231))))
          (declare (not safe))
          (##structure-instance-of? _%obj147030%_ __tmp147230))))
    (define vm?
      (lambda (_%obj147028%_)
        (let ((__tmp147232
               (let ((__tmp147233 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp147233))))
          (declare (not safe))
          (##structure-instance-of? _%obj147028%_ __tmp147232))))))
