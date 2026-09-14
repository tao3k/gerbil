(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop-system-classes::timestamp 1789371524)
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
      (let ((__tmp149147 (cons t::t '())))
        (declare (not safe))
        (__make-system-class 'builtin __tmp149147 '())))
    (define subtyped::t
      (let ((__tmp149148 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'subtyped __tmp149148 '())))
    (define structure::t
      (let ((__tmp149149 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'structure __tmp149149 '())))
    (define immediate::t
      (let ((__tmp149150 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'immediate __tmp149150 '((acyclic: . #t)))))
    (define special::t
      (let ((__tmp149151 (cons immediate::t '())))
        (declare (not safe))
        (__make-system-class 'special __tmp149151 '((acyclic: . #t)))))
    (define atom::t
      (let ((__tmp149152 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'atom __tmp149152 '((acyclic: . #t)))))
    (define char::t
      (let ((__tmp149153 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'char __tmp149153 '((acyclic: . #t)))))
    (define boolean::t
      (let ((__tmp149154 (cons special::t '())))
        (declare (not safe))
        (__make-system-class 'boolean __tmp149154 '((acyclic: . #t)))))
    (define true::t
      (let ((__tmp149155 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'true __tmp149155 '((acyclic: . #t)))))
    (define false::t
      (let ((__tmp149156 (cons boolean::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'false __tmp149156 '((acyclic: . #t)))))
    (define eof::t
      (let ((__tmp149157 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'eof __tmp149157 '((acyclic: . #t)))))
    (define void::t
      (let ((__tmp149158 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'void __tmp149158 '((acyclic: . #t)))))
    (define unbound::t
      (let ((__tmp149159 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound __tmp149159 '((acyclic: . #t)))))
    (define unbound2::t
      (let ((__tmp149160 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unbound2 __tmp149160 '((acyclic: . #t)))))
    (define unused::t
      (let ((__tmp149161 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unused __tmp149161 '((acyclic: . #t)))))
    (define deleted::t
      (let ((__tmp149162 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'deleted __tmp149162 '((acyclic: . #t)))))
    (define absent::t
      (let ((__tmp149163 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'absent __tmp149163 '((acyclic: . #t)))))
    (define dssl-token::t
      (let ((__tmp149164 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'dssl-token __tmp149164 '((acyclic: . #t)))))
    (define optional::t
      (let ((__tmp149165 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'optional __tmp149165 '((acyclic: . #t)))))
    (define rest::t
      (let ((__tmp149166 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'rest __tmp149166 '((acyclic: . #t)))))
    (define key::t
      (let ((__tmp149167 (cons dssl-token::t '())))
        (declare (not safe))
        (__make-system-class 'key __tmp149167 '((acyclic: . #t)))))
    (define unknown::t
      (let ((__tmp149168 (cons atom::t '())))
        (declare (not safe))
        (__make-system-class 'unknown __tmp149168 '((acyclic: . #t)))))
    (define number::t
      (let ((__tmp149169 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'number __tmp149169 '((acyclic: . #t)))))
    (define real::t
      (let ((__tmp149170 (cons number::t '())))
        (declare (not safe))
        (__make-system-class 'real __tmp149170 '((acyclic: . #t)))))
    (define integer::t
      (let ((__tmp149171 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'integer __tmp149171 '((acyclic: . #t)))))
    (define fixnum::t
      (let ((__tmp149172 (cons integer::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'fixnum __tmp149172 '((acyclic: . #t)))))
    (define bignum::t
      (let ((__tmp149173 (cons integer::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'bignum __tmp149173 '((acyclic: . #t)))))
    (define ratnum::t
      (let ((__tmp149174 (cons real::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'ratnum __tmp149174 '((acyclic: . #t)))))
    (define flonum::t
      (let ((__tmp149175 (cons real::t '())))
        (declare (not safe))
        (__make-system-class 'flonum __tmp149175 '((acyclic: . #t)))))
    (define stflonum::t
      (let ((__tmp149176 (cons flonum::t (cons immediate::t '()))))
        (declare (not safe))
        (__make-system-class 'stflonum __tmp149176 '((acyclic: . #t)))))
    (define haflonum::t
      (let ((__tmp149177 (cons flonum::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'haflonum __tmp149177 '((acyclic: . #t)))))
    (define cpxnum::t
      (let ((__tmp149178 (cons number::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'cpxnum __tmp149178 '((acyclic: . #t)))))
    (define symbolic::t
      (let ((__tmp149179 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'symbolic __tmp149179 '((acyclic: . #t)))))
    (define symbol::t
      (let ((__tmp149180 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'symbol __tmp149180 '((acyclic: . #t)))))
    (define keyword::t
      (let ((__tmp149181 (cons symbolic::t '())))
        (declare (not safe))
        (__make-system-class 'keyword __tmp149181 '((acyclic: . #t)))))
    (define list::t
      (let ((__tmp149182 (cons builtin::t '())))
        (declare (not safe))
        (__make-system-class 'list __tmp149182 '())))
    (define pair::t
      (let ((__tmp149183 (cons list::t (cons subtyped::t '()))))
        (declare (not safe))
        (__make-system-class 'pair __tmp149183 '())))
    (define null::t
      (let ((__tmp149184 (cons list::t (cons atom::t '()))))
        (declare (not safe))
        (__make-system-class 'null __tmp149184 '((acyclic: . #t)))))
    (define sequence::t
      (let ((__tmp149185 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'sequence __tmp149185 '())))
    (define vector::t
      (let ((__tmp149186 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'vector __tmp149186 '())))
    (define string::t
      (let ((__tmp149187 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'string __tmp149187 '((acyclic: . #t)))))
    (define hvector::t
      (let ((__tmp149188 (cons sequence::t '())))
        (declare (not safe))
        (__make-system-class 'hvector __tmp149188 '((acyclic: . #t)))))
    (define u8vector::t
      (let ((__tmp149189 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u8vector __tmp149189 '((acyclic: . #t)))))
    (define s8vector::t
      (let ((__tmp149190 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's8vector __tmp149190 '((acyclic: . #t)))))
    (define u16vector::t
      (let ((__tmp149191 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u16vector __tmp149191 '((acyclic: . #t)))))
    (define s16vector::t
      (let ((__tmp149192 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's16vector __tmp149192 '((acyclic: . #t)))))
    (define u32vector::t
      (let ((__tmp149193 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u32vector __tmp149193 '((acyclic: . #t)))))
    (define s32vector::t
      (let ((__tmp149194 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's32vector __tmp149194 '((acyclic: . #t)))))
    (define u64vector::t
      (let ((__tmp149195 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'u64vector __tmp149195 '((acyclic: . #t)))))
    (define s64vector::t
      (let ((__tmp149196 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 's64vector __tmp149196 '((acyclic: . #t)))))
    (define f32vector::t
      (let ((__tmp149197 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f32vector __tmp149197 '((acyclic: . #t)))))
    (define f64vector::t
      (let ((__tmp149198 (cons hvector::t '())))
        (declare (not safe))
        (__make-system-class 'f64vector __tmp149198 '((acyclic: . #t)))))
    (define hunk::t
      (let ((__tmp149199 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'hunk __tmp149199 '())))
    (define values::t
      (let ((__tmp149200 (cons hunk::t (cons sequence::t '()))))
        (declare (not safe))
        (__make-system-class 'values __tmp149200 '())))
    (define box::t
      (let ((__tmp149201 (cons hunk::t '())))
        (declare (not safe))
        (__make-system-class 'box __tmp149201 '())))
    (define frame::t
      (let ((__tmp149202 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'frame __tmp149202 '())))
    (define continuation::t
      (let ((__tmp149203 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'continuation __tmp149203 '())))
    (define promise::t
      (let ((__tmp149204 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'promise __tmp149204 '())))
    (define weak::t
      (let ((__tmp149205 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'weak __tmp149205 '())))
    (define foreign::t
      (let ((__tmp149206 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'foreign __tmp149206 '((acyclic: . #t)))))
    (define procedure::t
      (let ((__tmp149207 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'procedure __tmp149207 '())))
    (define return::t
      (let ((__tmp149208 (cons subtyped::t '())))
        (declare (not safe))
        (__make-system-class 'return __tmp149208 '())))
    (define time::t
      (let ((__tmp149209 (macro-type-time)))
        (declare (not safe))
        (__shadow-class__% __tmp149209 '((acyclic: . #t)))))
    (define thread::t
      (let ((__tmp149210 (macro-type-thread)))
        (declare (not safe))
        (__shadow-class__% __tmp149210 '())))
    (define thread-group::t
      (let ((__tmp149211 (macro-type-tgroup)))
        (declare (not safe))
        (__shadow-class__% __tmp149211 '())))
    (define mutex::t
      (let ((__tmp149212 (macro-type-mutex)))
        (declare (not safe))
        (__shadow-class__% __tmp149212 '())))
    (define condvar::t
      (let ((__tmp149213 (macro-type-condvar)))
        (declare (not safe))
        (__shadow-class__% __tmp149213 '())))
    (define port::t
      (let ((__tmp149214 (macro-type-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149214 '())))
    (define object-port::t
      (let ((__tmp149215 (macro-type-object-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149215 '())))
    (define character-port::t
      (let ((__tmp149216 (macro-type-character-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149216 '())))
    (define byte-port::t
      (let ((__tmp149217 (macro-type-byte-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149217 '())))
    (define device-port::t
      (let ((__tmp149218 (macro-type-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149218 '())))
    (define vector-port::t
      (let ((__tmp149219 (macro-type-vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149219 '())))
    (define string-port::t
      (let ((__tmp149220 (macro-type-string-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149220 '())))
    (define u8vector-port::t
      (let ((__tmp149221 (macro-type-u8vector-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149221 '())))
    (define raw-device-port::t
      (let ((__tmp149222 (macro-type-raw-device-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149222 '())))
    (define tcp-server-port::t
      (let ((__tmp149223 (macro-type-tcp-server-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149223 '())))
    (define udp-port::t
      (let ((__tmp149224 (macro-type-udp-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149224 '())))
    (define directory-port::t
      (let ((__tmp149225 (macro-type-directory-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149225 '())))
    (define event-queue-port::t
      (let ((__tmp149226 (macro-type-event-queue-port)))
        (declare (not safe))
        (__shadow-class__% __tmp149226 '())))
    (define table::t
      (let ((__tmp149227 (macro-type-table)))
        (declare (not safe))
        (__shadow-class__% __tmp149227 '())))
    (define readenv::t
      (let ((__tmp149228 (macro-type-readenv)))
        (declare (not safe))
        (__shadow-class__% __tmp149228 '())))
    (define writeenv::t
      (let ((__tmp149229 (macro-type-writeenv)))
        (declare (not safe))
        (__shadow-class__% __tmp149229 '())))
    (define readtable::t
      (let ((__tmp149230 (macro-type-readtable)))
        (declare (not safe))
        (__shadow-class__% __tmp149230 '())))
    (define processor::t
      (let ((__tmp149231 (macro-type-processor)))
        (declare (not safe))
        (__shadow-class__% __tmp149231 '())))
    (define vm::t
      (let ((__tmp149232 (macro-type-vm)))
        (declare (not safe))
        (__shadow-class__% __tmp149232 '())))
    (define file-info::t
      (let ((__tmp149233 (macro-type-file-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149233 '((acyclic: . #t)))))
    (define socket-info::t
      (let ((__tmp149234 (macro-type-socket-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149234 '((acyclic: . #t)))))
    (define address-info::t
      (let ((__tmp149235 (macro-type-address-info)))
        (declare (not safe))
        (__shadow-class__% __tmp149235 '((acyclic: . #t)))))
    (define builtin-object?
      (lambda (_%obj149143%_)
        (let ((_%$e149145%_
               (not (let ()
                      (declare (not safe))
                      (##structure? _%obj149143%_)))))
          (if _%$e149145%_
              _%$e149145%_
              (not (let ((__tmp149236
                          (let ()
                            (declare (not safe))
                            (##structure-type _%obj149143%_))))
                     (declare (not safe))
                     (##structure-instance-of? __tmp149236 'class)))))))
    (define builtin-subtyped?
      (lambda (_%obj149141%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149141%_))
            (builtin-object? _%obj149141%_)
            '#f)))
    (define builtin-structure?
      (lambda (_%obj149139%_)
        (if (let () (declare (not safe)) (##structure? _%obj149139%_))
            (not (let ((__tmp149237
                        (let ()
                          (declare (not safe))
                          (##structure-type _%obj149139%_))))
                   (declare (not safe))
                   (##structure-instance-of? __tmp149237 'class)))
            '#f)))
    (define atom?
      (lambda (_%obj149137%_)
        (if (let () (declare (not safe)) (##special? _%obj149137%_))
            (let ((__tmp149238
                   (let ()
                     (declare (not safe))
                     (##type-cast _%obj149137%_ '0))))
              (declare (not safe))
              (##fx< __tmp149238 '0))
            '#f)))
    (define special-object?
      (lambda (_%obj149135%_)
        (let () (declare (not safe)) (##special? _%obj149135%_))))
    (define unbound-object?
      (lambda (_%obj149133%_) (eq? _%obj149133%_ '#!unbound)))
    (define unbound2-object?
      (lambda (_%obj149131%_) (eq? _%obj149131%_ '#!unbound2)))
    (define unused-object?
      (lambda (_%obj149129%_) (eq? _%obj149129%_ (macro-unused-obj))))
    (define deleted-object?
      (lambda (_%obj149127%_) (eq? _%obj149127%_ (macro-deleted-obj))))
    (define absent-object?
      (lambda (_%obj149125%_) (eq? _%obj149125%_ (macro-absent-obj))))
    (define ddsl-token?
      (lambda (_%obj149117%_)
        (let ((_%$e149119%_ (eq? _%obj149117%_ '#!key)))
          (if _%$e149119%_
              _%$e149119%_
              (let ((_%$e149122%_ (eq? _%obj149117%_ '#!optional)))
                (if _%$e149122%_ _%$e149122%_ (eq? _%obj149117%_ '#!rest)))))))
    (define dssl-key? (lambda (_%obj149115%_) (eq? _%obj149115%_ '#!key)))
    (define dssl-optional?
      (lambda (_%obj149113%_) (eq? _%obj149113%_ '#!optional)))
    (define dssl-rest? (lambda (_%obj149111%_) (eq? _%obj149111%_ '#!rest)))
    (define stflonum?
      (lambda (_%obj149109%_)
        (if (flonum? _%obj149109%_)
            (not (let ()
                   (declare (not safe))
                   (##mem-allocated? _%obj149109%_)))
            '#f)))
    (define haflonum?
      (lambda (_%obj149107%_)
        (if (flonum? _%obj149107%_)
            (let () (declare (not safe)) (##mem-allocated? _%obj149107%_))
            '#f)))
    (define __subtyped-class-sequence
      (let ((_%vec149104%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec149104%_ (macro-subtype-boxvalues) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-string) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec149104%_ (macro-subtype-f64vector) '#t)
        _%vec149104%_))
    (define sequence?
      (lambda (_%obj149102%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149102%_))
            (let ((__tmp149239
                   (let () (declare (not safe)) (##subtype _%obj149102%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-sequence __tmp149239))
            '#f)))
    (define __subtyped-class-hvector
      (let ((_%vec149099%_
             (let () (declare (not safe)) (##make-vector '32 '#f))))
        (vector-set! _%vec149099%_ (macro-subtype-s8vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-u8vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-s16vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-u16vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-s32vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-u32vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-f32vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-s64vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-u64vector) '#t)
        (vector-set! _%vec149099%_ (macro-subtype-f64vector) '#t)
        _%vec149099%_))
    (define hvector?
      (lambda (_%obj149097%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149097%_))
            (let ((__tmp149240
                   (let () (declare (not safe)) (##subtype _%obj149097%_))))
              (declare (not safe))
              (##vector-ref __subtyped-class-hvector __tmp149240))
            '#f)))
    (define weak?
      (lambda (_%obj149095%_)
        (if (let () (declare (not safe)) (##subtyped? _%obj149095%_))
            (eq? (let () (declare (not safe)) (##subtype _%obj149095%_))
                 (macro-subtype-weak))
            '#f)))
    (define object-port?
      (lambda (_%obj149093%_)
        (let ((__tmp149241
               (let ((__tmp149242 (macro-type-object-port)))
                 (declare (not safe))
                 (##type-id __tmp149242))))
          (declare (not safe))
          (##structure-instance-of? _%obj149093%_ __tmp149241))))
    (define character-port?
      (lambda (_%obj149091%_)
        (let ((__tmp149243
               (let ((__tmp149244 (macro-type-character-port)))
                 (declare (not safe))
                 (##type-id __tmp149244))))
          (declare (not safe))
          (##structure-instance-of? _%obj149091%_ __tmp149243))))
    (define byte-port?
      (lambda (_%obj149089%_)
        (let ((__tmp149245
               (let ((__tmp149246 (macro-type-byte-port)))
                 (declare (not safe))
                 (##type-id __tmp149246))))
          (declare (not safe))
          (##structure-instance-of? _%obj149089%_ __tmp149245))))
    (define device-port?
      (lambda (_%obj149087%_)
        (let ((__tmp149247
               (let ((__tmp149248 (macro-type-device-port)))
                 (declare (not safe))
                 (##type-id __tmp149248))))
          (declare (not safe))
          (##structure-instance-of? _%obj149087%_ __tmp149247))))
    (define vector-port?
      (lambda (_%obj149085%_)
        (let ((__tmp149249
               (let ((__tmp149250 (macro-type-vector-port)))
                 (declare (not safe))
                 (##type-id __tmp149250))))
          (declare (not safe))
          (##structure-instance-of? _%obj149085%_ __tmp149249))))
    (define string-port?
      (lambda (_%obj149083%_)
        (let ((__tmp149251
               (let ((__tmp149252 (macro-type-string-port)))
                 (declare (not safe))
                 (##type-id __tmp149252))))
          (declare (not safe))
          (##structure-instance-of? _%obj149083%_ __tmp149251))))
    (define u8vector-port?
      (lambda (_%obj149081%_)
        (let ((__tmp149253
               (let ((__tmp149254 (macro-type-u8vector-port)))
                 (declare (not safe))
                 (##type-id __tmp149254))))
          (declare (not safe))
          (##structure-instance-of? _%obj149081%_ __tmp149253))))
    (define raw-device-port?
      (lambda (_%obj149079%_)
        (let ((__tmp149255
               (let ((__tmp149256 (macro-type-raw-device-port)))
                 (declare (not safe))
                 (##type-id __tmp149256))))
          (declare (not safe))
          (##structure-instance-of? _%obj149079%_ __tmp149255))))
    (define tcp-server-port?
      (lambda (_%obj149077%_)
        (let ((__tmp149257
               (let ((__tmp149258 (macro-type-tcp-server-port)))
                 (declare (not safe))
                 (##type-id __tmp149258))))
          (declare (not safe))
          (##structure-instance-of? _%obj149077%_ __tmp149257))))
    (define udp-port?
      (lambda (_%obj149075%_)
        (let ((__tmp149259
               (let ((__tmp149260 (macro-type-udp-port)))
                 (declare (not safe))
                 (##type-id __tmp149260))))
          (declare (not safe))
          (##structure-instance-of? _%obj149075%_ __tmp149259))))
    (define directory-port?
      (lambda (_%obj149073%_)
        (let ((__tmp149261
               (let ((__tmp149262 (macro-type-directory-port)))
                 (declare (not safe))
                 (##type-id __tmp149262))))
          (declare (not safe))
          (##structure-instance-of? _%obj149073%_ __tmp149261))))
    (define event-queue-port?
      (lambda (_%obj149071%_)
        (let ((__tmp149263
               (let ((__tmp149264 (macro-type-event-queue-port)))
                 (declare (not safe))
                 (##type-id __tmp149264))))
          (declare (not safe))
          (##structure-instance-of? _%obj149071%_ __tmp149263))))
    (define readenv?
      (lambda (_%obj149069%_)
        (let ((__tmp149265
               (let ((__tmp149266 (macro-type-readenv)))
                 (declare (not safe))
                 (##type-id __tmp149266))))
          (declare (not safe))
          (##structure-instance-of? _%obj149069%_ __tmp149265))))
    (define writeenv?
      (lambda (_%obj149067%_)
        (let ((__tmp149267
               (let ((__tmp149268 (macro-type-writeenv)))
                 (declare (not safe))
                 (##type-id __tmp149268))))
          (declare (not safe))
          (##structure-instance-of? _%obj149067%_ __tmp149267))))
    (define vm?
      (lambda (_%obj149065%_)
        (let ((__tmp149269
               (let ((__tmp149270 (macro-type-vm)))
                 (declare (not safe))
                 (##type-id __tmp149270))))
          (declare (not safe))
          (##structure-instance-of? _%obj149065%_ __tmp149269))))))
