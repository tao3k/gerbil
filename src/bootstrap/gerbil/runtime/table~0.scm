(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1789839222)
  (begin
    (declare (not safe))
    (define __table::t.id 'gerbil#__table::t)
    (define __table::t
      (##structure
       ##type-type
       __table::t.id
       'raw-table
       '26
       '#f
       '#(table
          1
          #f
          count
          0
          #f
          free
          0
          #f
          hash
          0
          #f
          test
          0
          #f
          seed
          0
          #f
          lock
          0
          #f)))
    (define raw-table?
      (lambda (_%obj127324%_)
        (if (##structure? _%obj127324%_)
            (##structure-instance-of? _%obj127324%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab127322%_)
        (##unchecked-structure-ref
         _%tab127322%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab127320%_)
        (##unchecked-structure-ref
         _%tab127320%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab127318%_)
        (##unchecked-structure-ref
         _%tab127318%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab127316%_)
        (##unchecked-structure-ref
         _%tab127316%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab127314%_)
        (##unchecked-structure-ref
         _%tab127314%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab127312%_)
        (##unchecked-structure-ref
         _%tab127312%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab127310%_)
        (##unchecked-structure-ref
         _%tab127310%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab127307%_ _%val127308%_)
        (##unchecked-structure-set!
         _%tab127307%_
         _%val127308%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab127304%_ _%val127305%_)
        (##unchecked-structure-set!
         _%tab127304%_
         _%val127305%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab127301%_ _%val127302%_)
        (##unchecked-structure-set!
         _%tab127301%_
         _%val127302%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab127298%_ _%val127299%_)
        (##unchecked-structure-set!
         _%tab127298%_
         _%val127299%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab127295%_ _%val127296%_)
        (##unchecked-structure-set!
         _%tab127295%_
         _%val127296%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab127292%_ _%val127293%_)
        (##unchecked-structure-set!
         _%tab127292%_
         _%val127293%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab127289%_ _%val127290%_)
        (##unchecked-structure-set!
         _%tab127289%_
         _%val127290%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint127287%_)
        (if (and (fixnum? _%size-hint127287%_) (##fx> _%size-hint127287%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint127287%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock127283%_)
        (if (eq? _%lock127283%_ '#t) (vector '0 '#f) _%lock127283%_)))
    (define make-raw-table__%
      (lambda (_%size-hint127248%_
               _%hash127249%_
               _%test127250%_
               _%seed127251%_
               _%lock127252%_)
        (let* ((_%size127254%_ (raw-table-size-hint->size _%size-hint127248%_))
               (_%table127256%_
                (##make-vector _%size127254%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table127256%_
           '0
           (##fxquotient _%size127254%_ '2)
           _%hash127249%_
           _%test127250%_
           _%seed127251%_
           (ensure-lock _%lock127252%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint127262%_ _%hash127263%_ _%test127264%_)
        (let* ((_%seed127266%_ '0) (_%lock127268%_ '#f))
          (make-raw-table__%
           _%size-hint127262%_
           _%hash127263%_
           _%test127264%_
           _%seed127266%_
           _%lock127268%_))))
    (define make-raw-table__1
      (lambda (_%size-hint127270%_
               _%hash127271%_
               _%test127272%_
               _%seed127273%_)
        (let ((_%lock127275%_ '#f))
          (make-raw-table__%
           _%size-hint127270%_
           _%hash127271%_
           _%test127272%_
           _%seed127273%_
           _%lock127275%_))))
    (define make-raw-table
      (lambda _g127325_
        (let ((_g127326_ (##length _g127325_)))
          (cond ((##fx= _g127326_ 3) (apply make-raw-table__0 _g127325_))
                ((##fx= _g127326_ 4) (apply make-raw-table__1 _g127325_))
                ((##fx= _g127326_ 5) (apply make-raw-table__% _g127325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g127325_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint127228%_
               _%hash127229%_
               _%test127230%_
               _%seed127231%_)
        (make-raw-table__%
         _%size-hint127228%_
         _%hash127229%_
         _%test127230%_
         _%seed127231%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint127236%_ _%hash127237%_ _%test127238%_)
        (let ((_%seed127240%_ '0))
          (make-raw-table/lock__%
           _%size-hint127236%_
           _%hash127237%_
           _%test127238%_
           _%seed127240%_))))
    (define make-raw-table/lock
      (lambda _g127327_
        (let ((_g127328_ (##length _g127327_)))
          (cond ((##fx= _g127328_ 3) (apply make-raw-table/lock__0 _g127327_))
                ((##fx= _g127328_ 4) (apply make-raw-table/lock__% _g127327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g127327_))))))
    (define raw-table-length
      (lambda (_%tab127225%_) (&raw-table-count _%tab127225%_)))
    (define raw-table-length/lock
      (lambda (_%tab127198%_)
        (let ((_%lock127200%_ (&raw-table-lock _%tab127198%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127205%_ ((_%spin127208%_ '0))
              (if (##fx= (##vector-cas! _%lock127200%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127200%_ '1 (current-thread))
                  (if (##fx< _%spin127208%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127205%_ (##fx+ _%spin127208%_ '1)))
                      (let ((_%owner127214%_ (##vector-ref _%lock127200%_ '1)))
                        (if (eq? _%owner127214%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127214%_)
                                (let () (##thread-yield!) (_%again127205%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127220%_ (&raw-table-count _%tab127198%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127200%_ '1 '#f)
                (##vector-cas! _%lock127200%_ '0 '0 '1)))
            _%$r127220%_))))
    (define raw-table-ref
      (lambda (_%tab127150%_ _%key127151%_ _%default127152%_)
        (let ((_%table127154%_ (&raw-table-table _%tab127150%_))
              (_%seed127155%_ (&raw-table-seed _%tab127150%_))
              (_%hash127156%_ (&raw-table-hash _%tab127150%_))
              (_%test127157%_ (&raw-table-test _%tab127150%_)))
          (let* ((_%h127159%_
                  (fxxor (_%hash127156%_ _%key127151%_) _%seed127155%_))
                 (_%size127162%_ (vector-length _%table127154%_))
                 (_%entries127165%_ (##fxquotient _%size127162%_ '2))
                 (_%start127168%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127159%_ _%entries127165%_)
                   '1)))
            (let _%loop127172%_ ((_%probe127175%_ _%start127168%_)
                                 (_%i127177%_ '1)
                                 (_%deleted127179%_ '#f))
              (let ((_%k127182%_ (vector-ref _%table127154%_ _%probe127175%_)))
                (if (eq? _%k127182%_ (macro-unused-obj))
                    _%default127152%_
                    (if (eq? _%k127182%_ (macro-deleted-obj))
                        (_%loop127172%_
                         (let ((_%next-probe127187%_
                                (fx+ _%start127168%_
                                     _%i127177%_
                                     (fx* _%i127177%_ _%i127177%_))))
                           (##fxmodulo _%next-probe127187%_ _%size127162%_))
                         (##fx+ _%i127177%_ '1)
                         (let ((_%$e127190%_ _%deleted127179%_))
                           (if _%$e127190%_ _%$e127190%_ _%probe127175%_)))
                        (if (_%test127157%_ _%key127151%_ _%k127182%_)
                            (vector-ref
                             _%table127154%_
                             (##fx+ _%probe127175%_ '1))
                            (_%loop127172%_
                             (let ((_%next-probe127195%_
                                    (fx+ _%start127168%_
                                         _%i127177%_
                                         (fx* _%i127177%_ _%i127177%_))))
                               (##fxmodulo
                                _%next-probe127195%_
                                _%size127162%_))
                             (##fx+ _%i127177%_ '1)
                             _%deleted127179%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab127121%_ _%key127122%_ _%default127123%_)
        (let ((_%lock127125%_ (&raw-table-lock _%tab127121%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127130%_ ((_%spin127133%_ '0))
              (if (##fx= (##vector-cas! _%lock127125%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127125%_ '1 (current-thread))
                  (if (##fx< _%spin127133%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127130%_ (##fx+ _%spin127133%_ '1)))
                      (let ((_%owner127139%_ (##vector-ref _%lock127125%_ '1)))
                        (if (eq? _%owner127139%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127139%_)
                                (let () (##thread-yield!) (_%again127130%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127145%_
                 (raw-table-ref
                  _%tab127121%_
                  _%key127122%_
                  _%default127123%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127125%_ '1 '#f)
                (##vector-cas! _%lock127125%_ '0 '0 '1)))
            _%$r127145%_))))
    (define raw-table-set!
      (lambda (_%tab127117%_ _%key127118%_ _%value127119%_)
        (if (##fx< (&raw-table-free _%tab127117%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127117%_))
                    '4))
            (__raw-table-rehash! _%tab127117%_)
            '#!void)
        (__raw-table-set! _%tab127117%_ _%key127118%_ _%value127119%_)))
    (define raw-table-set!/lock
      (lambda (_%tab127088%_ _%key127089%_ _%value127090%_)
        (let ((_%lock127092%_ (&raw-table-lock _%tab127088%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127097%_ ((_%spin127100%_ '0))
              (if (##fx= (##vector-cas! _%lock127092%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127092%_ '1 (current-thread))
                  (if (##fx< _%spin127100%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127097%_ (##fx+ _%spin127100%_ '1)))
                      (let ((_%owner127106%_ (##vector-ref _%lock127092%_ '1)))
                        (if (eq? _%owner127106%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127106%_)
                                (let () (##thread-yield!) (_%again127097%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127112%_
                 (raw-table-set! _%tab127088%_ _%key127089%_ _%value127090%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127092%_ '1 '#f)
                (##vector-cas! _%lock127092%_ '0 '0 '1)))
            _%$r127112%_))))
    (define raw-table-update!
      (lambda (_%tab127083%_ _%key127084%_ _%update127085%_ _%default127086%_)
        (if (##fx< (&raw-table-free _%tab127083%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab127083%_))
                    '4))
            (__raw-table-rehash! _%tab127083%_)
            '#!void)
        (__raw-table-update!
         _%tab127083%_
         _%key127084%_
         _%update127085%_
         _%default127086%_)))
    (define raw-table-update!/lock
      (lambda (_%tab127053%_ _%key127054%_ _%update127055%_ _%default127056%_)
        (let ((_%lock127058%_ (&raw-table-lock _%tab127053%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127063%_ ((_%spin127066%_ '0))
              (if (##fx= (##vector-cas! _%lock127058%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127058%_ '1 (current-thread))
                  (if (##fx< _%spin127066%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127063%_ (##fx+ _%spin127066%_ '1)))
                      (let ((_%owner127072%_ (##vector-ref _%lock127058%_ '1)))
                        (if (eq? _%owner127072%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127072%_)
                                (let () (##thread-yield!) (_%again127063%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127078%_
                 (raw-table-update!
                  _%tab127053%_
                  _%key127054%_
                  _%update127055%_
                  _%default127056%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127058%_ '1 '#f)
                (##vector-cas! _%lock127058%_ '0 '0 '1)))
            _%$r127078%_))))
    (define raw-table-delete!
      (lambda (_%tab127010%_ _%key127011%_)
        (let ((_%table127013%_ (&raw-table-table _%tab127010%_))
              (_%seed127014%_ (&raw-table-seed _%tab127010%_))
              (_%hash127015%_ (&raw-table-hash _%tab127010%_))
              (_%test127016%_ (&raw-table-test _%tab127010%_)))
          (let* ((_%h127018%_
                  (fxxor (_%hash127015%_ _%key127011%_) _%seed127014%_))
                 (_%size127021%_ (vector-length _%table127013%_))
                 (_%entries127024%_ (##fxquotient _%size127021%_ '2))
                 (_%start127027%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h127018%_ _%entries127024%_)
                   '1)))
            (let _%loop127031%_ ((_%probe127034%_ _%start127027%_)
                                 (_%i127036%_ '1))
              (let ((_%k127039%_ (vector-ref _%table127013%_ _%probe127034%_)))
                (if (eq? _%k127039%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k127039%_ (macro-deleted-obj))
                        (_%loop127031%_
                         (let ((_%next-probe127044%_
                                (fx+ _%start127027%_
                                     _%i127036%_
                                     (fx* _%i127036%_ _%i127036%_))))
                           (##fxmodulo _%next-probe127044%_ _%size127021%_))
                         (##fx+ _%i127036%_ '1))
                        (if (_%test127016%_ _%key127011%_ _%k127039%_)
                            (let ()
                              (vector-set!
                               _%table127013%_
                               _%probe127034%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table127013%_
                               (##fx+ _%probe127034%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab127010%_
                               (##fx- (&raw-table-count _%tab127010%_) '1)))
                            (_%loop127031%_
                             (let ((_%next-probe127050%_
                                    (fx+ _%start127027%_
                                         _%i127036%_
                                         (fx* _%i127036%_ _%i127036%_))))
                               (##fxmodulo
                                _%next-probe127050%_
                                _%size127021%_))
                             (##fx+ _%i127036%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab126982%_ _%key126983%_)
        (let ((_%lock126985%_ (&raw-table-lock _%tab126982%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126990%_ ((_%spin126993%_ '0))
              (if (##fx= (##vector-cas! _%lock126985%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126985%_ '1 (current-thread))
                  (if (##fx< _%spin126993%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126990%_ (##fx+ _%spin126993%_ '1)))
                      (let ((_%owner126999%_ (##vector-ref _%lock126985%_ '1)))
                        (if (eq? _%owner126999%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126999%_)
                                (let () (##thread-yield!) (_%again126990%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127005%_ (raw-table-delete! _%tab126982%_ _%key126983%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126985%_ '1 '#f)
                (##vector-cas! _%lock126985%_ '0 '0 '1)))
            _%$r127005%_))))
    (define raw-table-for-each
      (lambda (_%tab126966%_ _%proc126967%_)
        (let* ((_%table126969%_ (&raw-table-table _%tab126966%_))
               (_%size126971%_ (vector-length _%table126969%_)))
          (let _%loop126974%_ ((_%i126976%_ '0))
            (if (##fx< _%i126976%_ _%size126971%_)
                (begin
                  (let ((_%key126978%_
                         (vector-ref _%table126969%_ _%i126976%_)))
                    (if (if (eq? _%key126978%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key126978%_ (macro-deleted-obj))))
                        (let ((_%value126980%_
                               (vector-ref
                                _%table126969%_
                                (##fx+ _%i126976%_ '1))))
                          (_%proc126967%_ _%key126978%_ _%value126980%_))
                        '#!void))
                  (_%loop126974%_ (##fx+ _%i126976%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab126938%_ _%proc126939%_)
        (let ((_%lock126941%_ (&raw-table-lock _%tab126938%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126946%_ ((_%spin126949%_ '0))
              (if (##fx= (##vector-cas! _%lock126941%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126941%_ '1 (current-thread))
                  (if (##fx< _%spin126949%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126946%_ (##fx+ _%spin126949%_ '1)))
                      (let ((_%owner126955%_ (##vector-ref _%lock126941%_ '1)))
                        (if (eq? _%owner126955%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126955%_)
                                (let () (##thread-yield!) (_%again126946%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126961%_
                 (raw-table-for-each _%tab126938%_ _%proc126939%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126941%_ '1 '#f)
                (##vector-cas! _%lock126941%_ '0 '0 '1)))
            _%$r126961%_))))
    (define raw-table-copy
      (lambda (_%tab126934%_)
        (let ((_%new-tab126936%_ (##structure-copy _%tab126934%_)))
          (&raw-table-table-set!
           _%new-tab126936%_
           (vector-copy (&raw-table-table _%tab126934%_)))
          (&raw-table-lock-set!
           _%new-tab126936%_
           (ensure-lock (if (&raw-table-lock _%tab126934%_) '#t '#f)))
          _%new-tab126936%_)))
    (define raw-table-copy/lock
      (lambda (_%tab126907%_)
        (let ((_%lock126909%_ (&raw-table-lock _%tab126907%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126914%_ ((_%spin126917%_ '0))
              (if (##fx= (##vector-cas! _%lock126909%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126909%_ '1 (current-thread))
                  (if (##fx< _%spin126917%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126914%_ (##fx+ _%spin126917%_ '1)))
                      (let ((_%owner126923%_ (##vector-ref _%lock126909%_ '1)))
                        (if (eq? _%owner126923%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126923%_)
                                (let () (##thread-yield!) (_%again126914%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126929%_ (raw-table-copy _%tab126907%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126909%_ '1 '#f)
                (##vector-cas! _%lock126909%_ '0 '0 '1)))
            _%$r126929%_))))
    (define raw-table-new__%
      (lambda (_%tab126894%_ _%size-hint126895%_)
        (make-raw-table__%
         (if (eq? _%size-hint126895%_ '#t)
             (vector-length (&raw-table-table _%tab126894%_))
             _%size-hint126895%_)
         (&raw-table-hash _%tab126894%_)
         (&raw-table-test _%tab126894%_)
         (&raw-table-seed _%tab126894%_)
         (if (&raw-table-lock _%tab126894%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab126900%_)
        (let ((_%size-hint126902%_ '#f))
          (raw-table-new__% _%tab126900%_ _%size-hint126902%_))))
    (define raw-table-new
      (lambda _g127329_
        (let ((_g127330_ (##length _g127329_)))
          (cond ((##fx= _g127330_ 1) (apply raw-table-new__0 _g127329_))
                ((##fx= _g127330_ 2) (apply raw-table-new__% _g127329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g127329_))))))
    (define raw-table-clear!
      (lambda (_%tab126891%_)
        (vector-fill! (&raw-table-table _%tab126891%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab126891%_ '0)
        (&raw-table-free-set!
         _%tab126891%_
         (##fxquotient (vector-length (&raw-table-table _%tab126891%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab126864%_)
        (let ((_%lock126866%_ (&raw-table-lock _%tab126864%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126871%_ ((_%spin126874%_ '0))
              (if (##fx= (##vector-cas! _%lock126866%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126866%_ '1 (current-thread))
                  (if (##fx< _%spin126874%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126871%_ (##fx+ _%spin126874%_ '1)))
                      (let ((_%owner126880%_ (##vector-ref _%lock126866%_ '1)))
                        (if (eq? _%owner126880%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126880%_)
                                (let () (##thread-yield!) (_%again126871%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126886%_ (raw-table-clear! _%tab126864%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126866%_ '1 '#f)
                (##vector-cas! _%lock126866%_ '0 '0 '1)))
            _%$r126886%_))))
    (define __raw-table-set!
      (lambda (_%tab126814%_ _%key126815%_ _%value126816%_)
        (let ((_%table126818%_ (&raw-table-table _%tab126814%_))
              (_%seed126819%_ (&raw-table-seed _%tab126814%_))
              (_%hash126820%_ (&raw-table-hash _%tab126814%_))
              (_%test126821%_ (&raw-table-test _%tab126814%_)))
          (let* ((_%h126823%_
                  (fxxor (_%hash126820%_ _%key126815%_) _%seed126819%_))
                 (_%size126826%_ (vector-length _%table126818%_))
                 (_%entries126829%_ (##fxquotient _%size126826%_ '2))
                 (_%start126832%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126823%_ _%entries126829%_)
                   '1)))
            (let _%loop126836%_ ((_%probe126839%_ _%start126832%_)
                                 (_%i126841%_ '1)
                                 (_%deleted126843%_ '#f))
              (let ((_%k126846%_ (vector-ref _%table126818%_ _%probe126839%_)))
                (if (eq? _%k126846%_ (macro-unused-obj))
                    (if _%deleted126843%_
                        (begin
                          (vector-set!
                           _%table126818%_
                           _%deleted126843%_
                           _%key126815%_)
                          (vector-set!
                           _%table126818%_
                           (##fx+ _%deleted126843%_ '1)
                           _%value126816%_)
                          (&raw-table-count-set!
                           _%tab126814%_
                           (##fx+ (&raw-table-count _%tab126814%_) '1)))
                        (begin
                          (vector-set!
                           _%table126818%_
                           _%probe126839%_
                           _%key126815%_)
                          (vector-set!
                           _%table126818%_
                           (##fx+ _%probe126839%_ '1)
                           _%value126816%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126814%_
                             (##fx- (&raw-table-free _%tab126814%_) '1))
                            (&raw-table-count-set!
                             _%tab126814%_
                             (##fx+ (&raw-table-count _%tab126814%_) '1)))))
                    (if (eq? _%k126846%_ (macro-deleted-obj))
                        (_%loop126836%_
                         (let ((_%next-probe126853%_
                                (fx+ _%start126832%_
                                     _%i126841%_
                                     (fx* _%i126841%_ _%i126841%_))))
                           (##fxmodulo _%next-probe126853%_ _%size126826%_))
                         (##fx+ _%i126841%_ '1)
                         (let ((_%$e126856%_ _%deleted126843%_))
                           (if _%$e126856%_ _%$e126856%_ _%probe126839%_)))
                        (if (_%test126821%_ _%key126815%_ _%k126846%_)
                            (let ()
                              (vector-set!
                               _%table126818%_
                               _%probe126839%_
                               _%key126815%_)
                              (vector-set!
                               _%table126818%_
                               (##fx+ _%probe126839%_ '1)
                               _%value126816%_))
                            (_%loop126836%_
                             (let ((_%next-probe126861%_
                                    (fx+ _%start126832%_
                                         _%i126841%_
                                         (fx* _%i126841%_ _%i126841%_))))
                               (##fxmodulo
                                _%next-probe126861%_
                                _%size126826%_))
                             (##fx+ _%i126841%_ '1)
                             _%deleted126843%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab126763%_ _%key126764%_ _%update126765%_ _%default126766%_)
        (let ((_%table126768%_ (&raw-table-table _%tab126763%_))
              (_%seed126769%_ (&raw-table-seed _%tab126763%_))
              (_%hash126770%_ (&raw-table-hash _%tab126763%_))
              (_%test126771%_ (&raw-table-test _%tab126763%_)))
          (let* ((_%h126773%_
                  (fxxor (_%hash126770%_ _%key126764%_) _%seed126769%_))
                 (_%size126776%_ (vector-length _%table126768%_))
                 (_%entries126779%_ (##fxquotient _%size126776%_ '2))
                 (_%start126782%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126773%_ _%entries126779%_)
                   '1)))
            (let _%loop126786%_ ((_%probe126789%_ _%start126782%_)
                                 (_%i126791%_ '1)
                                 (_%deleted126793%_ '#f))
              (let ((_%k126796%_ (vector-ref _%table126768%_ _%probe126789%_)))
                (if (eq? _%k126796%_ (macro-unused-obj))
                    (if _%deleted126793%_
                        (begin
                          (vector-set!
                           _%table126768%_
                           _%deleted126793%_
                           _%key126764%_)
                          (vector-set!
                           _%table126768%_
                           (##fx+ _%deleted126793%_ '1)
                           (_%update126765%_ _%default126766%_))
                          (&raw-table-count-set!
                           _%tab126763%_
                           (##fx+ (&raw-table-count _%tab126763%_) '1)))
                        (begin
                          (vector-set!
                           _%table126768%_
                           _%probe126789%_
                           _%key126764%_)
                          (vector-set!
                           _%table126768%_
                           (##fx+ _%probe126789%_ '1)
                           (_%update126765%_ _%default126766%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab126763%_
                             (##fx- (&raw-table-free _%tab126763%_) '1))
                            (&raw-table-count-set!
                             _%tab126763%_
                             (##fx+ (&raw-table-count _%tab126763%_) '1)))))
                    (if (eq? _%k126796%_ (macro-deleted-obj))
                        (_%loop126786%_
                         (let ((_%next-probe126803%_
                                (fx+ _%start126782%_
                                     _%i126791%_
                                     (fx* _%i126791%_ _%i126791%_))))
                           (##fxmodulo _%next-probe126803%_ _%size126776%_))
                         (##fx+ _%i126791%_ '1)
                         (let ((_%$e126806%_ _%deleted126793%_))
                           (if _%$e126806%_ _%$e126806%_ _%probe126789%_)))
                        (if (_%test126771%_ _%key126764%_ _%k126796%_)
                            (let ()
                              (vector-set!
                               _%table126768%_
                               _%probe126789%_
                               _%key126764%_)
                              (vector-set!
                               _%table126768%_
                               (##fx+ _%probe126789%_ '1)
                               (_%update126765%_
                                (vector-ref
                                 _%table126768%_
                                 (##fx+ _%probe126789%_ '1)))))
                            (_%loop126786%_
                             (let ((_%next-probe126811%_
                                    (fx+ _%start126782%_
                                         _%i126791%_
                                         (fx* _%i126791%_ _%i126791%_))))
                               (##fxmodulo
                                _%next-probe126811%_
                                _%size126776%_))
                             (##fx+ _%i126791%_ '1)
                             _%deleted126793%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab126744%_)
        (let* ((_%old-table126746%_ (&raw-table-table _%tab126744%_))
               (_%old-size126748%_ (vector-length _%old-table126746%_))
               (_%new-size126750%_
                (if (##fx< (&raw-table-count _%tab126744%_)
                           (##fxquotient _%old-size126748%_ '4))
                    (vector-length _%old-table126746%_)
                    (##fx* '2 (vector-length _%old-table126746%_))))
               (_%new-table126752%_
                (##make-vector _%new-size126750%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab126744%_ _%new-table126752%_)
          (&raw-table-count-set! _%tab126744%_ '0)
          (&raw-table-free-set!
           _%tab126744%_
           (##fxquotient _%new-size126750%_ '2))
          (let _%lp126755%_ ((_%i126757%_ '0))
            (if (##fx< _%i126757%_ _%old-size126748%_)
                (begin
                  (let ((_%key126759%_
                         (vector-ref _%old-table126746%_ _%i126757%_)))
                    (if (if (eq? _%key126759%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key126759%_ (macro-deleted-obj))))
                        (let ((_%value126761%_
                               (vector-ref
                                _%old-table126746%_
                                (##fx+ _%i126757%_ '1))))
                          (__raw-table-set!
                           _%tab126744%_
                           _%key126759%_
                           _%value126761%_))
                        '#!void))
                  (_%lp126755%_ (##fx+ _%i126757%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj126736%_)
        (let ((_%t126738%_ (##type _%obj126736%_)))
          (if (##fx= (##fxand _%t126738%_ '1) '0)
              (fxand (##type-cast _%obj126736%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj126736%_)
                  (##symbol-hash _%obj126736%_)
                  (if (procedure? _%obj126736%_)
                      (procedure-hash _%obj126736%_)
                      (fxand (__object->eq-hash _%obj126736%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj126732%_)
        (let ((_%h126734%_
               (if (##closure? _%obj126732%_)
                   (__object->eq-hash _%obj126732%_)
                   (##type-cast _%obj126732%_ '0))))
          (fxand _%h126734%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj126730%_) (__object->eq-hash _%obj126730%_)))
    (define eqv-hash
      (lambda (_%obj126720%_)
        (letrec ((_%combine126722%_
                  (lambda (_%a126727%_ _%b126728%_)
                    (fxand (##fx* (##fx+ _%a126727%_
                                         (fxarithmetic-shift-left
                                          _%b126728%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash126723%_
                  (lambda (_%obj126725%_)
                    (macro-number-dispatch
                     _%obj126725%_
                     (eq-hash _%obj126725%_)
                     (fxand _%obj126725%_ (macro-max-fixnum32))
                     (modulo _%obj126725%_ '331804481)
                     (_%combine126722%_
                      (_%hash126723%_ (macro-ratnum-numerator _%obj126725%_))
                      (_%hash126723%_
                       (macro-ratnum-denominator _%obj126725%_)))
                     (_%combine126722%_
                      (##u16vector-ref _%obj126725%_ '0)
                      (_%combine126722%_
                       (##u16vector-ref _%obj126725%_ '1)
                       (_%combine126722%_
                        (##u16vector-ref _%obj126725%_ '2)
                        (##u16vector-ref _%obj126725%_ '3))))
                     (_%combine126722%_
                      (_%hash126723%_ (macro-cpxnum-real _%obj126725%_))
                      (_%hash126723%_ (macro-cpxnum-imag _%obj126725%_)))))))
          (_%hash126723%_ _%obj126720%_))))
    (define symbolic?
      (lambda (_%obj126715%_)
        (let ((_%$e126717%_ (symbol? _%obj126715%_)))
          (if _%$e126717%_ _%$e126717%_ (keyword? _%obj126715%_)))))
    (define symbolic-hash
      (lambda (_%obj126713%_) (##symbol-hash _%obj126713%_)))
    (define string-hash
      (lambda (_%obj126711%_) (##string=?-hash _%obj126711%_)))
    (define immediate-hash
      (lambda (_%obj126709%_) (##type-cast _%obj126709%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint126691%_ _%seed126692%_)
        (make-raw-table__1 _%size-hint126691%_ eq-hash eq? _%seed126692%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint126698%_ '#f) (_%seed126700%_ '0))
          (make-eq-table__% _%size-hint126698%_ _%seed126700%_))))
    (define make-eq-table__1
      (lambda (_%size-hint126702%_)
        (let ((_%seed126704%_ '0))
          (make-eq-table__% _%size-hint126702%_ _%seed126704%_))))
    (define make-eq-table
      (lambda _g127331_
        (let ((_g127332_ (##length _g127331_)))
          (cond ((##fx= _g127332_ 0) (apply make-eq-table__0 _g127331_))
                ((##fx= _g127332_ 1) (apply make-eq-table__1 _g127331_))
                ((##fx= _g127332_ 2) (apply make-eq-table__% _g127331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g127331_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint126671%_ _%seed126673%_)
        (make-raw-table/lock__%
         _%size-hint126671%_
         eq-hash
         eq?
         _%seed126673%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint126679%_ '#f) (_%seed126681%_ '0))
          (make-eq-table/lock__% _%size-hint126679%_ _%seed126681%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint126683%_)
        (let ((_%seed126685%_ '0))
          (make-eq-table/lock__% _%size-hint126683%_ _%seed126685%_))))
    (define make-eq-table/lock
      (lambda _g127333_
        (let ((_g127334_ (##length _g127333_)))
          (cond ((##fx= _g127334_ 0) (apply make-eq-table/lock__0 _g127333_))
                ((##fx= _g127334_ 1) (apply make-eq-table/lock__1 _g127333_))
                ((##fx= _g127334_ 2) (apply make-eq-table/lock__% _g127333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g127333_))))))
    (define eq-table-ref
      (lambda (_%tab126624%_ _%key126625%_ _%default126626%_)
        (let ((_%table126628%_ (&raw-table-table _%tab126624%_))
              (_%seed126629%_ (&raw-table-seed _%tab126624%_)))
          (let* ((_%h126631%_ (fxxor (eq-hash _%key126625%_) _%seed126629%_))
                 (_%size126634%_ (vector-length _%table126628%_))
                 (_%entries126637%_ (##fxquotient _%size126634%_ '2))
                 (_%start126640%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126631%_ _%entries126637%_)
                   '1)))
            (let _%loop126644%_ ((_%probe126647%_ _%start126640%_)
                                 (_%i126649%_ '1)
                                 (_%deleted126651%_ '#f))
              (let ((_%k126654%_ (vector-ref _%table126628%_ _%probe126647%_)))
                (if (eq? _%k126654%_ (macro-unused-obj))
                    _%default126626%_
                    (if (eq? _%k126654%_ (macro-deleted-obj))
                        (_%loop126644%_
                         (let ((_%next-probe126659%_
                                (fx+ _%start126640%_
                                     _%i126649%_
                                     (fx* _%i126649%_ _%i126649%_))))
                           (##fxmodulo _%next-probe126659%_ _%size126634%_))
                         (##fx+ _%i126649%_ '1)
                         (let ((_%$e126662%_ _%deleted126651%_))
                           (if _%$e126662%_ _%$e126662%_ _%probe126647%_)))
                        (if (eq? _%key126625%_ _%k126654%_)
                            (vector-ref
                             _%table126628%_
                             (##fx+ _%probe126647%_ '1))
                            (_%loop126644%_
                             (let ((_%next-probe126667%_
                                    (fx+ _%start126640%_
                                         _%i126649%_
                                         (fx* _%i126649%_ _%i126649%_))))
                               (##fxmodulo
                                _%next-probe126667%_
                                _%size126634%_))
                             (##fx+ _%i126649%_ '1)
                             _%deleted126651%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab126595%_ _%key126596%_ _%default126597%_)
        (let ((_%lock126599%_ (&raw-table-lock _%tab126595%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126604%_ ((_%spin126607%_ '0))
              (if (##fx= (##vector-cas! _%lock126599%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126599%_ '1 (current-thread))
                  (if (##fx< _%spin126607%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126604%_ (##fx+ _%spin126607%_ '1)))
                      (let ((_%owner126613%_ (##vector-ref _%lock126599%_ '1)))
                        (if (eq? _%owner126613%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126613%_)
                                (let () (##thread-yield!) (_%again126604%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126619%_
                 (eq-table-ref _%tab126595%_ _%key126596%_ _%default126597%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126599%_ '1 '#f)
                (##vector-cas! _%lock126599%_ '0 '0 '1)))
            _%$r126619%_))))
    (define __eq-table-set!
      (lambda (_%tab126547%_ _%key126548%_ _%value126549%_)
        (let ((_%table126551%_ (&raw-table-table _%tab126547%_))
              (_%seed126552%_ (&raw-table-seed _%tab126547%_)))
          (let* ((_%h126554%_ (fxxor (eq-hash _%key126548%_) _%seed126552%_))
                 (_%size126557%_ (vector-length _%table126551%_))
                 (_%entries126560%_ (##fxquotient _%size126557%_ '2))
                 (_%start126563%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126554%_ _%entries126560%_)
                   '1)))
            (let _%loop126567%_ ((_%probe126570%_ _%start126563%_)
                                 (_%i126572%_ '1)
                                 (_%deleted126574%_ '#f))
              (let ((_%k126577%_ (vector-ref _%table126551%_ _%probe126570%_)))
                (if (eq? _%k126577%_ (macro-unused-obj))
                    (if _%deleted126574%_
                        (begin
                          (vector-set!
                           _%table126551%_
                           _%deleted126574%_
                           _%key126548%_)
                          (vector-set!
                           _%table126551%_
                           (##fx+ _%deleted126574%_ '1)
                           _%value126549%_)
                          (&raw-table-count-set!
                           _%tab126547%_
                           (##fx+ (&raw-table-count _%tab126547%_) '1)))
                        (begin
                          (vector-set!
                           _%table126551%_
                           _%probe126570%_
                           _%key126548%_)
                          (vector-set!
                           _%table126551%_
                           (##fx+ _%probe126570%_ '1)
                           _%value126549%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126547%_
                             (##fx- (&raw-table-free _%tab126547%_) '1))
                            (&raw-table-count-set!
                             _%tab126547%_
                             (##fx+ (&raw-table-count _%tab126547%_) '1)))))
                    (if (eq? _%k126577%_ (macro-deleted-obj))
                        (_%loop126567%_
                         (let ((_%next-probe126584%_
                                (fx+ _%start126563%_
                                     _%i126572%_
                                     (fx* _%i126572%_ _%i126572%_))))
                           (##fxmodulo _%next-probe126584%_ _%size126557%_))
                         (##fx+ _%i126572%_ '1)
                         (let ((_%$e126587%_ _%deleted126574%_))
                           (if _%$e126587%_ _%$e126587%_ _%probe126570%_)))
                        (if (eq? _%key126548%_ _%k126577%_)
                            (let ()
                              (vector-set!
                               _%table126551%_
                               _%probe126570%_
                               _%key126548%_)
                              (vector-set!
                               _%table126551%_
                               (##fx+ _%probe126570%_ '1)
                               _%value126549%_))
                            (_%loop126567%_
                             (let ((_%next-probe126592%_
                                    (fx+ _%start126563%_
                                         _%i126572%_
                                         (fx* _%i126572%_ _%i126572%_))))
                               (##fxmodulo
                                _%next-probe126592%_
                                _%size126557%_))
                             (##fx+ _%i126572%_ '1)
                             _%deleted126574%_))))))))))
    (define eq-table-set!
      (lambda (_%tab126543%_ _%key126544%_ _%value126545%_)
        (if (##fx< (&raw-table-free _%tab126543%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126543%_))
                    '4))
            (__raw-table-rehash! _%tab126543%_)
            '#!void)
        (__eq-table-set! _%tab126543%_ _%key126544%_ _%value126545%_)))
    (define eq-table-set!/lock
      (lambda (_%tab126513%_ _%key126514%_ _%value126515%_)
        (let ((_%lock126518%_ (&raw-table-lock _%tab126513%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126523%_ ((_%spin126526%_ '0))
              (if (##fx= (##vector-cas! _%lock126518%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126518%_ '1 (current-thread))
                  (if (##fx< _%spin126526%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126523%_ (##fx+ _%spin126526%_ '1)))
                      (let ((_%owner126532%_ (##vector-ref _%lock126518%_ '1)))
                        (if (eq? _%owner126532%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126532%_)
                                (let () (##thread-yield!) (_%again126523%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126538%_
                 (eq-table-set! _%tab126513%_ _%key126514%_ _%value126515%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126518%_ '1 '#f)
                (##vector-cas! _%lock126518%_ '0 '0 '1)))
            _%$r126538%_))))
    (define __eq-table-update!
      (lambda (_%tab126464%_
               _%key126465%_
               _%eq-table-update!126466%_
               _%default126467%_)
        (let ((_%table126469%_ (&raw-table-table _%tab126464%_))
              (_%seed126470%_ (&raw-table-seed _%tab126464%_)))
          (let* ((_%h126472%_ (fxxor (eq-hash _%key126465%_) _%seed126470%_))
                 (_%size126475%_ (vector-length _%table126469%_))
                 (_%entries126478%_ (##fxquotient _%size126475%_ '2))
                 (_%start126481%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126472%_ _%entries126478%_)
                   '1)))
            (let _%loop126485%_ ((_%probe126488%_ _%start126481%_)
                                 (_%i126490%_ '1)
                                 (_%deleted126492%_ '#f))
              (let ((_%k126495%_ (vector-ref _%table126469%_ _%probe126488%_)))
                (if (eq? _%k126495%_ (macro-unused-obj))
                    (if _%deleted126492%_
                        (begin
                          (vector-set!
                           _%table126469%_
                           _%deleted126492%_
                           _%key126465%_)
                          (vector-set!
                           _%table126469%_
                           (##fx+ _%deleted126492%_ '1)
                           (_%eq-table-update!126466%_ _%default126467%_))
                          (&raw-table-count-set!
                           _%tab126464%_
                           (##fx+ (&raw-table-count _%tab126464%_) '1)))
                        (begin
                          (vector-set!
                           _%table126469%_
                           _%probe126488%_
                           _%key126465%_)
                          (vector-set!
                           _%table126469%_
                           (##fx+ _%probe126488%_ '1)
                           (_%eq-table-update!126466%_ _%default126467%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab126464%_
                             (##fx- (&raw-table-free _%tab126464%_) '1))
                            (&raw-table-count-set!
                             _%tab126464%_
                             (##fx+ (&raw-table-count _%tab126464%_) '1)))))
                    (if (eq? _%k126495%_ (macro-deleted-obj))
                        (_%loop126485%_
                         (let ((_%next-probe126502%_
                                (fx+ _%start126481%_
                                     _%i126490%_
                                     (fx* _%i126490%_ _%i126490%_))))
                           (##fxmodulo _%next-probe126502%_ _%size126475%_))
                         (##fx+ _%i126490%_ '1)
                         (let ((_%$e126505%_ _%deleted126492%_))
                           (if _%$e126505%_ _%$e126505%_ _%probe126488%_)))
                        (if (eq? _%key126465%_ _%k126495%_)
                            (let ()
                              (vector-set!
                               _%table126469%_
                               _%probe126488%_
                               _%key126465%_)
                              (vector-set!
                               _%table126469%_
                               (##fx+ _%probe126488%_ '1)
                               (_%eq-table-update!126466%_
                                (vector-ref
                                 _%table126469%_
                                 (##fx+ _%probe126488%_ '1)))))
                            (_%loop126485%_
                             (let ((_%next-probe126510%_
                                    (fx+ _%start126481%_
                                         _%i126490%_
                                         (fx* _%i126490%_ _%i126490%_))))
                               (##fxmodulo
                                _%next-probe126510%_
                                _%size126475%_))
                             (##fx+ _%i126490%_ '1)
                             _%deleted126492%_))))))))))
    (define eq-table-update!
      (lambda (_%tab126459%_
               _%key126460%_
               _%eq-table-update!126461%_
               _%default126462%_)
        (if (##fx< (&raw-table-free _%tab126459%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126459%_))
                    '4))
            (__raw-table-rehash! _%tab126459%_)
            '#!void)
        (__eq-table-update!
         _%tab126459%_
         _%key126460%_
         _%eq-table-update!126461%_
         _%default126462%_)))
    (define eq-table-update!/lock
      (lambda (_%tab126428%_
               _%key126429%_
               _%eq-table-update!126430%_
               _%default126431%_)
        (let ((_%lock126434%_ (&raw-table-lock _%tab126428%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126439%_ ((_%spin126442%_ '0))
              (if (##fx= (##vector-cas! _%lock126434%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126434%_ '1 (current-thread))
                  (if (##fx< _%spin126442%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126439%_ (##fx+ _%spin126442%_ '1)))
                      (let ((_%owner126448%_ (##vector-ref _%lock126434%_ '1)))
                        (if (eq? _%owner126448%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126448%_)
                                (let () (##thread-yield!) (_%again126439%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126454%_
                 (_%eq-table-update!126430%_
                  _%tab126428%_
                  _%key126429%_
                  _%eq-table-update!126430%_
                  _%default126431%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126434%_ '1 '#f)
                (##vector-cas! _%lock126434%_ '0 '0 '1)))
            _%$r126454%_))))
    (define eq-table-delete!
      (lambda (_%tab126385%_ _%key126386%_)
        (let ((_%table126388%_ (&raw-table-table _%tab126385%_))
              (_%seed126390%_ (&raw-table-seed _%tab126385%_)))
          (let* ((_%h126393%_ (fxxor (eq-hash _%key126386%_) _%seed126390%_))
                 (_%size126396%_ (vector-length _%table126388%_))
                 (_%entries126399%_ (##fxquotient _%size126396%_ '2))
                 (_%start126402%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126393%_ _%entries126399%_)
                   '1)))
            (let _%loop126406%_ ((_%probe126409%_ _%start126402%_)
                                 (_%i126411%_ '1))
              (let ((_%k126414%_ (vector-ref _%table126388%_ _%probe126409%_)))
                (if (eq? _%k126414%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126414%_ (macro-deleted-obj))
                        (_%loop126406%_
                         (let ((_%next-probe126419%_
                                (fx+ _%start126402%_
                                     _%i126411%_
                                     (fx* _%i126411%_ _%i126411%_))))
                           (##fxmodulo _%next-probe126419%_ _%size126396%_))
                         (##fx+ _%i126411%_ '1))
                        (if (eq? _%key126386%_ _%k126414%_)
                            (let ()
                              (vector-set!
                               _%table126388%_
                               _%probe126409%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126388%_
                               (##fx+ _%probe126409%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab126385%_
                               (##fx- (&raw-table-count _%tab126385%_) '1)))
                            (_%loop126406%_
                             (let ((_%next-probe126425%_
                                    (fx+ _%start126402%_
                                         _%i126411%_
                                         (fx* _%i126411%_ _%i126411%_))))
                               (##fxmodulo
                                _%next-probe126425%_
                                _%size126396%_))
                             (##fx+ _%i126411%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab126355%_ _%key126357%_)
        (let ((_%lock126360%_ (&raw-table-lock _%tab126355%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126365%_ ((_%spin126368%_ '0))
              (if (##fx= (##vector-cas! _%lock126360%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126360%_ '1 (current-thread))
                  (if (##fx< _%spin126368%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126365%_ (##fx+ _%spin126368%_ '1)))
                      (let ((_%owner126374%_ (##vector-ref _%lock126360%_ '1)))
                        (if (eq? _%owner126374%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126374%_)
                                (let () (##thread-yield!) (_%again126365%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126380%_ (eq-table-delete! _%tab126355%_ _%key126357%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126360%_ '1 '#f)
                (##vector-cas! _%lock126360%_ '0 '0 '1)))
            _%$r126380%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint126337%_ _%seed126338%_)
        (make-raw-table__1 _%size-hint126337%_ eqv-hash eqv? _%seed126338%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint126344%_ '#f) (_%seed126346%_ '0))
          (make-eqv-table__% _%size-hint126344%_ _%seed126346%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint126348%_)
        (let ((_%seed126350%_ '0))
          (make-eqv-table__% _%size-hint126348%_ _%seed126350%_))))
    (define make-eqv-table
      (lambda _g127335_
        (let ((_g127336_ (##length _g127335_)))
          (cond ((##fx= _g127336_ 0) (apply make-eqv-table__0 _g127335_))
                ((##fx= _g127336_ 1) (apply make-eqv-table__1 _g127335_))
                ((##fx= _g127336_ 2) (apply make-eqv-table__% _g127335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g127335_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint126317%_ _%seed126319%_)
        (make-raw-table/lock__%
         _%size-hint126317%_
         eqv-hash
         eqv?
         _%seed126319%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint126325%_ '#f) (_%seed126327%_ '0))
          (make-eqv-table/lock__% _%size-hint126325%_ _%seed126327%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint126329%_)
        (let ((_%seed126331%_ '0))
          (make-eqv-table/lock__% _%size-hint126329%_ _%seed126331%_))))
    (define make-eqv-table/lock
      (lambda _g127337_
        (let ((_g127338_ (##length _g127337_)))
          (cond ((##fx= _g127338_ 0) (apply make-eqv-table/lock__0 _g127337_))
                ((##fx= _g127338_ 1) (apply make-eqv-table/lock__1 _g127337_))
                ((##fx= _g127338_ 2) (apply make-eqv-table/lock__% _g127337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g127337_))))))
    (define eqv-table-ref
      (lambda (_%tab126270%_ _%key126271%_ _%default126272%_)
        (let ((_%table126274%_ (&raw-table-table _%tab126270%_))
              (_%seed126275%_ (&raw-table-seed _%tab126270%_)))
          (let* ((_%h126277%_ (fxxor (eqv-hash _%key126271%_) _%seed126275%_))
                 (_%size126280%_ (vector-length _%table126274%_))
                 (_%entries126283%_ (##fxquotient _%size126280%_ '2))
                 (_%start126286%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126277%_ _%entries126283%_)
                   '1)))
            (let _%loop126290%_ ((_%probe126293%_ _%start126286%_)
                                 (_%i126295%_ '1)
                                 (_%deleted126297%_ '#f))
              (let ((_%k126300%_ (vector-ref _%table126274%_ _%probe126293%_)))
                (if (eq? _%k126300%_ (macro-unused-obj))
                    _%default126272%_
                    (if (eq? _%k126300%_ (macro-deleted-obj))
                        (_%loop126290%_
                         (let ((_%next-probe126305%_
                                (fx+ _%start126286%_
                                     _%i126295%_
                                     (fx* _%i126295%_ _%i126295%_))))
                           (##fxmodulo _%next-probe126305%_ _%size126280%_))
                         (##fx+ _%i126295%_ '1)
                         (let ((_%$e126308%_ _%deleted126297%_))
                           (if _%$e126308%_ _%$e126308%_ _%probe126293%_)))
                        (if (eqv? _%key126271%_ _%k126300%_)
                            (vector-ref
                             _%table126274%_
                             (##fx+ _%probe126293%_ '1))
                            (_%loop126290%_
                             (let ((_%next-probe126313%_
                                    (fx+ _%start126286%_
                                         _%i126295%_
                                         (fx* _%i126295%_ _%i126295%_))))
                               (##fxmodulo
                                _%next-probe126313%_
                                _%size126280%_))
                             (##fx+ _%i126295%_ '1)
                             _%deleted126297%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab126241%_ _%key126242%_ _%default126243%_)
        (let ((_%lock126245%_ (&raw-table-lock _%tab126241%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126250%_ ((_%spin126253%_ '0))
              (if (##fx= (##vector-cas! _%lock126245%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126245%_ '1 (current-thread))
                  (if (##fx< _%spin126253%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126250%_ (##fx+ _%spin126253%_ '1)))
                      (let ((_%owner126259%_ (##vector-ref _%lock126245%_ '1)))
                        (if (eq? _%owner126259%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126259%_)
                                (let () (##thread-yield!) (_%again126250%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126265%_
                 (eqv-table-ref
                  _%tab126241%_
                  _%key126242%_
                  _%default126243%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126245%_ '1 '#f)
                (##vector-cas! _%lock126245%_ '0 '0 '1)))
            _%$r126265%_))))
    (define __eqv-table-set!
      (lambda (_%tab126193%_ _%key126194%_ _%value126195%_)
        (let ((_%table126197%_ (&raw-table-table _%tab126193%_))
              (_%seed126198%_ (&raw-table-seed _%tab126193%_)))
          (let* ((_%h126200%_ (fxxor (eqv-hash _%key126194%_) _%seed126198%_))
                 (_%size126203%_ (vector-length _%table126197%_))
                 (_%entries126206%_ (##fxquotient _%size126203%_ '2))
                 (_%start126209%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126200%_ _%entries126206%_)
                   '1)))
            (let _%loop126213%_ ((_%probe126216%_ _%start126209%_)
                                 (_%i126218%_ '1)
                                 (_%deleted126220%_ '#f))
              (let ((_%k126223%_ (vector-ref _%table126197%_ _%probe126216%_)))
                (if (eq? _%k126223%_ (macro-unused-obj))
                    (if _%deleted126220%_
                        (begin
                          (vector-set!
                           _%table126197%_
                           _%deleted126220%_
                           _%key126194%_)
                          (vector-set!
                           _%table126197%_
                           (##fx+ _%deleted126220%_ '1)
                           _%value126195%_)
                          (&raw-table-count-set!
                           _%tab126193%_
                           (##fx+ (&raw-table-count _%tab126193%_) '1)))
                        (begin
                          (vector-set!
                           _%table126197%_
                           _%probe126216%_
                           _%key126194%_)
                          (vector-set!
                           _%table126197%_
                           (##fx+ _%probe126216%_ '1)
                           _%value126195%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126193%_
                             (##fx- (&raw-table-free _%tab126193%_) '1))
                            (&raw-table-count-set!
                             _%tab126193%_
                             (##fx+ (&raw-table-count _%tab126193%_) '1)))))
                    (if (eq? _%k126223%_ (macro-deleted-obj))
                        (_%loop126213%_
                         (let ((_%next-probe126230%_
                                (fx+ _%start126209%_
                                     _%i126218%_
                                     (fx* _%i126218%_ _%i126218%_))))
                           (##fxmodulo _%next-probe126230%_ _%size126203%_))
                         (##fx+ _%i126218%_ '1)
                         (let ((_%$e126233%_ _%deleted126220%_))
                           (if _%$e126233%_ _%$e126233%_ _%probe126216%_)))
                        (if (eqv? _%key126194%_ _%k126223%_)
                            (let ()
                              (vector-set!
                               _%table126197%_
                               _%probe126216%_
                               _%key126194%_)
                              (vector-set!
                               _%table126197%_
                               (##fx+ _%probe126216%_ '1)
                               _%value126195%_))
                            (_%loop126213%_
                             (let ((_%next-probe126238%_
                                    (fx+ _%start126209%_
                                         _%i126218%_
                                         (fx* _%i126218%_ _%i126218%_))))
                               (##fxmodulo
                                _%next-probe126238%_
                                _%size126203%_))
                             (##fx+ _%i126218%_ '1)
                             _%deleted126220%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab126189%_ _%key126190%_ _%value126191%_)
        (if (##fx< (&raw-table-free _%tab126189%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126189%_))
                    '4))
            (__raw-table-rehash! _%tab126189%_)
            '#!void)
        (__eqv-table-set! _%tab126189%_ _%key126190%_ _%value126191%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab126159%_ _%key126160%_ _%value126161%_)
        (let ((_%lock126164%_ (&raw-table-lock _%tab126159%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126169%_ ((_%spin126172%_ '0))
              (if (##fx= (##vector-cas! _%lock126164%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126164%_ '1 (current-thread))
                  (if (##fx< _%spin126172%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126169%_ (##fx+ _%spin126172%_ '1)))
                      (let ((_%owner126178%_ (##vector-ref _%lock126164%_ '1)))
                        (if (eq? _%owner126178%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126178%_)
                                (let () (##thread-yield!) (_%again126169%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126184%_
                 (eqv-table-set! _%tab126159%_ _%key126160%_ _%value126161%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126164%_ '1 '#f)
                (##vector-cas! _%lock126164%_ '0 '0 '1)))
            _%$r126184%_))))
    (define __eqv-table-update!
      (lambda (_%tab126110%_
               _%key126111%_
               _%eqv-table-update!126112%_
               _%default126113%_)
        (let ((_%table126115%_ (&raw-table-table _%tab126110%_))
              (_%seed126116%_ (&raw-table-seed _%tab126110%_)))
          (let* ((_%h126118%_ (fxxor (eqv-hash _%key126111%_) _%seed126116%_))
                 (_%size126121%_ (vector-length _%table126115%_))
                 (_%entries126124%_ (##fxquotient _%size126121%_ '2))
                 (_%start126127%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126118%_ _%entries126124%_)
                   '1)))
            (let _%loop126131%_ ((_%probe126134%_ _%start126127%_)
                                 (_%i126136%_ '1)
                                 (_%deleted126138%_ '#f))
              (let ((_%k126141%_ (vector-ref _%table126115%_ _%probe126134%_)))
                (if (eq? _%k126141%_ (macro-unused-obj))
                    (if _%deleted126138%_
                        (begin
                          (vector-set!
                           _%table126115%_
                           _%deleted126138%_
                           _%key126111%_)
                          (vector-set!
                           _%table126115%_
                           (##fx+ _%deleted126138%_ '1)
                           (_%eqv-table-update!126112%_ _%default126113%_))
                          (&raw-table-count-set!
                           _%tab126110%_
                           (##fx+ (&raw-table-count _%tab126110%_) '1)))
                        (begin
                          (vector-set!
                           _%table126115%_
                           _%probe126134%_
                           _%key126111%_)
                          (vector-set!
                           _%table126115%_
                           (##fx+ _%probe126134%_ '1)
                           (_%eqv-table-update!126112%_ _%default126113%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab126110%_
                             (##fx- (&raw-table-free _%tab126110%_) '1))
                            (&raw-table-count-set!
                             _%tab126110%_
                             (##fx+ (&raw-table-count _%tab126110%_) '1)))))
                    (if (eq? _%k126141%_ (macro-deleted-obj))
                        (_%loop126131%_
                         (let ((_%next-probe126148%_
                                (fx+ _%start126127%_
                                     _%i126136%_
                                     (fx* _%i126136%_ _%i126136%_))))
                           (##fxmodulo _%next-probe126148%_ _%size126121%_))
                         (##fx+ _%i126136%_ '1)
                         (let ((_%$e126151%_ _%deleted126138%_))
                           (if _%$e126151%_ _%$e126151%_ _%probe126134%_)))
                        (if (eqv? _%key126111%_ _%k126141%_)
                            (let ()
                              (vector-set!
                               _%table126115%_
                               _%probe126134%_
                               _%key126111%_)
                              (vector-set!
                               _%table126115%_
                               (##fx+ _%probe126134%_ '1)
                               (_%eqv-table-update!126112%_
                                (vector-ref
                                 _%table126115%_
                                 (##fx+ _%probe126134%_ '1)))))
                            (_%loop126131%_
                             (let ((_%next-probe126156%_
                                    (fx+ _%start126127%_
                                         _%i126136%_
                                         (fx* _%i126136%_ _%i126136%_))))
                               (##fxmodulo
                                _%next-probe126156%_
                                _%size126121%_))
                             (##fx+ _%i126136%_ '1)
                             _%deleted126138%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab126105%_
               _%key126106%_
               _%eqv-table-update!126107%_
               _%default126108%_)
        (if (##fx< (&raw-table-free _%tab126105%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126105%_))
                    '4))
            (__raw-table-rehash! _%tab126105%_)
            '#!void)
        (__eqv-table-update!
         _%tab126105%_
         _%key126106%_
         _%eqv-table-update!126107%_
         _%default126108%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab126074%_
               _%key126075%_
               _%eqv-table-update!126076%_
               _%default126077%_)
        (let ((_%lock126080%_ (&raw-table-lock _%tab126074%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126085%_ ((_%spin126088%_ '0))
              (if (##fx= (##vector-cas! _%lock126080%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126080%_ '1 (current-thread))
                  (if (##fx< _%spin126088%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126085%_ (##fx+ _%spin126088%_ '1)))
                      (let ((_%owner126094%_ (##vector-ref _%lock126080%_ '1)))
                        (if (eq? _%owner126094%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126094%_)
                                (let () (##thread-yield!) (_%again126085%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126100%_
                 (_%eqv-table-update!126076%_
                  _%tab126074%_
                  _%key126075%_
                  _%eqv-table-update!126076%_
                  _%default126077%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126080%_ '1 '#f)
                (##vector-cas! _%lock126080%_ '0 '0 '1)))
            _%$r126100%_))))
    (define eqv-table-delete!
      (lambda (_%tab126031%_ _%key126032%_)
        (let ((_%table126034%_ (&raw-table-table _%tab126031%_))
              (_%seed126036%_ (&raw-table-seed _%tab126031%_)))
          (let* ((_%h126039%_ (fxxor (eqv-hash _%key126032%_) _%seed126036%_))
                 (_%size126042%_ (vector-length _%table126034%_))
                 (_%entries126045%_ (##fxquotient _%size126042%_ '2))
                 (_%start126048%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126039%_ _%entries126045%_)
                   '1)))
            (let _%loop126052%_ ((_%probe126055%_ _%start126048%_)
                                 (_%i126057%_ '1))
              (let ((_%k126060%_ (vector-ref _%table126034%_ _%probe126055%_)))
                (if (eq? _%k126060%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126060%_ (macro-deleted-obj))
                        (_%loop126052%_
                         (let ((_%next-probe126065%_
                                (fx+ _%start126048%_
                                     _%i126057%_
                                     (fx* _%i126057%_ _%i126057%_))))
                           (##fxmodulo _%next-probe126065%_ _%size126042%_))
                         (##fx+ _%i126057%_ '1))
                        (if (eqv? _%key126032%_ _%k126060%_)
                            (let ()
                              (vector-set!
                               _%table126034%_
                               _%probe126055%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126034%_
                               (##fx+ _%probe126055%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab126031%_
                               (##fx- (&raw-table-count _%tab126031%_) '1)))
                            (_%loop126052%_
                             (let ((_%next-probe126071%_
                                    (fx+ _%start126048%_
                                         _%i126057%_
                                         (fx* _%i126057%_ _%i126057%_))))
                               (##fxmodulo
                                _%next-probe126071%_
                                _%size126042%_))
                             (##fx+ _%i126057%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab126001%_ _%key126003%_)
        (let ((_%lock126006%_ (&raw-table-lock _%tab126001%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126011%_ ((_%spin126014%_ '0))
              (if (##fx= (##vector-cas! _%lock126006%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126006%_ '1 (current-thread))
                  (if (##fx< _%spin126014%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126011%_ (##fx+ _%spin126014%_ '1)))
                      (let ((_%owner126020%_ (##vector-ref _%lock126006%_ '1)))
                        (if (eq? _%owner126020%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126020%_)
                                (let () (##thread-yield!) (_%again126011%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126026%_ (eqv-table-delete! _%tab126001%_ _%key126003%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126006%_ '1 '#f)
                (##vector-cas! _%lock126006%_ '0 '0 '1)))
            _%$r126026%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint125983%_ _%seed125984%_)
        (make-raw-table__1
         _%size-hint125983%_
         symbolic-hash
         eq?
         _%seed125984%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint125990%_ '#f) (_%seed125992%_ '0))
          (make-symbolic-table__% _%size-hint125990%_ _%seed125992%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint125994%_)
        (let ((_%seed125996%_ '0))
          (make-symbolic-table__% _%size-hint125994%_ _%seed125996%_))))
    (define make-symbolic-table
      (lambda _g127339_
        (let ((_g127340_ (##length _g127339_)))
          (cond ((##fx= _g127340_ 0) (apply make-symbolic-table__0 _g127339_))
                ((##fx= _g127340_ 1) (apply make-symbolic-table__1 _g127339_))
                ((##fx= _g127340_ 2) (apply make-symbolic-table__% _g127339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g127339_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint125963%_ _%seed125965%_)
        (make-raw-table/lock__%
         _%size-hint125963%_
         symbolic-hash
         eq?
         _%seed125965%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint125971%_ '#f) (_%seed125973%_ '0))
          (make-symbolic-table/lock__% _%size-hint125971%_ _%seed125973%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint125975%_)
        (let ((_%seed125977%_ '0))
          (make-symbolic-table/lock__% _%size-hint125975%_ _%seed125977%_))))
    (define make-symbolic-table/lock
      (lambda _g127341_
        (let ((_g127342_ (##length _g127341_)))
          (cond ((##fx= _g127342_ 0)
                 (apply make-symbolic-table/lock__0 _g127341_))
                ((##fx= _g127342_ 1)
                 (apply make-symbolic-table/lock__1 _g127341_))
                ((##fx= _g127342_ 2)
                 (apply make-symbolic-table/lock__% _g127341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g127341_))))))
    (define symbolic-table-ref
      (lambda (_%tab125916%_ _%key125917%_ _%default125918%_)
        (let ((_%table125920%_ (&raw-table-table _%tab125916%_))
              (_%seed125921%_ (&raw-table-seed _%tab125916%_)))
          (let* ((_%h125923%_
                  (fxxor (##symbol-hash _%key125917%_) _%seed125921%_))
                 (_%size125926%_ (vector-length _%table125920%_))
                 (_%entries125929%_ (##fxquotient _%size125926%_ '2))
                 (_%start125932%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125923%_ _%entries125929%_)
                   '1)))
            (let _%loop125936%_ ((_%probe125939%_ _%start125932%_)
                                 (_%i125941%_ '1)
                                 (_%deleted125943%_ '#f))
              (let ((_%k125946%_ (vector-ref _%table125920%_ _%probe125939%_)))
                (if (eq? _%k125946%_ (macro-unused-obj))
                    _%default125918%_
                    (if (eq? _%k125946%_ (macro-deleted-obj))
                        (_%loop125936%_
                         (let ((_%next-probe125951%_
                                (fx+ _%start125932%_
                                     _%i125941%_
                                     (fx* _%i125941%_ _%i125941%_))))
                           (##fxmodulo _%next-probe125951%_ _%size125926%_))
                         (##fx+ _%i125941%_ '1)
                         (let ((_%$e125954%_ _%deleted125943%_))
                           (if _%$e125954%_ _%$e125954%_ _%probe125939%_)))
                        (if (eq? _%key125917%_ _%k125946%_)
                            (vector-ref
                             _%table125920%_
                             (##fx+ _%probe125939%_ '1))
                            (_%loop125936%_
                             (let ((_%next-probe125959%_
                                    (fx+ _%start125932%_
                                         _%i125941%_
                                         (fx* _%i125941%_ _%i125941%_))))
                               (##fxmodulo
                                _%next-probe125959%_
                                _%size125926%_))
                             (##fx+ _%i125941%_ '1)
                             _%deleted125943%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab125887%_ _%key125888%_ _%default125889%_)
        (let ((_%lock125891%_ (&raw-table-lock _%tab125887%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125896%_ ((_%spin125899%_ '0))
              (if (##fx= (##vector-cas! _%lock125891%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125891%_ '1 (current-thread))
                  (if (##fx< _%spin125899%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125896%_ (##fx+ _%spin125899%_ '1)))
                      (let ((_%owner125905%_ (##vector-ref _%lock125891%_ '1)))
                        (if (eq? _%owner125905%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125905%_)
                                (let () (##thread-yield!) (_%again125896%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125911%_
                 (symbolic-table-ref
                  _%tab125887%_
                  _%key125888%_
                  _%default125889%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125891%_ '1 '#f)
                (##vector-cas! _%lock125891%_ '0 '0 '1)))
            _%$r125911%_))))
    (define __symbolic-table-set!
      (lambda (_%tab125839%_ _%key125840%_ _%value125841%_)
        (let ((_%table125843%_ (&raw-table-table _%tab125839%_))
              (_%seed125844%_ (&raw-table-seed _%tab125839%_)))
          (let* ((_%h125846%_
                  (fxxor (##symbol-hash _%key125840%_) _%seed125844%_))
                 (_%size125849%_ (vector-length _%table125843%_))
                 (_%entries125852%_ (##fxquotient _%size125849%_ '2))
                 (_%start125855%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125846%_ _%entries125852%_)
                   '1)))
            (let _%loop125859%_ ((_%probe125862%_ _%start125855%_)
                                 (_%i125864%_ '1)
                                 (_%deleted125866%_ '#f))
              (let ((_%k125869%_ (vector-ref _%table125843%_ _%probe125862%_)))
                (if (eq? _%k125869%_ (macro-unused-obj))
                    (if _%deleted125866%_
                        (begin
                          (vector-set!
                           _%table125843%_
                           _%deleted125866%_
                           _%key125840%_)
                          (vector-set!
                           _%table125843%_
                           (##fx+ _%deleted125866%_ '1)
                           _%value125841%_)
                          (&raw-table-count-set!
                           _%tab125839%_
                           (##fx+ (&raw-table-count _%tab125839%_) '1)))
                        (begin
                          (vector-set!
                           _%table125843%_
                           _%probe125862%_
                           _%key125840%_)
                          (vector-set!
                           _%table125843%_
                           (##fx+ _%probe125862%_ '1)
                           _%value125841%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab125839%_
                             (##fx- (&raw-table-free _%tab125839%_) '1))
                            (&raw-table-count-set!
                             _%tab125839%_
                             (##fx+ (&raw-table-count _%tab125839%_) '1)))))
                    (if (eq? _%k125869%_ (macro-deleted-obj))
                        (_%loop125859%_
                         (let ((_%next-probe125876%_
                                (fx+ _%start125855%_
                                     _%i125864%_
                                     (fx* _%i125864%_ _%i125864%_))))
                           (##fxmodulo _%next-probe125876%_ _%size125849%_))
                         (##fx+ _%i125864%_ '1)
                         (let ((_%$e125879%_ _%deleted125866%_))
                           (if _%$e125879%_ _%$e125879%_ _%probe125862%_)))
                        (if (eq? _%key125840%_ _%k125869%_)
                            (let ()
                              (vector-set!
                               _%table125843%_
                               _%probe125862%_
                               _%key125840%_)
                              (vector-set!
                               _%table125843%_
                               (##fx+ _%probe125862%_ '1)
                               _%value125841%_))
                            (_%loop125859%_
                             (let ((_%next-probe125884%_
                                    (fx+ _%start125855%_
                                         _%i125864%_
                                         (fx* _%i125864%_ _%i125864%_))))
                               (##fxmodulo
                                _%next-probe125884%_
                                _%size125849%_))
                             (##fx+ _%i125864%_ '1)
                             _%deleted125866%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab125835%_ _%key125836%_ _%value125837%_)
        (if (##fx< (&raw-table-free _%tab125835%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125835%_))
                    '4))
            (__raw-table-rehash! _%tab125835%_)
            '#!void)
        (__symbolic-table-set! _%tab125835%_ _%key125836%_ _%value125837%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab125805%_ _%key125806%_ _%value125807%_)
        (let ((_%lock125810%_ (&raw-table-lock _%tab125805%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125815%_ ((_%spin125818%_ '0))
              (if (##fx= (##vector-cas! _%lock125810%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125810%_ '1 (current-thread))
                  (if (##fx< _%spin125818%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125815%_ (##fx+ _%spin125818%_ '1)))
                      (let ((_%owner125824%_ (##vector-ref _%lock125810%_ '1)))
                        (if (eq? _%owner125824%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125824%_)
                                (let () (##thread-yield!) (_%again125815%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125830%_
                 (symbolic-table-set!
                  _%tab125805%_
                  _%key125806%_
                  _%value125807%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125810%_ '1 '#f)
                (##vector-cas! _%lock125810%_ '0 '0 '1)))
            _%$r125830%_))))
    (define __symbolic-table-update!
      (lambda (_%tab125756%_
               _%key125757%_
               _%symbolic-table-update!125758%_
               _%default125759%_)
        (let ((_%table125761%_ (&raw-table-table _%tab125756%_))
              (_%seed125762%_ (&raw-table-seed _%tab125756%_)))
          (let* ((_%h125764%_
                  (fxxor (##symbol-hash _%key125757%_) _%seed125762%_))
                 (_%size125767%_ (vector-length _%table125761%_))
                 (_%entries125770%_ (##fxquotient _%size125767%_ '2))
                 (_%start125773%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125764%_ _%entries125770%_)
                   '1)))
            (let _%loop125777%_ ((_%probe125780%_ _%start125773%_)
                                 (_%i125782%_ '1)
                                 (_%deleted125784%_ '#f))
              (let ((_%k125787%_ (vector-ref _%table125761%_ _%probe125780%_)))
                (if (eq? _%k125787%_ (macro-unused-obj))
                    (if _%deleted125784%_
                        (begin
                          (vector-set!
                           _%table125761%_
                           _%deleted125784%_
                           _%key125757%_)
                          (vector-set!
                           _%table125761%_
                           (##fx+ _%deleted125784%_ '1)
                           (_%symbolic-table-update!125758%_
                            _%default125759%_))
                          (&raw-table-count-set!
                           _%tab125756%_
                           (##fx+ (&raw-table-count _%tab125756%_) '1)))
                        (begin
                          (vector-set!
                           _%table125761%_
                           _%probe125780%_
                           _%key125757%_)
                          (vector-set!
                           _%table125761%_
                           (##fx+ _%probe125780%_ '1)
                           (_%symbolic-table-update!125758%_
                            _%default125759%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125756%_
                             (##fx- (&raw-table-free _%tab125756%_) '1))
                            (&raw-table-count-set!
                             _%tab125756%_
                             (##fx+ (&raw-table-count _%tab125756%_) '1)))))
                    (if (eq? _%k125787%_ (macro-deleted-obj))
                        (_%loop125777%_
                         (let ((_%next-probe125794%_
                                (fx+ _%start125773%_
                                     _%i125782%_
                                     (fx* _%i125782%_ _%i125782%_))))
                           (##fxmodulo _%next-probe125794%_ _%size125767%_))
                         (##fx+ _%i125782%_ '1)
                         (let ((_%$e125797%_ _%deleted125784%_))
                           (if _%$e125797%_ _%$e125797%_ _%probe125780%_)))
                        (if (eq? _%key125757%_ _%k125787%_)
                            (let ()
                              (vector-set!
                               _%table125761%_
                               _%probe125780%_
                               _%key125757%_)
                              (vector-set!
                               _%table125761%_
                               (##fx+ _%probe125780%_ '1)
                               (_%symbolic-table-update!125758%_
                                (vector-ref
                                 _%table125761%_
                                 (##fx+ _%probe125780%_ '1)))))
                            (_%loop125777%_
                             (let ((_%next-probe125802%_
                                    (fx+ _%start125773%_
                                         _%i125782%_
                                         (fx* _%i125782%_ _%i125782%_))))
                               (##fxmodulo
                                _%next-probe125802%_
                                _%size125767%_))
                             (##fx+ _%i125782%_ '1)
                             _%deleted125784%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab125751%_
               _%key125752%_
               _%symbolic-table-update!125753%_
               _%default125754%_)
        (if (##fx< (&raw-table-free _%tab125751%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125751%_))
                    '4))
            (__raw-table-rehash! _%tab125751%_)
            '#!void)
        (__symbolic-table-update!
         _%tab125751%_
         _%key125752%_
         _%symbolic-table-update!125753%_
         _%default125754%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab125720%_
               _%key125721%_
               _%symbolic-table-update!125722%_
               _%default125723%_)
        (let ((_%lock125726%_ (&raw-table-lock _%tab125720%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125731%_ ((_%spin125734%_ '0))
              (if (##fx= (##vector-cas! _%lock125726%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125726%_ '1 (current-thread))
                  (if (##fx< _%spin125734%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125731%_ (##fx+ _%spin125734%_ '1)))
                      (let ((_%owner125740%_ (##vector-ref _%lock125726%_ '1)))
                        (if (eq? _%owner125740%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125740%_)
                                (let () (##thread-yield!) (_%again125731%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125746%_
                 (_%symbolic-table-update!125722%_
                  _%tab125720%_
                  _%key125721%_
                  _%symbolic-table-update!125722%_
                  _%default125723%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125726%_ '1 '#f)
                (##vector-cas! _%lock125726%_ '0 '0 '1)))
            _%$r125746%_))))
    (define symbolic-table-delete!
      (lambda (_%tab125677%_ _%key125678%_)
        (let ((_%table125680%_ (&raw-table-table _%tab125677%_))
              (_%seed125682%_ (&raw-table-seed _%tab125677%_)))
          (let* ((_%h125685%_
                  (fxxor (##symbol-hash _%key125678%_) _%seed125682%_))
                 (_%size125688%_ (vector-length _%table125680%_))
                 (_%entries125691%_ (##fxquotient _%size125688%_ '2))
                 (_%start125694%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125685%_ _%entries125691%_)
                   '1)))
            (let _%loop125698%_ ((_%probe125701%_ _%start125694%_)
                                 (_%i125703%_ '1))
              (let ((_%k125706%_ (vector-ref _%table125680%_ _%probe125701%_)))
                (if (eq? _%k125706%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125706%_ (macro-deleted-obj))
                        (_%loop125698%_
                         (let ((_%next-probe125711%_
                                (fx+ _%start125694%_
                                     _%i125703%_
                                     (fx* _%i125703%_ _%i125703%_))))
                           (##fxmodulo _%next-probe125711%_ _%size125688%_))
                         (##fx+ _%i125703%_ '1))
                        (if (eq? _%key125678%_ _%k125706%_)
                            (let ()
                              (vector-set!
                               _%table125680%_
                               _%probe125701%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125680%_
                               (##fx+ _%probe125701%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125677%_
                               (##fx- (&raw-table-count _%tab125677%_) '1)))
                            (_%loop125698%_
                             (let ((_%next-probe125717%_
                                    (fx+ _%start125694%_
                                         _%i125703%_
                                         (fx* _%i125703%_ _%i125703%_))))
                               (##fxmodulo
                                _%next-probe125717%_
                                _%size125688%_))
                             (##fx+ _%i125703%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab125647%_ _%key125649%_)
        (let ((_%lock125652%_ (&raw-table-lock _%tab125647%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125657%_ ((_%spin125660%_ '0))
              (if (##fx= (##vector-cas! _%lock125652%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125652%_ '1 (current-thread))
                  (if (##fx< _%spin125660%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125657%_ (##fx+ _%spin125660%_ '1)))
                      (let ((_%owner125666%_ (##vector-ref _%lock125652%_ '1)))
                        (if (eq? _%owner125666%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125666%_)
                                (let () (##thread-yield!) (_%again125657%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125672%_
                 (symbolic-table-delete! _%tab125647%_ _%key125649%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125652%_ '1 '#f)
                (##vector-cas! _%lock125652%_ '0 '0 '1)))
            _%$r125672%_))))
    (define make-string-table__%
      (lambda (_%size-hint125629%_ _%seed125630%_)
        (make-raw-table__1
         _%size-hint125629%_
         string-hash
         ##string=?
         _%seed125630%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint125636%_ '#f) (_%seed125638%_ '0))
          (make-string-table__% _%size-hint125636%_ _%seed125638%_))))
    (define make-string-table__1
      (lambda (_%size-hint125640%_)
        (let ((_%seed125642%_ '0))
          (make-string-table__% _%size-hint125640%_ _%seed125642%_))))
    (define make-string-table
      (lambda _g127343_
        (let ((_g127344_ (##length _g127343_)))
          (cond ((##fx= _g127344_ 0) (apply make-string-table__0 _g127343_))
                ((##fx= _g127344_ 1) (apply make-string-table__1 _g127343_))
                ((##fx= _g127344_ 2) (apply make-string-table__% _g127343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g127343_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint125609%_ _%seed125611%_)
        (make-raw-table/lock__%
         _%size-hint125609%_
         string-hash
         ##string=?
         _%seed125611%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint125617%_ '#f) (_%seed125619%_ '0))
          (make-string-table/lock__% _%size-hint125617%_ _%seed125619%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint125621%_)
        (let ((_%seed125623%_ '0))
          (make-string-table/lock__% _%size-hint125621%_ _%seed125623%_))))
    (define make-string-table/lock
      (lambda _g127345_
        (let ((_g127346_ (##length _g127345_)))
          (cond ((##fx= _g127346_ 0)
                 (apply make-string-table/lock__0 _g127345_))
                ((##fx= _g127346_ 1)
                 (apply make-string-table/lock__1 _g127345_))
                ((##fx= _g127346_ 2)
                 (apply make-string-table/lock__% _g127345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g127345_))))))
    (define string-table-ref
      (lambda (_%tab125562%_ _%key125563%_ _%default125564%_)
        (let ((_%table125566%_ (&raw-table-table _%tab125562%_))
              (_%seed125567%_ (&raw-table-seed _%tab125562%_)))
          (let* ((_%h125569%_
                  (fxxor (##string=?-hash _%key125563%_) _%seed125567%_))
                 (_%size125572%_ (vector-length _%table125566%_))
                 (_%entries125575%_ (##fxquotient _%size125572%_ '2))
                 (_%start125578%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125569%_ _%entries125575%_)
                   '1)))
            (let _%loop125582%_ ((_%probe125585%_ _%start125578%_)
                                 (_%i125587%_ '1)
                                 (_%deleted125589%_ '#f))
              (let ((_%k125592%_ (vector-ref _%table125566%_ _%probe125585%_)))
                (if (eq? _%k125592%_ (macro-unused-obj))
                    _%default125564%_
                    (if (eq? _%k125592%_ (macro-deleted-obj))
                        (_%loop125582%_
                         (let ((_%next-probe125597%_
                                (fx+ _%start125578%_
                                     _%i125587%_
                                     (fx* _%i125587%_ _%i125587%_))))
                           (##fxmodulo _%next-probe125597%_ _%size125572%_))
                         (##fx+ _%i125587%_ '1)
                         (let ((_%$e125600%_ _%deleted125589%_))
                           (if _%$e125600%_ _%$e125600%_ _%probe125585%_)))
                        (if (##string=? _%key125563%_ _%k125592%_)
                            (vector-ref
                             _%table125566%_
                             (##fx+ _%probe125585%_ '1))
                            (_%loop125582%_
                             (let ((_%next-probe125605%_
                                    (fx+ _%start125578%_
                                         _%i125587%_
                                         (fx* _%i125587%_ _%i125587%_))))
                               (##fxmodulo
                                _%next-probe125605%_
                                _%size125572%_))
                             (##fx+ _%i125587%_ '1)
                             _%deleted125589%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab125533%_ _%key125534%_ _%default125535%_)
        (let ((_%lock125537%_ (&raw-table-lock _%tab125533%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125542%_ ((_%spin125545%_ '0))
              (if (##fx= (##vector-cas! _%lock125537%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125537%_ '1 (current-thread))
                  (if (##fx< _%spin125545%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125542%_ (##fx+ _%spin125545%_ '1)))
                      (let ((_%owner125551%_ (##vector-ref _%lock125537%_ '1)))
                        (if (eq? _%owner125551%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125551%_)
                                (let () (##thread-yield!) (_%again125542%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125557%_
                 (string-table-ref
                  _%tab125533%_
                  _%key125534%_
                  _%default125535%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125537%_ '1 '#f)
                (##vector-cas! _%lock125537%_ '0 '0 '1)))
            _%$r125557%_))))
    (define __string-table-set!
      (lambda (_%tab125485%_ _%key125486%_ _%value125487%_)
        (let ((_%table125489%_ (&raw-table-table _%tab125485%_))
              (_%seed125490%_ (&raw-table-seed _%tab125485%_)))
          (let* ((_%h125492%_
                  (fxxor (##string=?-hash _%key125486%_) _%seed125490%_))
                 (_%size125495%_ (vector-length _%table125489%_))
                 (_%entries125498%_ (##fxquotient _%size125495%_ '2))
                 (_%start125501%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125492%_ _%entries125498%_)
                   '1)))
            (let _%loop125505%_ ((_%probe125508%_ _%start125501%_)
                                 (_%i125510%_ '1)
                                 (_%deleted125512%_ '#f))
              (let ((_%k125515%_ (vector-ref _%table125489%_ _%probe125508%_)))
                (if (eq? _%k125515%_ (macro-unused-obj))
                    (if _%deleted125512%_
                        (begin
                          (vector-set!
                           _%table125489%_
                           _%deleted125512%_
                           _%key125486%_)
                          (vector-set!
                           _%table125489%_
                           (##fx+ _%deleted125512%_ '1)
                           _%value125487%_)
                          (&raw-table-count-set!
                           _%tab125485%_
                           (##fx+ (&raw-table-count _%tab125485%_) '1)))
                        (begin
                          (vector-set!
                           _%table125489%_
                           _%probe125508%_
                           _%key125486%_)
                          (vector-set!
                           _%table125489%_
                           (##fx+ _%probe125508%_ '1)
                           _%value125487%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab125485%_
                             (##fx- (&raw-table-free _%tab125485%_) '1))
                            (&raw-table-count-set!
                             _%tab125485%_
                             (##fx+ (&raw-table-count _%tab125485%_) '1)))))
                    (if (eq? _%k125515%_ (macro-deleted-obj))
                        (_%loop125505%_
                         (let ((_%next-probe125522%_
                                (fx+ _%start125501%_
                                     _%i125510%_
                                     (fx* _%i125510%_ _%i125510%_))))
                           (##fxmodulo _%next-probe125522%_ _%size125495%_))
                         (##fx+ _%i125510%_ '1)
                         (let ((_%$e125525%_ _%deleted125512%_))
                           (if _%$e125525%_ _%$e125525%_ _%probe125508%_)))
                        (if (##string=? _%key125486%_ _%k125515%_)
                            (let ()
                              (vector-set!
                               _%table125489%_
                               _%probe125508%_
                               _%key125486%_)
                              (vector-set!
                               _%table125489%_
                               (##fx+ _%probe125508%_ '1)
                               _%value125487%_))
                            (_%loop125505%_
                             (let ((_%next-probe125530%_
                                    (fx+ _%start125501%_
                                         _%i125510%_
                                         (fx* _%i125510%_ _%i125510%_))))
                               (##fxmodulo
                                _%next-probe125530%_
                                _%size125495%_))
                             (##fx+ _%i125510%_ '1)
                             _%deleted125512%_))))))))))
    (define string-table-set!
      (lambda (_%tab125481%_ _%key125482%_ _%value125483%_)
        (if (##fx< (&raw-table-free _%tab125481%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125481%_))
                    '4))
            (__raw-table-rehash! _%tab125481%_)
            '#!void)
        (__string-table-set! _%tab125481%_ _%key125482%_ _%value125483%_)))
    (define string-table-set!/lock
      (lambda (_%tab125451%_ _%key125452%_ _%value125453%_)
        (let ((_%lock125456%_ (&raw-table-lock _%tab125451%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125461%_ ((_%spin125464%_ '0))
              (if (##fx= (##vector-cas! _%lock125456%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125456%_ '1 (current-thread))
                  (if (##fx< _%spin125464%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125461%_ (##fx+ _%spin125464%_ '1)))
                      (let ((_%owner125470%_ (##vector-ref _%lock125456%_ '1)))
                        (if (eq? _%owner125470%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125470%_)
                                (let () (##thread-yield!) (_%again125461%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125476%_
                 (string-table-set!
                  _%tab125451%_
                  _%key125452%_
                  _%value125453%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125456%_ '1 '#f)
                (##vector-cas! _%lock125456%_ '0 '0 '1)))
            _%$r125476%_))))
    (define __string-table-update!
      (lambda (_%tab125402%_
               _%key125403%_
               _%string-table-update!125404%_
               _%default125405%_)
        (let ((_%table125407%_ (&raw-table-table _%tab125402%_))
              (_%seed125408%_ (&raw-table-seed _%tab125402%_)))
          (let* ((_%h125410%_
                  (fxxor (##string=?-hash _%key125403%_) _%seed125408%_))
                 (_%size125413%_ (vector-length _%table125407%_))
                 (_%entries125416%_ (##fxquotient _%size125413%_ '2))
                 (_%start125419%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125410%_ _%entries125416%_)
                   '1)))
            (let _%loop125423%_ ((_%probe125426%_ _%start125419%_)
                                 (_%i125428%_ '1)
                                 (_%deleted125430%_ '#f))
              (let ((_%k125433%_ (vector-ref _%table125407%_ _%probe125426%_)))
                (if (eq? _%k125433%_ (macro-unused-obj))
                    (if _%deleted125430%_
                        (begin
                          (vector-set!
                           _%table125407%_
                           _%deleted125430%_
                           _%key125403%_)
                          (vector-set!
                           _%table125407%_
                           (##fx+ _%deleted125430%_ '1)
                           (_%string-table-update!125404%_ _%default125405%_))
                          (&raw-table-count-set!
                           _%tab125402%_
                           (##fx+ (&raw-table-count _%tab125402%_) '1)))
                        (begin
                          (vector-set!
                           _%table125407%_
                           _%probe125426%_
                           _%key125403%_)
                          (vector-set!
                           _%table125407%_
                           (##fx+ _%probe125426%_ '1)
                           (_%string-table-update!125404%_ _%default125405%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125402%_
                             (##fx- (&raw-table-free _%tab125402%_) '1))
                            (&raw-table-count-set!
                             _%tab125402%_
                             (##fx+ (&raw-table-count _%tab125402%_) '1)))))
                    (if (eq? _%k125433%_ (macro-deleted-obj))
                        (_%loop125423%_
                         (let ((_%next-probe125440%_
                                (fx+ _%start125419%_
                                     _%i125428%_
                                     (fx* _%i125428%_ _%i125428%_))))
                           (##fxmodulo _%next-probe125440%_ _%size125413%_))
                         (##fx+ _%i125428%_ '1)
                         (let ((_%$e125443%_ _%deleted125430%_))
                           (if _%$e125443%_ _%$e125443%_ _%probe125426%_)))
                        (if (##string=? _%key125403%_ _%k125433%_)
                            (let ()
                              (vector-set!
                               _%table125407%_
                               _%probe125426%_
                               _%key125403%_)
                              (vector-set!
                               _%table125407%_
                               (##fx+ _%probe125426%_ '1)
                               (_%string-table-update!125404%_
                                (vector-ref
                                 _%table125407%_
                                 (##fx+ _%probe125426%_ '1)))))
                            (_%loop125423%_
                             (let ((_%next-probe125448%_
                                    (fx+ _%start125419%_
                                         _%i125428%_
                                         (fx* _%i125428%_ _%i125428%_))))
                               (##fxmodulo
                                _%next-probe125448%_
                                _%size125413%_))
                             (##fx+ _%i125428%_ '1)
                             _%deleted125430%_))))))))))
    (define string-table-update!
      (lambda (_%tab125397%_
               _%key125398%_
               _%string-table-update!125399%_
               _%default125400%_)
        (if (##fx< (&raw-table-free _%tab125397%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125397%_))
                    '4))
            (__raw-table-rehash! _%tab125397%_)
            '#!void)
        (__string-table-update!
         _%tab125397%_
         _%key125398%_
         _%string-table-update!125399%_
         _%default125400%_)))
    (define string-table-update!/lock
      (lambda (_%tab125366%_
               _%key125367%_
               _%string-table-update!125368%_
               _%default125369%_)
        (let ((_%lock125372%_ (&raw-table-lock _%tab125366%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125377%_ ((_%spin125380%_ '0))
              (if (##fx= (##vector-cas! _%lock125372%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125372%_ '1 (current-thread))
                  (if (##fx< _%spin125380%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125377%_ (##fx+ _%spin125380%_ '1)))
                      (let ((_%owner125386%_ (##vector-ref _%lock125372%_ '1)))
                        (if (eq? _%owner125386%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125386%_)
                                (let () (##thread-yield!) (_%again125377%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125392%_
                 (_%string-table-update!125368%_
                  _%tab125366%_
                  _%key125367%_
                  _%string-table-update!125368%_
                  _%default125369%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125372%_ '1 '#f)
                (##vector-cas! _%lock125372%_ '0 '0 '1)))
            _%$r125392%_))))
    (define string-table-delete!
      (lambda (_%tab125323%_ _%key125324%_)
        (let ((_%table125326%_ (&raw-table-table _%tab125323%_))
              (_%seed125328%_ (&raw-table-seed _%tab125323%_)))
          (let* ((_%h125331%_
                  (fxxor (##string=?-hash _%key125324%_) _%seed125328%_))
                 (_%size125334%_ (vector-length _%table125326%_))
                 (_%entries125337%_ (##fxquotient _%size125334%_ '2))
                 (_%start125340%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125331%_ _%entries125337%_)
                   '1)))
            (let _%loop125344%_ ((_%probe125347%_ _%start125340%_)
                                 (_%i125349%_ '1))
              (let ((_%k125352%_ (vector-ref _%table125326%_ _%probe125347%_)))
                (if (eq? _%k125352%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125352%_ (macro-deleted-obj))
                        (_%loop125344%_
                         (let ((_%next-probe125357%_
                                (fx+ _%start125340%_
                                     _%i125349%_
                                     (fx* _%i125349%_ _%i125349%_))))
                           (##fxmodulo _%next-probe125357%_ _%size125334%_))
                         (##fx+ _%i125349%_ '1))
                        (if (##string=? _%key125324%_ _%k125352%_)
                            (let ()
                              (vector-set!
                               _%table125326%_
                               _%probe125347%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125326%_
                               (##fx+ _%probe125347%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125323%_
                               (##fx- (&raw-table-count _%tab125323%_) '1)))
                            (_%loop125344%_
                             (let ((_%next-probe125363%_
                                    (fx+ _%start125340%_
                                         _%i125349%_
                                         (fx* _%i125349%_ _%i125349%_))))
                               (##fxmodulo
                                _%next-probe125363%_
                                _%size125334%_))
                             (##fx+ _%i125349%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab125293%_ _%key125295%_)
        (let ((_%lock125298%_ (&raw-table-lock _%tab125293%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125303%_ ((_%spin125306%_ '0))
              (if (##fx= (##vector-cas! _%lock125298%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125298%_ '1 (current-thread))
                  (if (##fx< _%spin125306%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125303%_ (##fx+ _%spin125306%_ '1)))
                      (let ((_%owner125312%_ (##vector-ref _%lock125298%_ '1)))
                        (if (eq? _%owner125312%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125312%_)
                                (let () (##thread-yield!) (_%again125303%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125318%_
                 (string-table-delete! _%tab125293%_ _%key125295%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125298%_ '1 '#f)
                (##vector-cas! _%lock125298%_ '0 '0 '1)))
            _%$r125318%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint125275%_ _%seed125276%_)
        (make-raw-table__1
         _%size-hint125275%_
         immediate-hash
         eq?
         _%seed125276%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint125282%_ '#f) (_%seed125284%_ '0))
          (make-immediate-table__% _%size-hint125282%_ _%seed125284%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint125286%_)
        (let ((_%seed125288%_ '0))
          (make-immediate-table__% _%size-hint125286%_ _%seed125288%_))))
    (define make-immediate-table
      (lambda _g127347_
        (let ((_g127348_ (##length _g127347_)))
          (cond ((##fx= _g127348_ 0) (apply make-immediate-table__0 _g127347_))
                ((##fx= _g127348_ 1) (apply make-immediate-table__1 _g127347_))
                ((##fx= _g127348_ 2) (apply make-immediate-table__% _g127347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g127347_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint125255%_ _%seed125257%_)
        (make-raw-table/lock__%
         _%size-hint125255%_
         immediate-hash
         eq?
         _%seed125257%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint125263%_ '#f) (_%seed125265%_ '0))
          (make-immediate-table/lock__% _%size-hint125263%_ _%seed125265%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint125267%_)
        (let ((_%seed125269%_ '0))
          (make-immediate-table/lock__% _%size-hint125267%_ _%seed125269%_))))
    (define make-immediate-table/lock
      (lambda _g127349_
        (let ((_g127350_ (##length _g127349_)))
          (cond ((##fx= _g127350_ 0)
                 (apply make-immediate-table/lock__0 _g127349_))
                ((##fx= _g127350_ 1)
                 (apply make-immediate-table/lock__1 _g127349_))
                ((##fx= _g127350_ 2)
                 (apply make-immediate-table/lock__% _g127349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g127349_))))))
    (define immediate-table-ref
      (lambda (_%tab125208%_ _%key125209%_ _%default125210%_)
        (let ((_%table125212%_ (&raw-table-table _%tab125208%_))
              (_%seed125213%_ (&raw-table-seed _%tab125208%_)))
          (let* ((_%h125215%_
                  (fxxor (immediate-hash _%key125209%_) _%seed125213%_))
                 (_%size125218%_ (vector-length _%table125212%_))
                 (_%entries125221%_ (##fxquotient _%size125218%_ '2))
                 (_%start125224%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125215%_ _%entries125221%_)
                   '1)))
            (let _%loop125228%_ ((_%probe125231%_ _%start125224%_)
                                 (_%i125233%_ '1)
                                 (_%deleted125235%_ '#f))
              (let ((_%k125238%_ (vector-ref _%table125212%_ _%probe125231%_)))
                (if (eq? _%k125238%_ (macro-unused-obj))
                    _%default125210%_
                    (if (eq? _%k125238%_ (macro-deleted-obj))
                        (_%loop125228%_
                         (let ((_%next-probe125243%_
                                (fx+ _%start125224%_
                                     _%i125233%_
                                     (fx* _%i125233%_ _%i125233%_))))
                           (##fxmodulo _%next-probe125243%_ _%size125218%_))
                         (##fx+ _%i125233%_ '1)
                         (let ((_%$e125246%_ _%deleted125235%_))
                           (if _%$e125246%_ _%$e125246%_ _%probe125231%_)))
                        (if (eq? _%key125209%_ _%k125238%_)
                            (vector-ref
                             _%table125212%_
                             (##fx+ _%probe125231%_ '1))
                            (_%loop125228%_
                             (let ((_%next-probe125251%_
                                    (fx+ _%start125224%_
                                         _%i125233%_
                                         (fx* _%i125233%_ _%i125233%_))))
                               (##fxmodulo
                                _%next-probe125251%_
                                _%size125218%_))
                             (##fx+ _%i125233%_ '1)
                             _%deleted125235%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab125179%_ _%key125180%_ _%default125181%_)
        (let ((_%lock125183%_ (&raw-table-lock _%tab125179%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125188%_ ((_%spin125191%_ '0))
              (if (##fx= (##vector-cas! _%lock125183%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125183%_ '1 (current-thread))
                  (if (##fx< _%spin125191%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125188%_ (##fx+ _%spin125191%_ '1)))
                      (let ((_%owner125197%_ (##vector-ref _%lock125183%_ '1)))
                        (if (eq? _%owner125197%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125197%_)
                                (let () (##thread-yield!) (_%again125188%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125203%_
                 (immediate-table-ref
                  _%tab125179%_
                  _%key125180%_
                  _%default125181%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125183%_ '1 '#f)
                (##vector-cas! _%lock125183%_ '0 '0 '1)))
            _%$r125203%_))))
    (define __immediate-table-set!
      (lambda (_%tab125131%_ _%key125132%_ _%value125133%_)
        (let ((_%table125135%_ (&raw-table-table _%tab125131%_))
              (_%seed125136%_ (&raw-table-seed _%tab125131%_)))
          (let* ((_%h125138%_
                  (fxxor (immediate-hash _%key125132%_) _%seed125136%_))
                 (_%size125141%_ (vector-length _%table125135%_))
                 (_%entries125144%_ (##fxquotient _%size125141%_ '2))
                 (_%start125147%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125138%_ _%entries125144%_)
                   '1)))
            (let _%loop125151%_ ((_%probe125154%_ _%start125147%_)
                                 (_%i125156%_ '1)
                                 (_%deleted125158%_ '#f))
              (let ((_%k125161%_ (vector-ref _%table125135%_ _%probe125154%_)))
                (if (eq? _%k125161%_ (macro-unused-obj))
                    (if _%deleted125158%_
                        (begin
                          (vector-set!
                           _%table125135%_
                           _%deleted125158%_
                           _%key125132%_)
                          (vector-set!
                           _%table125135%_
                           (##fx+ _%deleted125158%_ '1)
                           _%value125133%_)
                          (&raw-table-count-set!
                           _%tab125131%_
                           (##fx+ (&raw-table-count _%tab125131%_) '1)))
                        (begin
                          (vector-set!
                           _%table125135%_
                           _%probe125154%_
                           _%key125132%_)
                          (vector-set!
                           _%table125135%_
                           (##fx+ _%probe125154%_ '1)
                           _%value125133%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab125131%_
                             (##fx- (&raw-table-free _%tab125131%_) '1))
                            (&raw-table-count-set!
                             _%tab125131%_
                             (##fx+ (&raw-table-count _%tab125131%_) '1)))))
                    (if (eq? _%k125161%_ (macro-deleted-obj))
                        (_%loop125151%_
                         (let ((_%next-probe125168%_
                                (fx+ _%start125147%_
                                     _%i125156%_
                                     (fx* _%i125156%_ _%i125156%_))))
                           (##fxmodulo _%next-probe125168%_ _%size125141%_))
                         (##fx+ _%i125156%_ '1)
                         (let ((_%$e125171%_ _%deleted125158%_))
                           (if _%$e125171%_ _%$e125171%_ _%probe125154%_)))
                        (if (eq? _%key125132%_ _%k125161%_)
                            (let ()
                              (vector-set!
                               _%table125135%_
                               _%probe125154%_
                               _%key125132%_)
                              (vector-set!
                               _%table125135%_
                               (##fx+ _%probe125154%_ '1)
                               _%value125133%_))
                            (_%loop125151%_
                             (let ((_%next-probe125176%_
                                    (fx+ _%start125147%_
                                         _%i125156%_
                                         (fx* _%i125156%_ _%i125156%_))))
                               (##fxmodulo
                                _%next-probe125176%_
                                _%size125141%_))
                             (##fx+ _%i125156%_ '1)
                             _%deleted125158%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab125127%_ _%key125128%_ _%value125129%_)
        (if (##fx< (&raw-table-free _%tab125127%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125127%_))
                    '4))
            (__raw-table-rehash! _%tab125127%_)
            '#!void)
        (__immediate-table-set! _%tab125127%_ _%key125128%_ _%value125129%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab125097%_ _%key125098%_ _%value125099%_)
        (let ((_%lock125102%_ (&raw-table-lock _%tab125097%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125107%_ ((_%spin125110%_ '0))
              (if (##fx= (##vector-cas! _%lock125102%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125102%_ '1 (current-thread))
                  (if (##fx< _%spin125110%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125107%_ (##fx+ _%spin125110%_ '1)))
                      (let ((_%owner125116%_ (##vector-ref _%lock125102%_ '1)))
                        (if (eq? _%owner125116%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125116%_)
                                (let () (##thread-yield!) (_%again125107%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125122%_
                 (immediate-table-set!
                  _%tab125097%_
                  _%key125098%_
                  _%value125099%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125102%_ '1 '#f)
                (##vector-cas! _%lock125102%_ '0 '0 '1)))
            _%$r125122%_))))
    (define __immediate-table-update!
      (lambda (_%tab125048%_
               _%key125049%_
               _%immediate-table-update!125050%_
               _%default125051%_)
        (let ((_%table125053%_ (&raw-table-table _%tab125048%_))
              (_%seed125054%_ (&raw-table-seed _%tab125048%_)))
          (let* ((_%h125056%_
                  (fxxor (immediate-hash _%key125049%_) _%seed125054%_))
                 (_%size125059%_ (vector-length _%table125053%_))
                 (_%entries125062%_ (##fxquotient _%size125059%_ '2))
                 (_%start125065%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125056%_ _%entries125062%_)
                   '1)))
            (let _%loop125069%_ ((_%probe125072%_ _%start125065%_)
                                 (_%i125074%_ '1)
                                 (_%deleted125076%_ '#f))
              (let ((_%k125079%_ (vector-ref _%table125053%_ _%probe125072%_)))
                (if (eq? _%k125079%_ (macro-unused-obj))
                    (if _%deleted125076%_
                        (begin
                          (vector-set!
                           _%table125053%_
                           _%deleted125076%_
                           _%key125049%_)
                          (vector-set!
                           _%table125053%_
                           (##fx+ _%deleted125076%_ '1)
                           (_%immediate-table-update!125050%_
                            _%default125051%_))
                          (&raw-table-count-set!
                           _%tab125048%_
                           (##fx+ (&raw-table-count _%tab125048%_) '1)))
                        (begin
                          (vector-set!
                           _%table125053%_
                           _%probe125072%_
                           _%key125049%_)
                          (vector-set!
                           _%table125053%_
                           (##fx+ _%probe125072%_ '1)
                           (_%immediate-table-update!125050%_
                            _%default125051%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125048%_
                             (##fx- (&raw-table-free _%tab125048%_) '1))
                            (&raw-table-count-set!
                             _%tab125048%_
                             (##fx+ (&raw-table-count _%tab125048%_) '1)))))
                    (if (eq? _%k125079%_ (macro-deleted-obj))
                        (_%loop125069%_
                         (let ((_%next-probe125086%_
                                (fx+ _%start125065%_
                                     _%i125074%_
                                     (fx* _%i125074%_ _%i125074%_))))
                           (##fxmodulo _%next-probe125086%_ _%size125059%_))
                         (##fx+ _%i125074%_ '1)
                         (let ((_%$e125089%_ _%deleted125076%_))
                           (if _%$e125089%_ _%$e125089%_ _%probe125072%_)))
                        (if (eq? _%key125049%_ _%k125079%_)
                            (let ()
                              (vector-set!
                               _%table125053%_
                               _%probe125072%_
                               _%key125049%_)
                              (vector-set!
                               _%table125053%_
                               (##fx+ _%probe125072%_ '1)
                               (_%immediate-table-update!125050%_
                                (vector-ref
                                 _%table125053%_
                                 (##fx+ _%probe125072%_ '1)))))
                            (_%loop125069%_
                             (let ((_%next-probe125094%_
                                    (fx+ _%start125065%_
                                         _%i125074%_
                                         (fx* _%i125074%_ _%i125074%_))))
                               (##fxmodulo
                                _%next-probe125094%_
                                _%size125059%_))
                             (##fx+ _%i125074%_ '1)
                             _%deleted125076%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab125043%_
               _%key125044%_
               _%immediate-table-update!125045%_
               _%default125046%_)
        (if (##fx< (&raw-table-free _%tab125043%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125043%_))
                    '4))
            (__raw-table-rehash! _%tab125043%_)
            '#!void)
        (__immediate-table-update!
         _%tab125043%_
         _%key125044%_
         _%immediate-table-update!125045%_
         _%default125046%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab125012%_
               _%key125013%_
               _%immediate-table-update!125014%_
               _%default125015%_)
        (let ((_%lock125018%_ (&raw-table-lock _%tab125012%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125023%_ ((_%spin125026%_ '0))
              (if (##fx= (##vector-cas! _%lock125018%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125018%_ '1 (current-thread))
                  (if (##fx< _%spin125026%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125023%_ (##fx+ _%spin125026%_ '1)))
                      (let ((_%owner125032%_ (##vector-ref _%lock125018%_ '1)))
                        (if (eq? _%owner125032%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125032%_)
                                (let () (##thread-yield!) (_%again125023%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125038%_
                 (_%immediate-table-update!125014%_
                  _%tab125012%_
                  _%key125013%_
                  _%immediate-table-update!125014%_
                  _%default125015%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125018%_ '1 '#f)
                (##vector-cas! _%lock125018%_ '0 '0 '1)))
            _%$r125038%_))))
    (define immediate-table-delete!
      (lambda (_%tab124969%_ _%key124970%_)
        (let ((_%table124972%_ (&raw-table-table _%tab124969%_))
              (_%seed124974%_ (&raw-table-seed _%tab124969%_)))
          (let* ((_%h124977%_
                  (fxxor (immediate-hash _%key124970%_) _%seed124974%_))
                 (_%size124980%_ (vector-length _%table124972%_))
                 (_%entries124983%_ (##fxquotient _%size124980%_ '2))
                 (_%start124986%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124977%_ _%entries124983%_)
                   '1)))
            (let _%loop124990%_ ((_%probe124993%_ _%start124986%_)
                                 (_%i124995%_ '1))
              (let ((_%k124998%_ (vector-ref _%table124972%_ _%probe124993%_)))
                (if (eq? _%k124998%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124998%_ (macro-deleted-obj))
                        (_%loop124990%_
                         (let ((_%next-probe125003%_
                                (fx+ _%start124986%_
                                     _%i124995%_
                                     (fx* _%i124995%_ _%i124995%_))))
                           (##fxmodulo _%next-probe125003%_ _%size124980%_))
                         (##fx+ _%i124995%_ '1))
                        (if (eq? _%key124970%_ _%k124998%_)
                            (let ()
                              (vector-set!
                               _%table124972%_
                               _%probe124993%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124972%_
                               (##fx+ _%probe124993%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124969%_
                               (##fx- (&raw-table-count _%tab124969%_) '1)))
                            (_%loop124990%_
                             (let ((_%next-probe125009%_
                                    (fx+ _%start124986%_
                                         _%i124995%_
                                         (fx* _%i124995%_ _%i124995%_))))
                               (##fxmodulo
                                _%next-probe125009%_
                                _%size124980%_))
                             (##fx+ _%i124995%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab124939%_ _%key124941%_)
        (let ((_%lock124944%_ (&raw-table-lock _%tab124939%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124949%_ ((_%spin124952%_ '0))
              (if (##fx= (##vector-cas! _%lock124944%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124944%_ '1 (current-thread))
                  (if (##fx< _%spin124952%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124949%_ (##fx+ _%spin124952%_ '1)))
                      (let ((_%owner124958%_ (##vector-ref _%lock124944%_ '1)))
                        (if (eq? _%owner124958%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124958%_)
                                (let () (##thread-yield!) (_%again124949%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124964%_
                 (immediate-table-delete! _%tab124939%_ _%key124941%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124944%_ '1 '#f)
                (##vector-cas! _%lock124944%_ '0 '0 '1)))
            _%$r124964%_))))
    (define unused-obj (values (macro-unused-obj)))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f lock 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_%tab124937%_)
        (##unchecked-structure-ref
         _%tab124937%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab124935%_)
        (##unchecked-structure-ref
         _%tab124935%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab124933%_)
        (##unchecked-structure-ref
         _%tab124933%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab124930%_ _%val124931%_)
        (##unchecked-structure-set!
         _%tab124930%_
         _%val124931%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab124927%_ _%val124928%_)
        (##unchecked-structure-set!
         _%tab124927%_
         _%val124928%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab124924%_ _%val124925%_)
        (##unchecked-structure-set!
         _%tab124924%_
         _%val124925%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint124888%_
               _%klass124889%_
               _%flags124890%_
               _%lock124891%_)
        (let ((_%gcht124893%_
               (__gc-table-new
                (if (fixnum? _%size-hint124888%_) _%size-hint124888%_ '16)
                _%flags124890%_)))
          (##structure _%klass124889%_ _%gcht124893%_ '#f _%lock124891%_))))
    (define make-gc-table__0
      (lambda (_%size-hint124898%_)
        (let* ((_%klass124900%_ __gc-table::t)
               (_%flags124902%_ '0)
               (_%lock124904%_ '#f))
          (make-gc-table__%
           _%size-hint124898%_
           _%klass124900%_
           _%flags124902%_
           _%lock124904%_))))
    (define make-gc-table__1
      (lambda (_%size-hint124906%_ _%klass124907%_)
        (let* ((_%flags124909%_ '0) (_%lock124911%_ '#f))
          (make-gc-table__%
           _%size-hint124906%_
           _%klass124907%_
           _%flags124909%_
           _%lock124911%_))))
    (define make-gc-table__2
      (lambda (_%size-hint124913%_ _%klass124914%_ _%flags124915%_)
        (let ((_%lock124917%_ '#f))
          (make-gc-table__%
           _%size-hint124913%_
           _%klass124914%_
           _%flags124915%_
           _%lock124917%_))))
    (define make-gc-table
      (lambda _g127351_
        (let ((_g127352_ (##length _g127351_)))
          (cond ((##fx= _g127352_ 1) (apply make-gc-table__0 _g127351_))
                ((##fx= _g127352_ 2) (apply make-gc-table__1 _g127351_))
                ((##fx= _g127352_ 3) (apply make-gc-table__2 _g127351_))
                ((##fx= _g127352_ 4) (apply make-gc-table__% _g127351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g127351_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint124865%_ _%klass124866%_ _%flags124867%_)
        (make-gc-table__%
         _%size-hint124865%_
         _%klass124866%_
         _%flags124867%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint124872%_)
        (let* ((_%klass124874%_ __gc-table::t) (_%flags124876%_ '0))
          (make-gc-table/lock__%
           _%size-hint124872%_
           _%klass124874%_
           _%flags124876%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint124878%_ _%klass124879%_)
        (let ((_%flags124881%_ '0))
          (make-gc-table/lock__%
           _%size-hint124878%_
           _%klass124879%_
           _%flags124881%_))))
    (define make-gc-table/lock
      (lambda _g127353_
        (let ((_g127354_ (##length _g127353_)))
          (cond ((##fx= _g127354_ 1) (apply make-gc-table/lock__0 _g127353_))
                ((##fx= _g127354_ 2) (apply make-gc-table/lock__1 _g127353_))
                ((##fx= _g127354_ 3) (apply make-gc-table/lock__% _g127353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g127353_))))))
    (define __gc-table-immediate
      (lambda (_%tab124856%_)
        (let ((_%$e124858%_ (&gc-table-immediate _%tab124856%_)))
          (if _%$e124858%_
              _%$e124858%_
              (let ((_%immediate124862%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab124856%_ _%immediate124862%_)
                _%immediate124862%_)))))
    (define __gc-table-new
      (lambda (_%size124846%_ _%flags124847%_)
        (let* ((_%flags124849%_
                (##fxand _%flags124847%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags124851%_
                (fxior _%flags124849%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht124853%_
                (##gc-hash-table-allocate
                 _%size124846%_
                 _%flags124851%_
                 __gc-table-loads)))
          _%gcht124853%_)))
    (define __gc-table-e
      (lambda (_%tab124841%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht124844%_ (&gc-table-gcht _%tab124841%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht124844%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht124844%_
              (begin
                (__gc-table-rehash! _%tab124841%_)
                (&gc-table-gcht _%tab124841%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab124832%_)
        (let* ((_%old-table124834%_ (&gc-table-gcht _%tab124832%_))
               (_%new-table124836%_
                (##gc-hash-table-resize! _%old-table124834%_ __gc-table-loads))
               (_%gcht124838%_
                (##gc-hash-table-rehash!
                 _%old-table124834%_
                 _%new-table124836%_)))
          (&gc-table-gcht-set! _%tab124832%_ _%gcht124838%_))))
    (define gc-table-ref
      (lambda (_%tab124816%_ _%key124817%_ _%default124818%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124817%_)
            (let* ((_%gcht124822%_ (__gc-table-e _%tab124816%_))
                   (_%value124824%_
                    (##gc-hash-table-ref _%gcht124822%_ _%key124817%_)))
              (if (eq? _%value124824%_ (macro-unused-obj))
                  _%default124818%_
                  _%value124824%_))
            (let ((_%$e124826%_ (&gc-table-immediate _%tab124816%_)))
              (if _%$e124826%_
                  (immediate-table-ref
                   _%$e124826%_
                   _%key124817%_
                   _%default124818%_)
                  _%default124818%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab124790%_ _%key124791%_ _%default124792%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124796%_ ((_%spin124799%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124790%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124790%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124799%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124796%_ (##fx+ _%spin124799%_ '1)))
                    (let ((_%owner124805%_
                           (##vector-ref (&gc-table-lock _%tab124790%_) '1)))
                      (if (eq? _%owner124805%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124805%_)
                              (let () (##thread-yield!) (_%again124796%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124811%_
               (gc-table-ref _%tab124790%_ _%key124791%_ _%default124792%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124790%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124790%_) '0 '0 '1)))
          _%$r124811%_)))
    (define gc-table-set!
      (lambda (_%tab124783%_ _%key124784%_ _%value124785%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124784%_)
            (let ((_%gcht124788%_ (__gc-table-e _%tab124783%_)))
              (if (##gc-hash-table-set!
                   _%gcht124788%_
                   _%key124784%_
                   _%value124785%_)
                  (begin
                    (__gc-table-rehash! _%tab124783%_)
                    (gc-table-set!
                     _%tab124783%_
                     _%key124784%_
                     _%value124785%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab124783%_)
             _%key124784%_
             _%value124785%_))))
    (define gc-table-set/lock!
      (lambda (_%tab124757%_ _%key124758%_ _%value124759%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124763%_ ((_%spin124766%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124757%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124757%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124766%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124763%_ (##fx+ _%spin124766%_ '1)))
                    (let ((_%owner124772%_
                           (##vector-ref (&gc-table-lock _%tab124757%_) '1)))
                      (if (eq? _%owner124772%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124772%_)
                              (let () (##thread-yield!) (_%again124763%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124778%_
               (gc-table-set! _%tab124757%_ _%key124758%_ _%value124759%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124757%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124757%_) '0 '0 '1)))
          _%$r124778%_)))
    (define gc-table-update!
      (lambda (_%tab124750%_ _%key124751%_ _%update124752%_ _%default124753%_)
        (if (##mem-allocated? _%key124751%_)
            (let ((_%value124755%_
                   (gc-table-ref
                    _%tab124750%_
                    _%key124751%_
                    _%default124753%_)))
              (gc-table-set!
               _%tab124750%_
               _%key124751%_
               (_%update124752%_ _%value124755%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab124750%_)
             _%key124751%_
             _%update124752%_
             _%default124753%_))))
    (define gc-table-update!/lock
      (lambda (_%tab124723%_ _%key124724%_ _%update124725%_ _%default124726%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124730%_ ((_%spin124733%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124723%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124723%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124733%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124730%_ (##fx+ _%spin124733%_ '1)))
                    (let ((_%owner124739%_
                           (##vector-ref (&gc-table-lock _%tab124723%_) '1)))
                      (if (eq? _%owner124739%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124739%_)
                              (let () (##thread-yield!) (_%again124730%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124745%_
               (gc-table-update!
                _%tab124723%_
                _%key124724%_
                _%update124725%_
                _%default124726%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124723%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124723%_) '0 '0 '1)))
          _%$r124745%_)))
    (define gc-table-delete!
      (lambda (_%tab124711%_ _%key124712%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124712%_)
            (let ((_%gcht124716%_ (__gc-table-e _%tab124711%_)))
              (if (##gc-hash-table-set!
                   _%gcht124716%_
                   _%key124712%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab124711%_)
                    (gc-table-delete! _%tab124711%_ _%key124712%_))
                  '#!void))
            (let ((_%$e124718%_ (&gc-table-immediate _%tab124711%_)))
              (if _%$e124718%_
                  (immediate-table-delete! _%$e124718%_ _%key124712%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab124686%_ _%key124687%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124691%_ ((_%spin124694%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124686%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124686%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124694%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124691%_ (##fx+ _%spin124694%_ '1)))
                    (let ((_%owner124700%_
                           (##vector-ref (&gc-table-lock _%tab124686%_) '1)))
                      (if (eq? _%owner124700%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124700%_)
                              (let () (##thread-yield!) (_%again124691%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124706%_ (gc-table-delete! _%tab124686%_ _%key124687%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124686%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124686%_) '0 '0 '1)))
          _%$r124706%_)))
    (define gc-table-for-each
      (lambda (_%tab124675%_ _%proc124676%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht124679%_ (__gc-table-e _%tab124675%_)))
            (##gc-hash-table-for-each _%proc124676%_ _%gcht124679%_))
          (let ((_%$e124681%_ (&gc-table-immediate _%tab124675%_)))
            (if _%$e124681%_
                (raw-table-for-each _%$e124681%_ _%proc124676%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab124650%_ _%proc124651%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124655%_ ((_%spin124658%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124650%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124650%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124658%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124655%_ (##fx+ _%spin124658%_ '1)))
                    (let ((_%owner124664%_
                           (##vector-ref (&gc-table-lock _%tab124650%_) '1)))
                      (if (eq? _%owner124664%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124664%_)
                              (let () (##thread-yield!) (_%again124655%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124670%_ (gc-table-for-each _%tab124650%_ _%proc124651%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124650%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124650%_) '0 '0 '1)))
          _%$r124670%_)))
    (define table-new__%
      (lambda (_%tab124632%_ _%size-hint124633%_)
        (if (table? _%tab124632%_)
            '#!void
            (error '"table-new: expected table" _%tab124632%_))
        (letrec* ((_%loads124635%_ (macro-table-loads _%tab124632%_)))
          (make-table
           'size:
           (let ((_%$e124637%_ _%size-hint124633%_))
             (if _%$e124637%_ _%$e124637%_ '16))
           'init:
           (macro-table-init _%tab124632%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab124632%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab124632%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab124632%_)
           'hash:
           (macro-table-hash _%tab124632%_)
           'min-load:
           (##f64vector-ref _%loads124635%_ '0)
           'max-load:
           (##f64vector-ref _%loads124635%_ '2)))))
    (define table-new__0
      (lambda (_%tab124643%_)
        (let ((_%size-hint124645%_ '#f))
          (table-new__% _%tab124643%_ _%size-hint124645%_))))
    (define table-new
      (lambda _g127355_
        (let ((_g127356_ (##length _g127355_)))
          (cond ((##fx= _g127356_ 1) (apply table-new__0 _g127355_))
                ((##fx= _g127356_ 2) (apply table-new__% _g127355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g127355_))))))
    (define gc-table-new__%
      (lambda (_%tab124618%_ _%size-hint124619%_)
        (make-gc-table__%
         (if (eq? _%size-hint124619%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab124618%_))
             _%size-hint124619%_)
         (##structure-type _%tab124618%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab124618%_))
         (if (&gc-table-lock _%tab124618%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab124624%_)
        (let ((_%size-hint124626%_ '#f))
          (gc-table-new__% _%tab124624%_ _%size-hint124626%_))))
    (define gc-table-new
      (lambda _g127357_
        (let ((_g127358_ (##length _g127357_)))
          (cond ((##fx= _g127358_ 1) (apply gc-table-new__0 _g127357_))
                ((##fx= _g127358_ 2) (apply gc-table-new__% _g127357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g127357_))))))
    (define gc-table-copy
      (lambda (_%tab124610%_)
        (let ((_%result124612%_ (gc-table-new__% _%tab124610%_ '#t)))
          (gc-table-for-each
           _%tab124610%_
           (lambda (_%k124614%_ _%v124615%_)
             (gc-table-set! _%result124612%_ _%k124614%_ _%v124615%_)))
          _%result124612%_)))
    (define gc-table-copy/lock
      (lambda (_%tab124586%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124590%_ ((_%spin124593%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124586%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124586%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124593%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124590%_ (##fx+ _%spin124593%_ '1)))
                    (let ((_%owner124599%_
                           (##vector-ref (&gc-table-lock _%tab124586%_) '1)))
                      (if (eq? _%owner124599%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124599%_)
                              (let () (##thread-yield!) (_%again124590%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124605%_ (gc-table-copy _%tab124586%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124586%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124586%_) '0 '0 '1)))
          _%$r124605%_)))
    (define gc-table-clear!
      (lambda (_%tab124579%_)
        (let* ((_%gcht124581%_ (__gc-table-e _%tab124579%_))
               (_%new-table124583%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht124581%_))))
          (&gc-table-gcht-set! _%tab124579%_ _%new-table124583%_)
          (&gc-table-immediate-set! _%tab124579%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab124555%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124559%_ ((_%spin124562%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124555%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124555%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124562%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124559%_ (##fx+ _%spin124562%_ '1)))
                    (let ((_%owner124568%_
                           (##vector-ref (&gc-table-lock _%tab124555%_) '1)))
                      (if (eq? _%owner124568%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124568%_)
                              (let () (##thread-yield!) (_%again124559%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124574%_ (gc-table-clear! _%tab124555%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124555%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124555%_) '0 '0 '1)))
          _%$r124574%_)))
    (define gc-table-length
      (lambda (_%tab124547%_)
        (let ((_%gcht124549%_ (__gc-table-e _%tab124547%_)))
          (fx+ (macro-gc-hash-table-count _%gcht124549%_)
               (let ((_%$e124551%_ (&gc-table-immediate _%tab124547%_)))
                 (if _%$e124551%_ (&raw-table-count _%$e124551%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab124523%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124527%_ ((_%spin124530%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124523%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124523%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124530%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124527%_ (##fx+ _%spin124530%_ '1)))
                    (let ((_%owner124536%_
                           (##vector-ref (&gc-table-lock _%tab124523%_) '1)))
                      (if (eq? _%owner124536%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124536%_)
                              (let () (##thread-yield!) (_%again124527%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124542%_ (gc-table-length _%tab124523%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124523%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124523%_) '0 '0 '1)))
          _%$r124542%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj124489%_)
        (declare (not interrupts-enabled))
        (let ((_%val124492%_
               (gc-table-ref __object-eq-hash _%obj124489%_ '#f)))
          (if _%val124492%_
              _%val124492%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again124496%_ ((_%spin124499%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin124499%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again124496%_ (##fx+ _%spin124499%_ '1)))
                            (let ((_%owner124505%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner124505%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner124505%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again124496%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r124518%_
                       (let ((_%val124511%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj124489%_
                               '#f)))
                         (if _%val124511%_
                             _%val124511%_
                             (let ((_%h124513%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e124515%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e124515%_ _%$e124515%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj124489%_
                                _%h124513%_)
                               _%h124513%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r124518%_))))))))
