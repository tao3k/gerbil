(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1789188905)
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
      (let ((__tmp147120 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp147120 '())))
    (define subtyped::t
      (let ((__tmp147121 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp147121 '())))
    (define structure::t
      (let ((__tmp147122 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp147122 '())))
    (define immediate::t
      (let ((__tmp147123 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp147123 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp147124 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp147124 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp147125 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp147125 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp147126 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp147126 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp147127 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp147127 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp147128 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp147128 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp147129 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp147129 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp147130 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp147130 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp147131 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp147131 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp147132 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp147132 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp147133 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp147133 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp147134 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp147134 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp147135 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp147135 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp147136 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp147136 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp147137 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp147137 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp147138 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp147138 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp147139 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp147139 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp147140 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp147140 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp147141 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp147141 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp147142 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp147142 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp147143 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp147143 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp147144 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp147144 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp147145 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp147145 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp147146 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp147146 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp147147 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp147147 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp147148 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp147148 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp147149 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp147149 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp147150 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp147150 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp147151 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp147151 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp147152 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp147152 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp147153 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp147153 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp147154 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp147154 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp147155 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp147155 '())))
    (define pair::t
      (let ((__tmp147156 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp147156 '())))
    (define null::t
      (let ((__tmp147157 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp147157 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp147158 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp147158 '())))
    (define vector::t
      (let ((__tmp147159 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp147159 '())))
    (define string::t
      (let ((__tmp147160 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp147160 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp147161 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp147161 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp147162 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp147162 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp147163 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp147163 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp147164 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp147164 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp147165 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp147165 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp147166 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp147166 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp147167 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp147167 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp147168 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp147168 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp147169 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp147169 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp147170 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp147170 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp147171 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp147171 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp147172 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp147172 '())))
    (define values::t
      (let ((__tmp147173 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp147173 '())))
    (define box::t
      (let ((__tmp147174 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp147174 '())))
    (define frame::t
      (let ((__tmp147175 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp147175 '())))
    (define continuation::t
      (let ((__tmp147176 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp147176 '())))
    (define promise::t
      (let ((__tmp147177 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp147177 '())))
    (define weak::t
      (let ((__tmp147178 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp147178 '())))
    (define foreign::t
      (let ((__tmp147179 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp147179 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp147180 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp147180 '())))
    (define return::t
      (let ((__tmp147181 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp147181 '())))
    (define time::t
      (let ((__tmp147182 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp147182 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp147183 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp147183 '())))
    (define thread-group::t
      (let ((__tmp147184 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp147184 '())))
    (define mutex::t
      (let ((__tmp147185 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp147185 '())))
    (define condvar::t
      (let ((__tmp147186 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp147186 '())))
    (define port::t
      (let ((__tmp147187 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147187 '())))
    (define object-port::t
      (let ((__tmp147188 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147188 '())))
    (define character-port::t
      (let ((__tmp147189 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147189 '())))
    (define byte-port::t
      (let ((__tmp147190 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147190 '())))
    (define device-port::t
      (let ((__tmp147191 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147191 '())))
    (define vector-port::t
      (let ((__tmp147192 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147192 '())))
    (define string-port::t
      (let ((__tmp147193 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147193 '())))
    (define u8vector-port::t
      (let ((__tmp147194 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147194 '())))
    (define raw-device-port::t
      (let ((__tmp147195 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147195 '())))
    (define tcp-server-port::t
      (let ((__tmp147196 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147196 '())))
    (define udp-port::t
      (let ((__tmp147197 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147197 '())))
    (define directory-port::t
      (let ((__tmp147198 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147198 '())))
    (define event-queue-port::t
      (let ((__tmp147199 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147199 '())))
    (define table::t
      (let ((__tmp147200 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp147200 '())))
    (define readenv::t
      (let ((__tmp147201 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147201 '())))
    (define writeenv::t
      (let ((__tmp147202 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147202 '())))
    (define readtable::t
      (let ((__tmp147203 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp147203 '())))
    (define processor::t
      (let ((__tmp147204 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp147204 '())))
    (define vm::t
      (let ((__tmp147205 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp147205 '())))
    (define file-info::t
      (let ((__tmp147206 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147206 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp147207 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147207 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp147208 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147208 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj147116%_)
        (let ((_%$e147118%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj147116%_)))))
          (if _%$e147118%_
              _%$e147118%_
              (not (let ((__tmp147209
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj147116%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp147209 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj147114%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147114%_))
            (builtin-object? _%obj147114%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj147112%_)
        (if (let () (declare (not safe)) (##structure? _%obj147112%_))
            (not (let ((__tmp147210
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj147112%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp147210 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj147110%_)
        (if (let () (declare (not safe)) (##special? _%obj147110%_))
            (let ((__tmp147211
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj147110%_ '0))))
              (declare (not safe))
              (##fx< __tmp147211 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj147108%_)
        (let () (declare (not safe)) (##special? _%obj147108%_))))
    (define unbound-object?
      (lambda (_%obj147106%_) (eq? _%obj147106%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj147104%_) (eq? _%obj147104%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj147102%_) (eq? _%obj147102%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj147100%_) (eq? _%obj147100%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj147098%_) (eq? _%obj147098%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj147090%_)
        (let ((_%$e147092%_ (eq? _%obj147090%_ '#!key)))
          (if _%$e147092%_
              _%$e147092%_
              (let ((_%$e147095%_ (eq? _%obj147090%_ '#!optional)))
                (if _%$e147095%_ _%$e147095%_ (eq? _%obj147090%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj147088%_) (eq? _%obj147088%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj147086%_) (eq? _%obj147086%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj147084%_) (eq? _%obj147084%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj147082%_)
        (if (flonum? _%obj147082%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj147082%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj147080%_)
        (if (flonum? _%obj147080%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj147080%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec147077%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147077%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-string) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147077%_ (macro-subtype-f64vector) '#t)
        _%vec147077%_))
    (define sequence?
      (lambda (_%obj147075%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147075%_))
            (let ((__tmp147212
                   (let () (declare (not safe)) (##subtype _%obj147075%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp147212))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec147072%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147072%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147072%_ (macro-subtype-f64vector) '#t)
        _%vec147072%_))
    (define hvector?
      (lambda (_%obj147070%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147070%_))
            (let ((__tmp147213
                   (let () (declare (not safe)) (##subtype _%obj147070%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp147213))
            '#f)))
    (define weak?
      (lambda (_%obj147068%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147068%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj147068%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj147066%_)
        (let ((__tmp147214
               (let ((__tmp147215 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp147215))))
          (declare (not safe))
          (##structure-instance-of? _%obj147066%_ __tmp147214))))
    (define character-port?
      (lambda (_%obj147064%_)
        (let ((__tmp147216
               (let ((__tmp147217 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp147217))))
          (declare (not safe))
          (##structure-instance-of? _%obj147064%_ __tmp147216))))
    (define byte-port?
      (lambda (_%obj147062%_)
        (let ((__tmp147218
               (let ((__tmp147219 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp147219))))
          (declare (not safe))
          (##structure-instance-of? _%obj147062%_ __tmp147218))))
    (define device-port?
      (lambda (_%obj147060%_)
        (let ((__tmp147220
               (let ((__tmp147221 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147221))))
          (declare (not safe))
          (##structure-instance-of? _%obj147060%_ __tmp147220))))
    (define vector-port?
      (lambda (_%obj147058%_)
        (let ((__tmp147222
               (let ((__tmp147223 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147223))))
          (declare (not safe))
          (##structure-instance-of? _%obj147058%_ __tmp147222))))
    (define string-port?
      (lambda (_%obj147056%_)
        (let ((__tmp147224
               (let ((__tmp147225 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp147225))))
          (declare (not safe))
          (##structure-instance-of? _%obj147056%_ __tmp147224))))
    (define u8vector-port?
      (lambda (_%obj147054%_)
        (let ((__tmp147226
               (let ((__tmp147227 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147227))))
          (declare (not safe))
          (##structure-instance-of? _%obj147054%_ __tmp147226))))
    (define raw-device-port?
      (lambda (_%obj147052%_)
        (let ((__tmp147228
               (let ((__tmp147229 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147229))))
          (declare (not safe))
          (##structure-instance-of? _%obj147052%_ __tmp147228))))
    (define tcp-server-port?
      (lambda (_%obj147050%_)
        (let ((__tmp147230
               (let ((__tmp147231 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp147231))))
          (declare (not safe))
          (##structure-instance-of? _%obj147050%_ __tmp147230))))
    (define udp-port?
      (lambda (_%obj147048%_)
        (let ((__tmp147232
               (let ((__tmp147233 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp147233))))
          (declare (not safe))
          (##structure-instance-of? _%obj147048%_ __tmp147232))))
    (define directory-port?
      (lambda (_%obj147046%_)
        (let ((__tmp147234
               (let ((__tmp147235 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp147235))))
          (declare (not safe))
          (##structure-instance-of? _%obj147046%_ __tmp147234))))
    (define event-queue-port?
      (lambda (_%obj147044%_)
        (let ((__tmp147236
               (let ((__tmp147237 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp147237))))
          (declare (not safe))
          (##structure-instance-of? _%obj147044%_ __tmp147236))))
    (define readenv?
      (lambda (_%obj147042%_)
        (let ((__tmp147238
               (let ((__tmp147239 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp147239))))
          (declare (not safe))
          (##structure-instance-of? _%obj147042%_ __tmp147238))))
    (define writeenv?
      (lambda (_%obj147040%_)
        (let ((__tmp147240
               (let ((__tmp147241 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp147241))))
          (declare (not safe))
          (##structure-instance-of? _%obj147040%_ __tmp147240))))
    (define vm?
      (lambda (_%obj147038%_)
        (let ((__tmp147242
               (let ((__tmp147243 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp147243))))
          (declare (not safe))
          (##structure-instance-of? _%obj147038%_ __tmp147242))))))
