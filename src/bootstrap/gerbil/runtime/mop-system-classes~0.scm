(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1784758122)
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
      (let ((__tmp147137 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp147137 '())))
    (define subtyped::t
      (let ((__tmp147138 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp147138 '())))
    (define structure::t
      (let ((__tmp147139 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp147139 '())))
    (define immediate::t
      (let ((__tmp147140 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp147140 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp147141 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp147141 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp147142 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp147142 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp147143 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp147143 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp147144 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp147144 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp147145 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp147145 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp147146 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp147146 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp147147 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp147147 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp147148 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp147148 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp147149 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp147149 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp147150 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp147150 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp147151 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp147151 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp147152 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp147152 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp147153 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp147153 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp147154 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp147154 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp147155 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp147155 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp147156 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp147156 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp147157 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp147157 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp147158 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp147158 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp147159 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp147159 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp147160 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp147160 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp147161 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp147161 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp147162 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp147162 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp147163 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp147163 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp147164 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp147164 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp147165 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp147165 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp147166 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp147166 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp147167 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp147167 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp147168 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp147168 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp147169 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp147169 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp147170 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp147170 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp147171 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp147171 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp147172 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp147172 '())))
    (define pair::t
      (let ((__tmp147173 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp147173 '())))
    (define null::t
      (let ((__tmp147174 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp147174 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp147175 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp147175 '())))
    (define vector::t
      (let ((__tmp147176 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp147176 '())))
    (define string::t
      (let ((__tmp147177 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp147177 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp147178 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp147178 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp147179 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp147179 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp147180 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp147180 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp147181 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp147181 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp147182 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp147182 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp147183 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp147183 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp147184 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp147184 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp147185 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp147185 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp147186 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp147186 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp147187 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp147187 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp147188 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp147188 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp147189 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp147189 '())))
    (define values::t
      (let ((__tmp147190 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp147190 '())))
    (define box::t
      (let ((__tmp147191 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp147191 '())))
    (define frame::t
      (let ((__tmp147192 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp147192 '())))
    (define continuation::t
      (let ((__tmp147193 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp147193 '())))
    (define promise::t
      (let ((__tmp147194 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp147194 '())))
    (define weak::t
      (let ((__tmp147195 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp147195 '())))
    (define foreign::t
      (let ((__tmp147196 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp147196 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp147197 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp147197 '())))
    (define return::t
      (let ((__tmp147198 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp147198 '())))
    (define time::t
      (let ((__tmp147199 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp147199 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp147200 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp147200 '())))
    (define thread-group::t
      (let ((__tmp147201 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp147201 '())))
    (define mutex::t
      (let ((__tmp147202 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp147202 '())))
    (define condvar::t
      (let ((__tmp147203 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp147203 '())))
    (define port::t
      (let ((__tmp147204 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147204 '())))
    (define object-port::t
      (let ((__tmp147205 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147205 '())))
    (define character-port::t
      (let ((__tmp147206 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147206 '())))
    (define byte-port::t
      (let ((__tmp147207 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147207 '())))
    (define device-port::t
      (let ((__tmp147208 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147208 '())))
    (define vector-port::t
      (let ((__tmp147209 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147209 '())))
    (define string-port::t
      (let ((__tmp147210 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147210 '())))
    (define u8vector-port::t
      (let ((__tmp147211 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147211 '())))
    (define raw-device-port::t
      (let ((__tmp147212 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147212 '())))
    (define tcp-server-port::t
      (let ((__tmp147213 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147213 '())))
    (define udp-port::t
      (let ((__tmp147214 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147214 '())))
    (define directory-port::t
      (let ((__tmp147215 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147215 '())))
    (define event-queue-port::t
      (let ((__tmp147216 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp147216 '())))
    (define table::t
      (let ((__tmp147217 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp147217 '())))
    (define readenv::t
      (let ((__tmp147218 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147218 '())))
    (define writeenv::t
      (let ((__tmp147219 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp147219 '())))
    (define readtable::t
      (let ((__tmp147220 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp147220 '())))
    (define processor::t
      (let ((__tmp147221 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp147221 '())))
    (define vm::t
      (let ((__tmp147222 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp147222 '())))
    (define file-info::t
      (let ((__tmp147223 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147223 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp147224 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147224 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp147225 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp147225 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj147133%_)
        (let ((_%$e147135%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj147133%_)))))
          (if _%$e147135%_
              _%$e147135%_
              (not (let ((__tmp147226
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj147133%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp147226 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj147131%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147131%_))
            (builtin-object? _%obj147131%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj147129%_)
        (if (let () (declare (not safe)) (##structure? _%obj147129%_))
            (not (let ((__tmp147227
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj147129%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp147227 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj147127%_)
        (if (let () (declare (not safe)) (##special? _%obj147127%_))
            (let ((__tmp147228
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj147127%_ '0))))
              (declare (not safe))
              (##fx< __tmp147228 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj147125%_)
        (let () (declare (not safe)) (##special? _%obj147125%_))))
    (define unbound-object?
      (lambda (_%obj147123%_) (eq? _%obj147123%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj147121%_) (eq? _%obj147121%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj147119%_) (eq? _%obj147119%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj147117%_) (eq? _%obj147117%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj147115%_) (eq? _%obj147115%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj147107%_)
        (let ((_%$e147109%_ (eq? _%obj147107%_ '#!key)))
          (if _%$e147109%_
              _%$e147109%_
              (let ((_%$e147112%_ (eq? _%obj147107%_ '#!optional)))
                (if _%$e147112%_ _%$e147112%_ (eq? _%obj147107%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj147105%_) (eq? _%obj147105%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj147103%_) (eq? _%obj147103%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj147101%_) (eq? _%obj147101%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj147099%_)
        (if (flonum? _%obj147099%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj147099%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj147097%_)
        (if (flonum? _%obj147097%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj147097%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec147094%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147094%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-string) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147094%_ (macro-subtype-f64vector) '#t)
        _%vec147094%_))
    (define sequence?
      (lambda (_%obj147092%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147092%_))
            (let ((__tmp147229
                   (let () (declare (not safe)) (##subtype _%obj147092%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp147229))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec147089%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec147089%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec147089%_ (macro-subtype-f64vector) '#t)
        _%vec147089%_))
    (define hvector?
      (lambda (_%obj147087%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147087%_))
            (let ((__tmp147230
                   (let () (declare (not safe)) (##subtype _%obj147087%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp147230))
            '#f)))
    (define weak?
      (lambda (_%obj147085%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj147085%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj147085%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj147083%_)
        (let ((__tmp147231
               (let ((__tmp147232 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp147232))))
          (declare (not safe))
          (##structure-instance-of? _%obj147083%_ __tmp147231))))
    (define character-port?
      (lambda (_%obj147081%_)
        (let ((__tmp147233
               (let ((__tmp147234 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp147234))))
          (declare (not safe))
          (##structure-instance-of? _%obj147081%_ __tmp147233))))
    (define byte-port?
      (lambda (_%obj147079%_)
        (let ((__tmp147235
               (let ((__tmp147236 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp147236))))
          (declare (not safe))
          (##structure-instance-of? _%obj147079%_ __tmp147235))))
    (define device-port?
      (lambda (_%obj147077%_)
        (let ((__tmp147237
               (let ((__tmp147238 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147238))))
          (declare (not safe))
          (##structure-instance-of? _%obj147077%_ __tmp147237))))
    (define vector-port?
      (lambda (_%obj147075%_)
        (let ((__tmp147239
               (let ((__tmp147240 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147240))))
          (declare (not safe))
          (##structure-instance-of? _%obj147075%_ __tmp147239))))
    (define string-port?
      (lambda (_%obj147073%_)
        (let ((__tmp147241
               (let ((__tmp147242 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp147242))))
          (declare (not safe))
          (##structure-instance-of? _%obj147073%_ __tmp147241))))
    (define u8vector-port?
      (lambda (_%obj147071%_)
        (let ((__tmp147243
               (let ((__tmp147244 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp147244))))
          (declare (not safe))
          (##structure-instance-of? _%obj147071%_ __tmp147243))))
    (define raw-device-port?
      (lambda (_%obj147069%_)
        (let ((__tmp147245
               (let ((__tmp147246 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp147246))))
          (declare (not safe))
          (##structure-instance-of? _%obj147069%_ __tmp147245))))
    (define tcp-server-port?
      (lambda (_%obj147067%_)
        (let ((__tmp147247
               (let ((__tmp147248 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp147248))))
          (declare (not safe))
          (##structure-instance-of? _%obj147067%_ __tmp147247))))
    (define udp-port?
      (lambda (_%obj147065%_)
        (let ((__tmp147249
               (let ((__tmp147250 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp147250))))
          (declare (not safe))
          (##structure-instance-of? _%obj147065%_ __tmp147249))))
    (define directory-port?
      (lambda (_%obj147063%_)
        (let ((__tmp147251
               (let ((__tmp147252 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp147252))))
          (declare (not safe))
          (##structure-instance-of? _%obj147063%_ __tmp147251))))
    (define event-queue-port?
      (lambda (_%obj147061%_)
        (let ((__tmp147253
               (let ((__tmp147254 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp147254))))
          (declare (not safe))
          (##structure-instance-of? _%obj147061%_ __tmp147253))))
    (define readenv?
      (lambda (_%obj147059%_)
        (let ((__tmp147255
               (let ((__tmp147256 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp147256))))
          (declare (not safe))
          (##structure-instance-of? _%obj147059%_ __tmp147255))))
    (define writeenv?
      (lambda (_%obj147057%_)
        (let ((__tmp147257
               (let ((__tmp147258 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp147258))))
          (declare (not safe))
          (##structure-instance-of? _%obj147057%_ __tmp147257))))
    (define vm?
      (lambda (_%obj147055%_)
        (let ((__tmp147259
               (let ((__tmp147260 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp147260))))
          (declare (not safe))
          (##structure-instance-of? _%obj147055%_ __tmp147259))))))
