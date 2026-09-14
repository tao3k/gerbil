(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1789371520)
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
      (lambda (_%obj127162%_)
        (if (##structure? _%obj127162%_)
            (##structure-instance-of? _%obj127162%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab127160%_)
        (##unchecked-structure-ref
         _%tab127160%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab127158%_)
        (##unchecked-structure-ref
         _%tab127158%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab127156%_)
        (##unchecked-structure-ref
         _%tab127156%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab127154%_)
        (##unchecked-structure-ref
         _%tab127154%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab127152%_)
        (##unchecked-structure-ref
         _%tab127152%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab127150%_)
        (##unchecked-structure-ref
         _%tab127150%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab127148%_)
        (##unchecked-structure-ref
         _%tab127148%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab127145%_ _%val127146%_)
        (##unchecked-structure-set!
         _%tab127145%_
         _%val127146%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab127142%_ _%val127143%_)
        (##unchecked-structure-set!
         _%tab127142%_
         _%val127143%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab127139%_ _%val127140%_)
        (##unchecked-structure-set!
         _%tab127139%_
         _%val127140%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab127136%_ _%val127137%_)
        (##unchecked-structure-set!
         _%tab127136%_
         _%val127137%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab127133%_ _%val127134%_)
        (##unchecked-structure-set!
         _%tab127133%_
         _%val127134%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab127130%_ _%val127131%_)
        (##unchecked-structure-set!
         _%tab127130%_
         _%val127131%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab127127%_ _%val127128%_)
        (##unchecked-structure-set!
         _%tab127127%_
         _%val127128%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint127125%_)
        (if (and (fixnum? _%size-hint127125%_) (##fx> _%size-hint127125%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint127125%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock127121%_)
        (if (eq? _%lock127121%_ '#t) (vector '0 '#f) _%lock127121%_)))
    (define make-raw-table__%
      (lambda (_%size-hint127086%_
               _%hash127087%_
               _%test127088%_
               _%seed127089%_
               _%lock127090%_)
        (let* ((_%size127092%_ (raw-table-size-hint->size _%size-hint127086%_))
               (_%table127094%_
                (##make-vector _%size127092%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table127094%_
           '0
           (##fxquotient _%size127092%_ '2)
           _%hash127087%_
           _%test127088%_
           _%seed127089%_
           (ensure-lock _%lock127090%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint127100%_ _%hash127101%_ _%test127102%_)
        (let* ((_%seed127104%_ '0) (_%lock127106%_ '#f))
          (make-raw-table__%
           _%size-hint127100%_
           _%hash127101%_
           _%test127102%_
           _%seed127104%_
           _%lock127106%_))))
    (define make-raw-table__1
      (lambda (_%size-hint127108%_
               _%hash127109%_
               _%test127110%_
               _%seed127111%_)
        (let ((_%lock127113%_ '#f))
          (make-raw-table__%
           _%size-hint127108%_
           _%hash127109%_
           _%test127110%_
           _%seed127111%_
           _%lock127113%_))))
    (define make-raw-table
      (lambda _g127163_
        (let ((_g127164_ (##length _g127163_)))
          (cond ((##fx= _g127164_ 3) (apply make-raw-table__0 _g127163_))
                ((##fx= _g127164_ 4) (apply make-raw-table__1 _g127163_))
                ((##fx= _g127164_ 5) (apply make-raw-table__% _g127163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g127163_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint127066%_
               _%hash127067%_
               _%test127068%_
               _%seed127069%_)
        (make-raw-table__%
         _%size-hint127066%_
         _%hash127067%_
         _%test127068%_
         _%seed127069%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint127074%_ _%hash127075%_ _%test127076%_)
        (let ((_%seed127078%_ '0))
          (make-raw-table/lock__%
           _%size-hint127074%_
           _%hash127075%_
           _%test127076%_
           _%seed127078%_))))
    (define make-raw-table/lock
      (lambda _g127165_
        (let ((_g127166_ (##length _g127165_)))
          (cond ((##fx= _g127166_ 3) (apply make-raw-table/lock__0 _g127165_))
                ((##fx= _g127166_ 4) (apply make-raw-table/lock__% _g127165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g127165_))))))
    (define raw-table-length
      (lambda (_%tab127063%_) (&raw-table-count _%tab127063%_)))
    (define raw-table-length/lock
      (lambda (_%tab127036%_)
        (let ((_%lock127038%_ (&raw-table-lock _%tab127036%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127043%_ ((_%spin127046%_ '0))
              (if (##fx= (##vector-cas! _%lock127038%_ '0 '1 '0) '0)
                  (##vector-set! _%lock127038%_ '1 (current-thread))
                  (if (##fx< _%spin127046%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again127043%_ (##fx+ _%spin127046%_ '1)))
                      (let ((_%owner127052%_ (##vector-ref _%lock127038%_ '1)))
                        (if (eq? _%owner127052%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner127052%_)
                                (let () (##thread-yield!) (_%again127043%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r127058%_ (&raw-table-count _%tab127036%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock127038%_ '1 '#f)
                (##vector-cas! _%lock127038%_ '0 '0 '1)))
            _%$r127058%_))))
    (define raw-table-ref
      (lambda (_%tab126988%_ _%key126989%_ _%default126990%_)
        (let ((_%table126992%_ (&raw-table-table _%tab126988%_))
              (_%seed126993%_ (&raw-table-seed _%tab126988%_))
              (_%hash126994%_ (&raw-table-hash _%tab126988%_))
              (_%test126995%_ (&raw-table-test _%tab126988%_)))
          (let* ((_%h126997%_
                  (fxxor (_%hash126994%_ _%key126989%_) _%seed126993%_))
                 (_%size127000%_ (vector-length _%table126992%_))
                 (_%entries127003%_ (##fxquotient _%size127000%_ '2))
                 (_%start127006%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126997%_ _%entries127003%_)
                   '1)))
            (let _%loop127010%_ ((_%probe127013%_ _%start127006%_)
                                 (_%i127015%_ '1)
                                 (_%deleted127017%_ '#f))
              (let ((_%k127020%_ (vector-ref _%table126992%_ _%probe127013%_)))
                (if (eq? _%k127020%_ (macro-unused-obj))
                    _%default126990%_
                    (if (eq? _%k127020%_ (macro-deleted-obj))
                        (_%loop127010%_
                         (let ((_%next-probe127025%_
                                (fx+ _%start127006%_
                                     _%i127015%_
                                     (fx* _%i127015%_ _%i127015%_))))
                           (##fxmodulo _%next-probe127025%_ _%size127000%_))
                         (##fx+ _%i127015%_ '1)
                         (let ((_%$e127028%_ _%deleted127017%_))
                           (if _%$e127028%_ _%$e127028%_ _%probe127013%_)))
                        (if (_%test126995%_ _%key126989%_ _%k127020%_)
                            (vector-ref
                             _%table126992%_
                             (##fx+ _%probe127013%_ '1))
                            (_%loop127010%_
                             (let ((_%next-probe127033%_
                                    (fx+ _%start127006%_
                                         _%i127015%_
                                         (fx* _%i127015%_ _%i127015%_))))
                               (##fxmodulo
                                _%next-probe127033%_
                                _%size127000%_))
                             (##fx+ _%i127015%_ '1)
                             _%deleted127017%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab126959%_ _%key126960%_ _%default126961%_)
        (let ((_%lock126963%_ (&raw-table-lock _%tab126959%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126968%_ ((_%spin126971%_ '0))
              (if (##fx= (##vector-cas! _%lock126963%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126963%_ '1 (current-thread))
                  (if (##fx< _%spin126971%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126968%_ (##fx+ _%spin126971%_ '1)))
                      (let ((_%owner126977%_ (##vector-ref _%lock126963%_ '1)))
                        (if (eq? _%owner126977%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126977%_)
                                (let () (##thread-yield!) (_%again126968%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126983%_
                 (raw-table-ref
                  _%tab126959%_
                  _%key126960%_
                  _%default126961%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126963%_ '1 '#f)
                (##vector-cas! _%lock126963%_ '0 '0 '1)))
            _%$r126983%_))))
    (define raw-table-set!
      (lambda (_%tab126955%_ _%key126956%_ _%value126957%_)
        (if (##fx< (&raw-table-free _%tab126955%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126955%_))
                    '4))
            (__raw-table-rehash! _%tab126955%_)
            '#!void)
        (__raw-table-set! _%tab126955%_ _%key126956%_ _%value126957%_)))
    (define raw-table-set!/lock
      (lambda (_%tab126926%_ _%key126927%_ _%value126928%_)
        (let ((_%lock126930%_ (&raw-table-lock _%tab126926%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126935%_ ((_%spin126938%_ '0))
              (if (##fx= (##vector-cas! _%lock126930%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126930%_ '1 (current-thread))
                  (if (##fx< _%spin126938%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126935%_ (##fx+ _%spin126938%_ '1)))
                      (let ((_%owner126944%_ (##vector-ref _%lock126930%_ '1)))
                        (if (eq? _%owner126944%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126944%_)
                                (let () (##thread-yield!) (_%again126935%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126950%_
                 (raw-table-set! _%tab126926%_ _%key126927%_ _%value126928%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126930%_ '1 '#f)
                (##vector-cas! _%lock126930%_ '0 '0 '1)))
            _%$r126950%_))))
    (define raw-table-update!
      (lambda (_%tab126921%_ _%key126922%_ _%update126923%_ _%default126924%_)
        (if (##fx< (&raw-table-free _%tab126921%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126921%_))
                    '4))
            (__raw-table-rehash! _%tab126921%_)
            '#!void)
        (__raw-table-update!
         _%tab126921%_
         _%key126922%_
         _%update126923%_
         _%default126924%_)))
    (define raw-table-update!/lock
      (lambda (_%tab126891%_ _%key126892%_ _%update126893%_ _%default126894%_)
        (let ((_%lock126896%_ (&raw-table-lock _%tab126891%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126901%_ ((_%spin126904%_ '0))
              (if (##fx= (##vector-cas! _%lock126896%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126896%_ '1 (current-thread))
                  (if (##fx< _%spin126904%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126901%_ (##fx+ _%spin126904%_ '1)))
                      (let ((_%owner126910%_ (##vector-ref _%lock126896%_ '1)))
                        (if (eq? _%owner126910%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126910%_)
                                (let () (##thread-yield!) (_%again126901%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126916%_
                 (raw-table-update!
                  _%tab126891%_
                  _%key126892%_
                  _%update126893%_
                  _%default126894%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126896%_ '1 '#f)
                (##vector-cas! _%lock126896%_ '0 '0 '1)))
            _%$r126916%_))))
    (define raw-table-delete!
      (lambda (_%tab126848%_ _%key126849%_)
        (let ((_%table126851%_ (&raw-table-table _%tab126848%_))
              (_%seed126852%_ (&raw-table-seed _%tab126848%_))
              (_%hash126853%_ (&raw-table-hash _%tab126848%_))
              (_%test126854%_ (&raw-table-test _%tab126848%_)))
          (let* ((_%h126856%_
                  (fxxor (_%hash126853%_ _%key126849%_) _%seed126852%_))
                 (_%size126859%_ (vector-length _%table126851%_))
                 (_%entries126862%_ (##fxquotient _%size126859%_ '2))
                 (_%start126865%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126856%_ _%entries126862%_)
                   '1)))
            (let _%loop126869%_ ((_%probe126872%_ _%start126865%_)
                                 (_%i126874%_ '1))
              (let ((_%k126877%_ (vector-ref _%table126851%_ _%probe126872%_)))
                (if (eq? _%k126877%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126877%_ (macro-deleted-obj))
                        (_%loop126869%_
                         (let ((_%next-probe126882%_
                                (fx+ _%start126865%_
                                     _%i126874%_
                                     (fx* _%i126874%_ _%i126874%_))))
                           (##fxmodulo _%next-probe126882%_ _%size126859%_))
                         (##fx+ _%i126874%_ '1))
                        (if (_%test126854%_ _%key126849%_ _%k126877%_)
                            (let ()
                              (vector-set!
                               _%table126851%_
                               _%probe126872%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126851%_
                               (##fx+ _%probe126872%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab126848%_
                               (##fx- (&raw-table-count _%tab126848%_) '1)))
                            (_%loop126869%_
                             (let ((_%next-probe126888%_
                                    (fx+ _%start126865%_
                                         _%i126874%_
                                         (fx* _%i126874%_ _%i126874%_))))
                               (##fxmodulo
                                _%next-probe126888%_
                                _%size126859%_))
                             (##fx+ _%i126874%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab126820%_ _%key126821%_)
        (let ((_%lock126823%_ (&raw-table-lock _%tab126820%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126828%_ ((_%spin126831%_ '0))
              (if (##fx= (##vector-cas! _%lock126823%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126823%_ '1 (current-thread))
                  (if (##fx< _%spin126831%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126828%_ (##fx+ _%spin126831%_ '1)))
                      (let ((_%owner126837%_ (##vector-ref _%lock126823%_ '1)))
                        (if (eq? _%owner126837%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126837%_)
                                (let () (##thread-yield!) (_%again126828%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126843%_ (raw-table-delete! _%tab126820%_ _%key126821%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126823%_ '1 '#f)
                (##vector-cas! _%lock126823%_ '0 '0 '1)))
            _%$r126843%_))))
    (define raw-table-for-each
      (lambda (_%tab126804%_ _%proc126805%_)
        (let* ((_%table126807%_ (&raw-table-table _%tab126804%_))
               (_%size126809%_ (vector-length _%table126807%_)))
          (let _%loop126812%_ ((_%i126814%_ '0))
            (if (##fx< _%i126814%_ _%size126809%_)
                (begin
                  (let ((_%key126816%_
                         (vector-ref _%table126807%_ _%i126814%_)))
                    (if (if (eq? _%key126816%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key126816%_ (macro-deleted-obj))))
                        (let ((_%value126818%_
                               (vector-ref
                                _%table126807%_
                                (##fx+ _%i126814%_ '1))))
                          (_%proc126805%_ _%key126816%_ _%value126818%_))
                        '#!void))
                  (_%loop126812%_ (##fx+ _%i126814%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab126776%_ _%proc126777%_)
        (let ((_%lock126779%_ (&raw-table-lock _%tab126776%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126784%_ ((_%spin126787%_ '0))
              (if (##fx= (##vector-cas! _%lock126779%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126779%_ '1 (current-thread))
                  (if (##fx< _%spin126787%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126784%_ (##fx+ _%spin126787%_ '1)))
                      (let ((_%owner126793%_ (##vector-ref _%lock126779%_ '1)))
                        (if (eq? _%owner126793%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126793%_)
                                (let () (##thread-yield!) (_%again126784%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126799%_
                 (raw-table-for-each _%tab126776%_ _%proc126777%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126779%_ '1 '#f)
                (##vector-cas! _%lock126779%_ '0 '0 '1)))
            _%$r126799%_))))
    (define raw-table-copy
      (lambda (_%tab126772%_)
        (let ((_%new-tab126774%_ (##structure-copy _%tab126772%_)))
          (&raw-table-table-set!
           _%new-tab126774%_
           (vector-copy (&raw-table-table _%tab126772%_)))
          (&raw-table-lock-set!
           _%new-tab126774%_
           (ensure-lock (if (&raw-table-lock _%tab126772%_) '#t '#f)))
          _%new-tab126774%_)))
    (define raw-table-copy/lock
      (lambda (_%tab126745%_)
        (let ((_%lock126747%_ (&raw-table-lock _%tab126745%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126752%_ ((_%spin126755%_ '0))
              (if (##fx= (##vector-cas! _%lock126747%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126747%_ '1 (current-thread))
                  (if (##fx< _%spin126755%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126752%_ (##fx+ _%spin126755%_ '1)))
                      (let ((_%owner126761%_ (##vector-ref _%lock126747%_ '1)))
                        (if (eq? _%owner126761%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126761%_)
                                (let () (##thread-yield!) (_%again126752%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126767%_ (raw-table-copy _%tab126745%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126747%_ '1 '#f)
                (##vector-cas! _%lock126747%_ '0 '0 '1)))
            _%$r126767%_))))
    (define raw-table-new__%
      (lambda (_%tab126732%_ _%size-hint126733%_)
        (make-raw-table__%
         (if (eq? _%size-hint126733%_ '#t)
             (vector-length (&raw-table-table _%tab126732%_))
             _%size-hint126733%_)
         (&raw-table-hash _%tab126732%_)
         (&raw-table-test _%tab126732%_)
         (&raw-table-seed _%tab126732%_)
         (if (&raw-table-lock _%tab126732%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab126738%_)
        (let ((_%size-hint126740%_ '#f))
          (raw-table-new__% _%tab126738%_ _%size-hint126740%_))))
    (define raw-table-new
      (lambda _g127167_
        (let ((_g127168_ (##length _g127167_)))
          (cond ((##fx= _g127168_ 1) (apply raw-table-new__0 _g127167_))
                ((##fx= _g127168_ 2) (apply raw-table-new__% _g127167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g127167_))))))
    (define raw-table-clear!
      (lambda (_%tab126729%_)
        (vector-fill! (&raw-table-table _%tab126729%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab126729%_ '0)
        (&raw-table-free-set!
         _%tab126729%_
         (##fxquotient (vector-length (&raw-table-table _%tab126729%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab126702%_)
        (let ((_%lock126704%_ (&raw-table-lock _%tab126702%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126709%_ ((_%spin126712%_ '0))
              (if (##fx= (##vector-cas! _%lock126704%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126704%_ '1 (current-thread))
                  (if (##fx< _%spin126712%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126709%_ (##fx+ _%spin126712%_ '1)))
                      (let ((_%owner126718%_ (##vector-ref _%lock126704%_ '1)))
                        (if (eq? _%owner126718%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126718%_)
                                (let () (##thread-yield!) (_%again126709%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126724%_ (raw-table-clear! _%tab126702%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126704%_ '1 '#f)
                (##vector-cas! _%lock126704%_ '0 '0 '1)))
            _%$r126724%_))))
    (define __raw-table-set!
      (lambda (_%tab126652%_ _%key126653%_ _%value126654%_)
        (let ((_%table126656%_ (&raw-table-table _%tab126652%_))
              (_%seed126657%_ (&raw-table-seed _%tab126652%_))
              (_%hash126658%_ (&raw-table-hash _%tab126652%_))
              (_%test126659%_ (&raw-table-test _%tab126652%_)))
          (let* ((_%h126661%_
                  (fxxor (_%hash126658%_ _%key126653%_) _%seed126657%_))
                 (_%size126664%_ (vector-length _%table126656%_))
                 (_%entries126667%_ (##fxquotient _%size126664%_ '2))
                 (_%start126670%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126661%_ _%entries126667%_)
                   '1)))
            (let _%loop126674%_ ((_%probe126677%_ _%start126670%_)
                                 (_%i126679%_ '1)
                                 (_%deleted126681%_ '#f))
              (let ((_%k126684%_ (vector-ref _%table126656%_ _%probe126677%_)))
                (if (eq? _%k126684%_ (macro-unused-obj))
                    (if _%deleted126681%_
                        (begin
                          (vector-set!
                           _%table126656%_
                           _%deleted126681%_
                           _%key126653%_)
                          (vector-set!
                           _%table126656%_
                           (##fx+ _%deleted126681%_ '1)
                           _%value126654%_)
                          (&raw-table-count-set!
                           _%tab126652%_
                           (##fx+ (&raw-table-count _%tab126652%_) '1)))
                        (begin
                          (vector-set!
                           _%table126656%_
                           _%probe126677%_
                           _%key126653%_)
                          (vector-set!
                           _%table126656%_
                           (##fx+ _%probe126677%_ '1)
                           _%value126654%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126652%_
                             (##fx- (&raw-table-free _%tab126652%_) '1))
                            (&raw-table-count-set!
                             _%tab126652%_
                             (##fx+ (&raw-table-count _%tab126652%_) '1)))))
                    (if (eq? _%k126684%_ (macro-deleted-obj))
                        (_%loop126674%_
                         (let ((_%next-probe126691%_
                                (fx+ _%start126670%_
                                     _%i126679%_
                                     (fx* _%i126679%_ _%i126679%_))))
                           (##fxmodulo _%next-probe126691%_ _%size126664%_))
                         (##fx+ _%i126679%_ '1)
                         (let ((_%$e126694%_ _%deleted126681%_))
                           (if _%$e126694%_ _%$e126694%_ _%probe126677%_)))
                        (if (_%test126659%_ _%key126653%_ _%k126684%_)
                            (let ()
                              (vector-set!
                               _%table126656%_
                               _%probe126677%_
                               _%key126653%_)
                              (vector-set!
                               _%table126656%_
                               (##fx+ _%probe126677%_ '1)
                               _%value126654%_))
                            (_%loop126674%_
                             (let ((_%next-probe126699%_
                                    (fx+ _%start126670%_
                                         _%i126679%_
                                         (fx* _%i126679%_ _%i126679%_))))
                               (##fxmodulo
                                _%next-probe126699%_
                                _%size126664%_))
                             (##fx+ _%i126679%_ '1)
                             _%deleted126681%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab126601%_ _%key126602%_ _%update126603%_ _%default126604%_)
        (let ((_%table126606%_ (&raw-table-table _%tab126601%_))
              (_%seed126607%_ (&raw-table-seed _%tab126601%_))
              (_%hash126608%_ (&raw-table-hash _%tab126601%_))
              (_%test126609%_ (&raw-table-test _%tab126601%_)))
          (let* ((_%h126611%_
                  (fxxor (_%hash126608%_ _%key126602%_) _%seed126607%_))
                 (_%size126614%_ (vector-length _%table126606%_))
                 (_%entries126617%_ (##fxquotient _%size126614%_ '2))
                 (_%start126620%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126611%_ _%entries126617%_)
                   '1)))
            (let _%loop126624%_ ((_%probe126627%_ _%start126620%_)
                                 (_%i126629%_ '1)
                                 (_%deleted126631%_ '#f))
              (let ((_%k126634%_ (vector-ref _%table126606%_ _%probe126627%_)))
                (if (eq? _%k126634%_ (macro-unused-obj))
                    (if _%deleted126631%_
                        (begin
                          (vector-set!
                           _%table126606%_
                           _%deleted126631%_
                           _%key126602%_)
                          (vector-set!
                           _%table126606%_
                           (##fx+ _%deleted126631%_ '1)
                           (_%update126603%_ _%default126604%_))
                          (&raw-table-count-set!
                           _%tab126601%_
                           (##fx+ (&raw-table-count _%tab126601%_) '1)))
                        (begin
                          (vector-set!
                           _%table126606%_
                           _%probe126627%_
                           _%key126602%_)
                          (vector-set!
                           _%table126606%_
                           (##fx+ _%probe126627%_ '1)
                           (_%update126603%_ _%default126604%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab126601%_
                             (##fx- (&raw-table-free _%tab126601%_) '1))
                            (&raw-table-count-set!
                             _%tab126601%_
                             (##fx+ (&raw-table-count _%tab126601%_) '1)))))
                    (if (eq? _%k126634%_ (macro-deleted-obj))
                        (_%loop126624%_
                         (let ((_%next-probe126641%_
                                (fx+ _%start126620%_
                                     _%i126629%_
                                     (fx* _%i126629%_ _%i126629%_))))
                           (##fxmodulo _%next-probe126641%_ _%size126614%_))
                         (##fx+ _%i126629%_ '1)
                         (let ((_%$e126644%_ _%deleted126631%_))
                           (if _%$e126644%_ _%$e126644%_ _%probe126627%_)))
                        (if (_%test126609%_ _%key126602%_ _%k126634%_)
                            (let ()
                              (vector-set!
                               _%table126606%_
                               _%probe126627%_
                               _%key126602%_)
                              (vector-set!
                               _%table126606%_
                               (##fx+ _%probe126627%_ '1)
                               (_%update126603%_
                                (vector-ref
                                 _%table126606%_
                                 (##fx+ _%probe126627%_ '1)))))
                            (_%loop126624%_
                             (let ((_%next-probe126649%_
                                    (fx+ _%start126620%_
                                         _%i126629%_
                                         (fx* _%i126629%_ _%i126629%_))))
                               (##fxmodulo
                                _%next-probe126649%_
                                _%size126614%_))
                             (##fx+ _%i126629%_ '1)
                             _%deleted126631%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab126582%_)
        (let* ((_%old-table126584%_ (&raw-table-table _%tab126582%_))
               (_%old-size126586%_ (vector-length _%old-table126584%_))
               (_%new-size126588%_
                (if (##fx< (&raw-table-count _%tab126582%_)
                           (##fxquotient _%old-size126586%_ '4))
                    (vector-length _%old-table126584%_)
                    (##fx* '2 (vector-length _%old-table126584%_))))
               (_%new-table126590%_
                (##make-vector _%new-size126588%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab126582%_ _%new-table126590%_)
          (&raw-table-count-set! _%tab126582%_ '0)
          (&raw-table-free-set!
           _%tab126582%_
           (##fxquotient _%new-size126588%_ '2))
          (let _%lp126593%_ ((_%i126595%_ '0))
            (if (##fx< _%i126595%_ _%old-size126586%_)
                (begin
                  (let ((_%key126597%_
                         (vector-ref _%old-table126584%_ _%i126595%_)))
                    (if (if (eq? _%key126597%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key126597%_ (macro-deleted-obj))))
                        (let ((_%value126599%_
                               (vector-ref
                                _%old-table126584%_
                                (##fx+ _%i126595%_ '1))))
                          (__raw-table-set!
                           _%tab126582%_
                           _%key126597%_
                           _%value126599%_))
                        '#!void))
                  (_%lp126593%_ (##fx+ _%i126595%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj126574%_)
        (let ((_%t126576%_ (##type _%obj126574%_)))
          (if (##fx= (##fxand _%t126576%_ '1) '0)
              (fxand (##type-cast _%obj126574%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj126574%_)
                  (##symbol-hash _%obj126574%_)
                  (if (procedure? _%obj126574%_)
                      (procedure-hash _%obj126574%_)
                      (fxand (__object->eq-hash _%obj126574%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj126570%_)
        (let ((_%h126572%_
               (if (##closure? _%obj126570%_)
                   (__object->eq-hash _%obj126570%_)
                   (##type-cast _%obj126570%_ '0))))
          (fxand _%h126572%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj126568%_) (__object->eq-hash _%obj126568%_)))
    (define eqv-hash
      (lambda (_%obj126558%_)
        (letrec ((_%combine126560%_
                  (lambda (_%a126565%_ _%b126566%_)
                    (fxand (##fx* (##fx+ _%a126565%_
                                         (fxarithmetic-shift-left
                                          _%b126566%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash126561%_
                  (lambda (_%obj126563%_)
                    (macro-number-dispatch
                     _%obj126563%_
                     (eq-hash _%obj126563%_)
                     (fxand _%obj126563%_ (macro-max-fixnum32))
                     (modulo _%obj126563%_ '331804481)
                     (_%combine126560%_
                      (_%hash126561%_ (macro-ratnum-numerator _%obj126563%_))
                      (_%hash126561%_
                       (macro-ratnum-denominator _%obj126563%_)))
                     (_%combine126560%_
                      (##u16vector-ref _%obj126563%_ '0)
                      (_%combine126560%_
                       (##u16vector-ref _%obj126563%_ '1)
                       (_%combine126560%_
                        (##u16vector-ref _%obj126563%_ '2)
                        (##u16vector-ref _%obj126563%_ '3))))
                     (_%combine126560%_
                      (_%hash126561%_ (macro-cpxnum-real _%obj126563%_))
                      (_%hash126561%_ (macro-cpxnum-imag _%obj126563%_)))))))
          (_%hash126561%_ _%obj126558%_))))
    (define symbolic?
      (lambda (_%obj126553%_)
        (let ((_%$e126555%_ (symbol? _%obj126553%_)))
          (if _%$e126555%_ _%$e126555%_ (keyword? _%obj126553%_)))))
    (define symbolic-hash
      (lambda (_%obj126551%_) (##symbol-hash _%obj126551%_)))
    (define string-hash
      (lambda (_%obj126549%_) (##string=?-hash _%obj126549%_)))
    (define immediate-hash
      (lambda (_%obj126547%_) (##type-cast _%obj126547%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint126529%_ _%seed126530%_)
        (make-raw-table__1 _%size-hint126529%_ eq-hash eq? _%seed126530%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint126536%_ '#f) (_%seed126538%_ '0))
          (make-eq-table__% _%size-hint126536%_ _%seed126538%_))))
    (define make-eq-table__1
      (lambda (_%size-hint126540%_)
        (let ((_%seed126542%_ '0))
          (make-eq-table__% _%size-hint126540%_ _%seed126542%_))))
    (define make-eq-table
      (lambda _g127169_
        (let ((_g127170_ (##length _g127169_)))
          (cond ((##fx= _g127170_ 0) (apply make-eq-table__0 _g127169_))
                ((##fx= _g127170_ 1) (apply make-eq-table__1 _g127169_))
                ((##fx= _g127170_ 2) (apply make-eq-table__% _g127169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g127169_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint126509%_ _%seed126511%_)
        (make-raw-table/lock__%
         _%size-hint126509%_
         eq-hash
         eq?
         _%seed126511%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint126517%_ '#f) (_%seed126519%_ '0))
          (make-eq-table/lock__% _%size-hint126517%_ _%seed126519%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint126521%_)
        (let ((_%seed126523%_ '0))
          (make-eq-table/lock__% _%size-hint126521%_ _%seed126523%_))))
    (define make-eq-table/lock
      (lambda _g127171_
        (let ((_g127172_ (##length _g127171_)))
          (cond ((##fx= _g127172_ 0) (apply make-eq-table/lock__0 _g127171_))
                ((##fx= _g127172_ 1) (apply make-eq-table/lock__1 _g127171_))
                ((##fx= _g127172_ 2) (apply make-eq-table/lock__% _g127171_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g127171_))))))
    (define eq-table-ref
      (lambda (_%tab126462%_ _%key126463%_ _%default126464%_)
        (let ((_%table126466%_ (&raw-table-table _%tab126462%_))
              (_%seed126467%_ (&raw-table-seed _%tab126462%_)))
          (let* ((_%h126469%_ (fxxor (eq-hash _%key126463%_) _%seed126467%_))
                 (_%size126472%_ (vector-length _%table126466%_))
                 (_%entries126475%_ (##fxquotient _%size126472%_ '2))
                 (_%start126478%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126469%_ _%entries126475%_)
                   '1)))
            (let _%loop126482%_ ((_%probe126485%_ _%start126478%_)
                                 (_%i126487%_ '1)
                                 (_%deleted126489%_ '#f))
              (let ((_%k126492%_ (vector-ref _%table126466%_ _%probe126485%_)))
                (if (eq? _%k126492%_ (macro-unused-obj))
                    _%default126464%_
                    (if (eq? _%k126492%_ (macro-deleted-obj))
                        (_%loop126482%_
                         (let ((_%next-probe126497%_
                                (fx+ _%start126478%_
                                     _%i126487%_
                                     (fx* _%i126487%_ _%i126487%_))))
                           (##fxmodulo _%next-probe126497%_ _%size126472%_))
                         (##fx+ _%i126487%_ '1)
                         (let ((_%$e126500%_ _%deleted126489%_))
                           (if _%$e126500%_ _%$e126500%_ _%probe126485%_)))
                        (if (eq? _%key126463%_ _%k126492%_)
                            (vector-ref
                             _%table126466%_
                             (##fx+ _%probe126485%_ '1))
                            (_%loop126482%_
                             (let ((_%next-probe126505%_
                                    (fx+ _%start126478%_
                                         _%i126487%_
                                         (fx* _%i126487%_ _%i126487%_))))
                               (##fxmodulo
                                _%next-probe126505%_
                                _%size126472%_))
                             (##fx+ _%i126487%_ '1)
                             _%deleted126489%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab126433%_ _%key126434%_ _%default126435%_)
        (let ((_%lock126437%_ (&raw-table-lock _%tab126433%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126442%_ ((_%spin126445%_ '0))
              (if (##fx= (##vector-cas! _%lock126437%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126437%_ '1 (current-thread))
                  (if (##fx< _%spin126445%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126442%_ (##fx+ _%spin126445%_ '1)))
                      (let ((_%owner126451%_ (##vector-ref _%lock126437%_ '1)))
                        (if (eq? _%owner126451%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126451%_)
                                (let () (##thread-yield!) (_%again126442%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126457%_
                 (eq-table-ref _%tab126433%_ _%key126434%_ _%default126435%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126437%_ '1 '#f)
                (##vector-cas! _%lock126437%_ '0 '0 '1)))
            _%$r126457%_))))
    (define __eq-table-set!
      (lambda (_%tab126385%_ _%key126386%_ _%value126387%_)
        (let ((_%table126389%_ (&raw-table-table _%tab126385%_))
              (_%seed126390%_ (&raw-table-seed _%tab126385%_)))
          (let* ((_%h126392%_ (fxxor (eq-hash _%key126386%_) _%seed126390%_))
                 (_%size126395%_ (vector-length _%table126389%_))
                 (_%entries126398%_ (##fxquotient _%size126395%_ '2))
                 (_%start126401%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126392%_ _%entries126398%_)
                   '1)))
            (let _%loop126405%_ ((_%probe126408%_ _%start126401%_)
                                 (_%i126410%_ '1)
                                 (_%deleted126412%_ '#f))
              (let ((_%k126415%_ (vector-ref _%table126389%_ _%probe126408%_)))
                (if (eq? _%k126415%_ (macro-unused-obj))
                    (if _%deleted126412%_
                        (begin
                          (vector-set!
                           _%table126389%_
                           _%deleted126412%_
                           _%key126386%_)
                          (vector-set!
                           _%table126389%_
                           (##fx+ _%deleted126412%_ '1)
                           _%value126387%_)
                          (&raw-table-count-set!
                           _%tab126385%_
                           (##fx+ (&raw-table-count _%tab126385%_) '1)))
                        (begin
                          (vector-set!
                           _%table126389%_
                           _%probe126408%_
                           _%key126386%_)
                          (vector-set!
                           _%table126389%_
                           (##fx+ _%probe126408%_ '1)
                           _%value126387%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126385%_
                             (##fx- (&raw-table-free _%tab126385%_) '1))
                            (&raw-table-count-set!
                             _%tab126385%_
                             (##fx+ (&raw-table-count _%tab126385%_) '1)))))
                    (if (eq? _%k126415%_ (macro-deleted-obj))
                        (_%loop126405%_
                         (let ((_%next-probe126422%_
                                (fx+ _%start126401%_
                                     _%i126410%_
                                     (fx* _%i126410%_ _%i126410%_))))
                           (##fxmodulo _%next-probe126422%_ _%size126395%_))
                         (##fx+ _%i126410%_ '1)
                         (let ((_%$e126425%_ _%deleted126412%_))
                           (if _%$e126425%_ _%$e126425%_ _%probe126408%_)))
                        (if (eq? _%key126386%_ _%k126415%_)
                            (let ()
                              (vector-set!
                               _%table126389%_
                               _%probe126408%_
                               _%key126386%_)
                              (vector-set!
                               _%table126389%_
                               (##fx+ _%probe126408%_ '1)
                               _%value126387%_))
                            (_%loop126405%_
                             (let ((_%next-probe126430%_
                                    (fx+ _%start126401%_
                                         _%i126410%_
                                         (fx* _%i126410%_ _%i126410%_))))
                               (##fxmodulo
                                _%next-probe126430%_
                                _%size126395%_))
                             (##fx+ _%i126410%_ '1)
                             _%deleted126412%_))))))))))
    (define eq-table-set!
      (lambda (_%tab126381%_ _%key126382%_ _%value126383%_)
        (if (##fx< (&raw-table-free _%tab126381%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126381%_))
                    '4))
            (__raw-table-rehash! _%tab126381%_)
            '#!void)
        (__eq-table-set! _%tab126381%_ _%key126382%_ _%value126383%_)))
    (define eq-table-set!/lock
      (lambda (_%tab126351%_ _%key126352%_ _%value126353%_)
        (let ((_%lock126356%_ (&raw-table-lock _%tab126351%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126361%_ ((_%spin126364%_ '0))
              (if (##fx= (##vector-cas! _%lock126356%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126356%_ '1 (current-thread))
                  (if (##fx< _%spin126364%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126361%_ (##fx+ _%spin126364%_ '1)))
                      (let ((_%owner126370%_ (##vector-ref _%lock126356%_ '1)))
                        (if (eq? _%owner126370%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126370%_)
                                (let () (##thread-yield!) (_%again126361%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126376%_
                 (eq-table-set! _%tab126351%_ _%key126352%_ _%value126353%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126356%_ '1 '#f)
                (##vector-cas! _%lock126356%_ '0 '0 '1)))
            _%$r126376%_))))
    (define __eq-table-update!
      (lambda (_%tab126302%_
               _%key126303%_
               _%eq-table-update!126304%_
               _%default126305%_)
        (let ((_%table126307%_ (&raw-table-table _%tab126302%_))
              (_%seed126308%_ (&raw-table-seed _%tab126302%_)))
          (let* ((_%h126310%_ (fxxor (eq-hash _%key126303%_) _%seed126308%_))
                 (_%size126313%_ (vector-length _%table126307%_))
                 (_%entries126316%_ (##fxquotient _%size126313%_ '2))
                 (_%start126319%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126310%_ _%entries126316%_)
                   '1)))
            (let _%loop126323%_ ((_%probe126326%_ _%start126319%_)
                                 (_%i126328%_ '1)
                                 (_%deleted126330%_ '#f))
              (let ((_%k126333%_ (vector-ref _%table126307%_ _%probe126326%_)))
                (if (eq? _%k126333%_ (macro-unused-obj))
                    (if _%deleted126330%_
                        (begin
                          (vector-set!
                           _%table126307%_
                           _%deleted126330%_
                           _%key126303%_)
                          (vector-set!
                           _%table126307%_
                           (##fx+ _%deleted126330%_ '1)
                           (_%eq-table-update!126304%_ _%default126305%_))
                          (&raw-table-count-set!
                           _%tab126302%_
                           (##fx+ (&raw-table-count _%tab126302%_) '1)))
                        (begin
                          (vector-set!
                           _%table126307%_
                           _%probe126326%_
                           _%key126303%_)
                          (vector-set!
                           _%table126307%_
                           (##fx+ _%probe126326%_ '1)
                           (_%eq-table-update!126304%_ _%default126305%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab126302%_
                             (##fx- (&raw-table-free _%tab126302%_) '1))
                            (&raw-table-count-set!
                             _%tab126302%_
                             (##fx+ (&raw-table-count _%tab126302%_) '1)))))
                    (if (eq? _%k126333%_ (macro-deleted-obj))
                        (_%loop126323%_
                         (let ((_%next-probe126340%_
                                (fx+ _%start126319%_
                                     _%i126328%_
                                     (fx* _%i126328%_ _%i126328%_))))
                           (##fxmodulo _%next-probe126340%_ _%size126313%_))
                         (##fx+ _%i126328%_ '1)
                         (let ((_%$e126343%_ _%deleted126330%_))
                           (if _%$e126343%_ _%$e126343%_ _%probe126326%_)))
                        (if (eq? _%key126303%_ _%k126333%_)
                            (let ()
                              (vector-set!
                               _%table126307%_
                               _%probe126326%_
                               _%key126303%_)
                              (vector-set!
                               _%table126307%_
                               (##fx+ _%probe126326%_ '1)
                               (_%eq-table-update!126304%_
                                (vector-ref
                                 _%table126307%_
                                 (##fx+ _%probe126326%_ '1)))))
                            (_%loop126323%_
                             (let ((_%next-probe126348%_
                                    (fx+ _%start126319%_
                                         _%i126328%_
                                         (fx* _%i126328%_ _%i126328%_))))
                               (##fxmodulo
                                _%next-probe126348%_
                                _%size126313%_))
                             (##fx+ _%i126328%_ '1)
                             _%deleted126330%_))))))))))
    (define eq-table-update!
      (lambda (_%tab126297%_
               _%key126298%_
               _%eq-table-update!126299%_
               _%default126300%_)
        (if (##fx< (&raw-table-free _%tab126297%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126297%_))
                    '4))
            (__raw-table-rehash! _%tab126297%_)
            '#!void)
        (__eq-table-update!
         _%tab126297%_
         _%key126298%_
         _%eq-table-update!126299%_
         _%default126300%_)))
    (define eq-table-update!/lock
      (lambda (_%tab126266%_
               _%key126267%_
               _%eq-table-update!126268%_
               _%default126269%_)
        (let ((_%lock126272%_ (&raw-table-lock _%tab126266%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126277%_ ((_%spin126280%_ '0))
              (if (##fx= (##vector-cas! _%lock126272%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126272%_ '1 (current-thread))
                  (if (##fx< _%spin126280%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126277%_ (##fx+ _%spin126280%_ '1)))
                      (let ((_%owner126286%_ (##vector-ref _%lock126272%_ '1)))
                        (if (eq? _%owner126286%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126286%_)
                                (let () (##thread-yield!) (_%again126277%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126292%_
                 (_%eq-table-update!126268%_
                  _%tab126266%_
                  _%key126267%_
                  _%eq-table-update!126268%_
                  _%default126269%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126272%_ '1 '#f)
                (##vector-cas! _%lock126272%_ '0 '0 '1)))
            _%$r126292%_))))
    (define eq-table-delete!
      (lambda (_%tab126223%_ _%key126224%_)
        (let ((_%table126226%_ (&raw-table-table _%tab126223%_))
              (_%seed126228%_ (&raw-table-seed _%tab126223%_)))
          (let* ((_%h126231%_ (fxxor (eq-hash _%key126224%_) _%seed126228%_))
                 (_%size126234%_ (vector-length _%table126226%_))
                 (_%entries126237%_ (##fxquotient _%size126234%_ '2))
                 (_%start126240%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126231%_ _%entries126237%_)
                   '1)))
            (let _%loop126244%_ ((_%probe126247%_ _%start126240%_)
                                 (_%i126249%_ '1))
              (let ((_%k126252%_ (vector-ref _%table126226%_ _%probe126247%_)))
                (if (eq? _%k126252%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k126252%_ (macro-deleted-obj))
                        (_%loop126244%_
                         (let ((_%next-probe126257%_
                                (fx+ _%start126240%_
                                     _%i126249%_
                                     (fx* _%i126249%_ _%i126249%_))))
                           (##fxmodulo _%next-probe126257%_ _%size126234%_))
                         (##fx+ _%i126249%_ '1))
                        (if (eq? _%key126224%_ _%k126252%_)
                            (let ()
                              (vector-set!
                               _%table126226%_
                               _%probe126247%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table126226%_
                               (##fx+ _%probe126247%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab126223%_
                               (##fx- (&raw-table-count _%tab126223%_) '1)))
                            (_%loop126244%_
                             (let ((_%next-probe126263%_
                                    (fx+ _%start126240%_
                                         _%i126249%_
                                         (fx* _%i126249%_ _%i126249%_))))
                               (##fxmodulo
                                _%next-probe126263%_
                                _%size126234%_))
                             (##fx+ _%i126249%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab126193%_ _%key126195%_)
        (let ((_%lock126198%_ (&raw-table-lock _%tab126193%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126203%_ ((_%spin126206%_ '0))
              (if (##fx= (##vector-cas! _%lock126198%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126198%_ '1 (current-thread))
                  (if (##fx< _%spin126206%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126203%_ (##fx+ _%spin126206%_ '1)))
                      (let ((_%owner126212%_ (##vector-ref _%lock126198%_ '1)))
                        (if (eq? _%owner126212%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126212%_)
                                (let () (##thread-yield!) (_%again126203%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126218%_ (eq-table-delete! _%tab126193%_ _%key126195%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126198%_ '1 '#f)
                (##vector-cas! _%lock126198%_ '0 '0 '1)))
            _%$r126218%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint126175%_ _%seed126176%_)
        (make-raw-table__1 _%size-hint126175%_ eqv-hash eqv? _%seed126176%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint126182%_ '#f) (_%seed126184%_ '0))
          (make-eqv-table__% _%size-hint126182%_ _%seed126184%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint126186%_)
        (let ((_%seed126188%_ '0))
          (make-eqv-table__% _%size-hint126186%_ _%seed126188%_))))
    (define make-eqv-table
      (lambda _g127173_
        (let ((_g127174_ (##length _g127173_)))
          (cond ((##fx= _g127174_ 0) (apply make-eqv-table__0 _g127173_))
                ((##fx= _g127174_ 1) (apply make-eqv-table__1 _g127173_))
                ((##fx= _g127174_ 2) (apply make-eqv-table__% _g127173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g127173_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint126155%_ _%seed126157%_)
        (make-raw-table/lock__%
         _%size-hint126155%_
         eqv-hash
         eqv?
         _%seed126157%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint126163%_ '#f) (_%seed126165%_ '0))
          (make-eqv-table/lock__% _%size-hint126163%_ _%seed126165%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint126167%_)
        (let ((_%seed126169%_ '0))
          (make-eqv-table/lock__% _%size-hint126167%_ _%seed126169%_))))
    (define make-eqv-table/lock
      (lambda _g127175_
        (let ((_g127176_ (##length _g127175_)))
          (cond ((##fx= _g127176_ 0) (apply make-eqv-table/lock__0 _g127175_))
                ((##fx= _g127176_ 1) (apply make-eqv-table/lock__1 _g127175_))
                ((##fx= _g127176_ 2) (apply make-eqv-table/lock__% _g127175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g127175_))))))
    (define eqv-table-ref
      (lambda (_%tab126108%_ _%key126109%_ _%default126110%_)
        (let ((_%table126112%_ (&raw-table-table _%tab126108%_))
              (_%seed126113%_ (&raw-table-seed _%tab126108%_)))
          (let* ((_%h126115%_ (fxxor (eqv-hash _%key126109%_) _%seed126113%_))
                 (_%size126118%_ (vector-length _%table126112%_))
                 (_%entries126121%_ (##fxquotient _%size126118%_ '2))
                 (_%start126124%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126115%_ _%entries126121%_)
                   '1)))
            (let _%loop126128%_ ((_%probe126131%_ _%start126124%_)
                                 (_%i126133%_ '1)
                                 (_%deleted126135%_ '#f))
              (let ((_%k126138%_ (vector-ref _%table126112%_ _%probe126131%_)))
                (if (eq? _%k126138%_ (macro-unused-obj))
                    _%default126110%_
                    (if (eq? _%k126138%_ (macro-deleted-obj))
                        (_%loop126128%_
                         (let ((_%next-probe126143%_
                                (fx+ _%start126124%_
                                     _%i126133%_
                                     (fx* _%i126133%_ _%i126133%_))))
                           (##fxmodulo _%next-probe126143%_ _%size126118%_))
                         (##fx+ _%i126133%_ '1)
                         (let ((_%$e126146%_ _%deleted126135%_))
                           (if _%$e126146%_ _%$e126146%_ _%probe126131%_)))
                        (if (eqv? _%key126109%_ _%k126138%_)
                            (vector-ref
                             _%table126112%_
                             (##fx+ _%probe126131%_ '1))
                            (_%loop126128%_
                             (let ((_%next-probe126151%_
                                    (fx+ _%start126124%_
                                         _%i126133%_
                                         (fx* _%i126133%_ _%i126133%_))))
                               (##fxmodulo
                                _%next-probe126151%_
                                _%size126118%_))
                             (##fx+ _%i126133%_ '1)
                             _%deleted126135%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab126079%_ _%key126080%_ _%default126081%_)
        (let ((_%lock126083%_ (&raw-table-lock _%tab126079%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126088%_ ((_%spin126091%_ '0))
              (if (##fx= (##vector-cas! _%lock126083%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126083%_ '1 (current-thread))
                  (if (##fx< _%spin126091%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126088%_ (##fx+ _%spin126091%_ '1)))
                      (let ((_%owner126097%_ (##vector-ref _%lock126083%_ '1)))
                        (if (eq? _%owner126097%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126097%_)
                                (let () (##thread-yield!) (_%again126088%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126103%_
                 (eqv-table-ref
                  _%tab126079%_
                  _%key126080%_
                  _%default126081%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126083%_ '1 '#f)
                (##vector-cas! _%lock126083%_ '0 '0 '1)))
            _%$r126103%_))))
    (define __eqv-table-set!
      (lambda (_%tab126031%_ _%key126032%_ _%value126033%_)
        (let ((_%table126035%_ (&raw-table-table _%tab126031%_))
              (_%seed126036%_ (&raw-table-seed _%tab126031%_)))
          (let* ((_%h126038%_ (fxxor (eqv-hash _%key126032%_) _%seed126036%_))
                 (_%size126041%_ (vector-length _%table126035%_))
                 (_%entries126044%_ (##fxquotient _%size126041%_ '2))
                 (_%start126047%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h126038%_ _%entries126044%_)
                   '1)))
            (let _%loop126051%_ ((_%probe126054%_ _%start126047%_)
                                 (_%i126056%_ '1)
                                 (_%deleted126058%_ '#f))
              (let ((_%k126061%_ (vector-ref _%table126035%_ _%probe126054%_)))
                (if (eq? _%k126061%_ (macro-unused-obj))
                    (if _%deleted126058%_
                        (begin
                          (vector-set!
                           _%table126035%_
                           _%deleted126058%_
                           _%key126032%_)
                          (vector-set!
                           _%table126035%_
                           (##fx+ _%deleted126058%_ '1)
                           _%value126033%_)
                          (&raw-table-count-set!
                           _%tab126031%_
                           (##fx+ (&raw-table-count _%tab126031%_) '1)))
                        (begin
                          (vector-set!
                           _%table126035%_
                           _%probe126054%_
                           _%key126032%_)
                          (vector-set!
                           _%table126035%_
                           (##fx+ _%probe126054%_ '1)
                           _%value126033%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab126031%_
                             (##fx- (&raw-table-free _%tab126031%_) '1))
                            (&raw-table-count-set!
                             _%tab126031%_
                             (##fx+ (&raw-table-count _%tab126031%_) '1)))))
                    (if (eq? _%k126061%_ (macro-deleted-obj))
                        (_%loop126051%_
                         (let ((_%next-probe126068%_
                                (fx+ _%start126047%_
                                     _%i126056%_
                                     (fx* _%i126056%_ _%i126056%_))))
                           (##fxmodulo _%next-probe126068%_ _%size126041%_))
                         (##fx+ _%i126056%_ '1)
                         (let ((_%$e126071%_ _%deleted126058%_))
                           (if _%$e126071%_ _%$e126071%_ _%probe126054%_)))
                        (if (eqv? _%key126032%_ _%k126061%_)
                            (let ()
                              (vector-set!
                               _%table126035%_
                               _%probe126054%_
                               _%key126032%_)
                              (vector-set!
                               _%table126035%_
                               (##fx+ _%probe126054%_ '1)
                               _%value126033%_))
                            (_%loop126051%_
                             (let ((_%next-probe126076%_
                                    (fx+ _%start126047%_
                                         _%i126056%_
                                         (fx* _%i126056%_ _%i126056%_))))
                               (##fxmodulo
                                _%next-probe126076%_
                                _%size126041%_))
                             (##fx+ _%i126056%_ '1)
                             _%deleted126058%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab126027%_ _%key126028%_ _%value126029%_)
        (if (##fx< (&raw-table-free _%tab126027%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab126027%_))
                    '4))
            (__raw-table-rehash! _%tab126027%_)
            '#!void)
        (__eqv-table-set! _%tab126027%_ _%key126028%_ _%value126029%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab125997%_ _%key125998%_ _%value125999%_)
        (let ((_%lock126002%_ (&raw-table-lock _%tab125997%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126007%_ ((_%spin126010%_ '0))
              (if (##fx= (##vector-cas! _%lock126002%_ '0 '1 '0) '0)
                  (##vector-set! _%lock126002%_ '1 (current-thread))
                  (if (##fx< _%spin126010%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again126007%_ (##fx+ _%spin126010%_ '1)))
                      (let ((_%owner126016%_ (##vector-ref _%lock126002%_ '1)))
                        (if (eq? _%owner126016%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner126016%_)
                                (let () (##thread-yield!) (_%again126007%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r126022%_
                 (eqv-table-set! _%tab125997%_ _%key125998%_ _%value125999%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock126002%_ '1 '#f)
                (##vector-cas! _%lock126002%_ '0 '0 '1)))
            _%$r126022%_))))
    (define __eqv-table-update!
      (lambda (_%tab125948%_
               _%key125949%_
               _%eqv-table-update!125950%_
               _%default125951%_)
        (let ((_%table125953%_ (&raw-table-table _%tab125948%_))
              (_%seed125954%_ (&raw-table-seed _%tab125948%_)))
          (let* ((_%h125956%_ (fxxor (eqv-hash _%key125949%_) _%seed125954%_))
                 (_%size125959%_ (vector-length _%table125953%_))
                 (_%entries125962%_ (##fxquotient _%size125959%_ '2))
                 (_%start125965%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125956%_ _%entries125962%_)
                   '1)))
            (let _%loop125969%_ ((_%probe125972%_ _%start125965%_)
                                 (_%i125974%_ '1)
                                 (_%deleted125976%_ '#f))
              (let ((_%k125979%_ (vector-ref _%table125953%_ _%probe125972%_)))
                (if (eq? _%k125979%_ (macro-unused-obj))
                    (if _%deleted125976%_
                        (begin
                          (vector-set!
                           _%table125953%_
                           _%deleted125976%_
                           _%key125949%_)
                          (vector-set!
                           _%table125953%_
                           (##fx+ _%deleted125976%_ '1)
                           (_%eqv-table-update!125950%_ _%default125951%_))
                          (&raw-table-count-set!
                           _%tab125948%_
                           (##fx+ (&raw-table-count _%tab125948%_) '1)))
                        (begin
                          (vector-set!
                           _%table125953%_
                           _%probe125972%_
                           _%key125949%_)
                          (vector-set!
                           _%table125953%_
                           (##fx+ _%probe125972%_ '1)
                           (_%eqv-table-update!125950%_ _%default125951%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125948%_
                             (##fx- (&raw-table-free _%tab125948%_) '1))
                            (&raw-table-count-set!
                             _%tab125948%_
                             (##fx+ (&raw-table-count _%tab125948%_) '1)))))
                    (if (eq? _%k125979%_ (macro-deleted-obj))
                        (_%loop125969%_
                         (let ((_%next-probe125986%_
                                (fx+ _%start125965%_
                                     _%i125974%_
                                     (fx* _%i125974%_ _%i125974%_))))
                           (##fxmodulo _%next-probe125986%_ _%size125959%_))
                         (##fx+ _%i125974%_ '1)
                         (let ((_%$e125989%_ _%deleted125976%_))
                           (if _%$e125989%_ _%$e125989%_ _%probe125972%_)))
                        (if (eqv? _%key125949%_ _%k125979%_)
                            (let ()
                              (vector-set!
                               _%table125953%_
                               _%probe125972%_
                               _%key125949%_)
                              (vector-set!
                               _%table125953%_
                               (##fx+ _%probe125972%_ '1)
                               (_%eqv-table-update!125950%_
                                (vector-ref
                                 _%table125953%_
                                 (##fx+ _%probe125972%_ '1)))))
                            (_%loop125969%_
                             (let ((_%next-probe125994%_
                                    (fx+ _%start125965%_
                                         _%i125974%_
                                         (fx* _%i125974%_ _%i125974%_))))
                               (##fxmodulo
                                _%next-probe125994%_
                                _%size125959%_))
                             (##fx+ _%i125974%_ '1)
                             _%deleted125976%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab125943%_
               _%key125944%_
               _%eqv-table-update!125945%_
               _%default125946%_)
        (if (##fx< (&raw-table-free _%tab125943%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125943%_))
                    '4))
            (__raw-table-rehash! _%tab125943%_)
            '#!void)
        (__eqv-table-update!
         _%tab125943%_
         _%key125944%_
         _%eqv-table-update!125945%_
         _%default125946%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab125912%_
               _%key125913%_
               _%eqv-table-update!125914%_
               _%default125915%_)
        (let ((_%lock125918%_ (&raw-table-lock _%tab125912%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125923%_ ((_%spin125926%_ '0))
              (if (##fx= (##vector-cas! _%lock125918%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125918%_ '1 (current-thread))
                  (if (##fx< _%spin125926%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125923%_ (##fx+ _%spin125926%_ '1)))
                      (let ((_%owner125932%_ (##vector-ref _%lock125918%_ '1)))
                        (if (eq? _%owner125932%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125932%_)
                                (let () (##thread-yield!) (_%again125923%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125938%_
                 (_%eqv-table-update!125914%_
                  _%tab125912%_
                  _%key125913%_
                  _%eqv-table-update!125914%_
                  _%default125915%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125918%_ '1 '#f)
                (##vector-cas! _%lock125918%_ '0 '0 '1)))
            _%$r125938%_))))
    (define eqv-table-delete!
      (lambda (_%tab125869%_ _%key125870%_)
        (let ((_%table125872%_ (&raw-table-table _%tab125869%_))
              (_%seed125874%_ (&raw-table-seed _%tab125869%_)))
          (let* ((_%h125877%_ (fxxor (eqv-hash _%key125870%_) _%seed125874%_))
                 (_%size125880%_ (vector-length _%table125872%_))
                 (_%entries125883%_ (##fxquotient _%size125880%_ '2))
                 (_%start125886%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125877%_ _%entries125883%_)
                   '1)))
            (let _%loop125890%_ ((_%probe125893%_ _%start125886%_)
                                 (_%i125895%_ '1))
              (let ((_%k125898%_ (vector-ref _%table125872%_ _%probe125893%_)))
                (if (eq? _%k125898%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125898%_ (macro-deleted-obj))
                        (_%loop125890%_
                         (let ((_%next-probe125903%_
                                (fx+ _%start125886%_
                                     _%i125895%_
                                     (fx* _%i125895%_ _%i125895%_))))
                           (##fxmodulo _%next-probe125903%_ _%size125880%_))
                         (##fx+ _%i125895%_ '1))
                        (if (eqv? _%key125870%_ _%k125898%_)
                            (let ()
                              (vector-set!
                               _%table125872%_
                               _%probe125893%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125872%_
                               (##fx+ _%probe125893%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125869%_
                               (##fx- (&raw-table-count _%tab125869%_) '1)))
                            (_%loop125890%_
                             (let ((_%next-probe125909%_
                                    (fx+ _%start125886%_
                                         _%i125895%_
                                         (fx* _%i125895%_ _%i125895%_))))
                               (##fxmodulo
                                _%next-probe125909%_
                                _%size125880%_))
                             (##fx+ _%i125895%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab125839%_ _%key125841%_)
        (let ((_%lock125844%_ (&raw-table-lock _%tab125839%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125849%_ ((_%spin125852%_ '0))
              (if (##fx= (##vector-cas! _%lock125844%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125844%_ '1 (current-thread))
                  (if (##fx< _%spin125852%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125849%_ (##fx+ _%spin125852%_ '1)))
                      (let ((_%owner125858%_ (##vector-ref _%lock125844%_ '1)))
                        (if (eq? _%owner125858%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125858%_)
                                (let () (##thread-yield!) (_%again125849%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125864%_ (eqv-table-delete! _%tab125839%_ _%key125841%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125844%_ '1 '#f)
                (##vector-cas! _%lock125844%_ '0 '0 '1)))
            _%$r125864%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint125821%_ _%seed125822%_)
        (make-raw-table__1
         _%size-hint125821%_
         symbolic-hash
         eq?
         _%seed125822%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint125828%_ '#f) (_%seed125830%_ '0))
          (make-symbolic-table__% _%size-hint125828%_ _%seed125830%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint125832%_)
        (let ((_%seed125834%_ '0))
          (make-symbolic-table__% _%size-hint125832%_ _%seed125834%_))))
    (define make-symbolic-table
      (lambda _g127177_
        (let ((_g127178_ (##length _g127177_)))
          (cond ((##fx= _g127178_ 0) (apply make-symbolic-table__0 _g127177_))
                ((##fx= _g127178_ 1) (apply make-symbolic-table__1 _g127177_))
                ((##fx= _g127178_ 2) (apply make-symbolic-table__% _g127177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g127177_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint125801%_ _%seed125803%_)
        (make-raw-table/lock__%
         _%size-hint125801%_
         symbolic-hash
         eq?
         _%seed125803%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint125809%_ '#f) (_%seed125811%_ '0))
          (make-symbolic-table/lock__% _%size-hint125809%_ _%seed125811%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint125813%_)
        (let ((_%seed125815%_ '0))
          (make-symbolic-table/lock__% _%size-hint125813%_ _%seed125815%_))))
    (define make-symbolic-table/lock
      (lambda _g127179_
        (let ((_g127180_ (##length _g127179_)))
          (cond ((##fx= _g127180_ 0)
                 (apply make-symbolic-table/lock__0 _g127179_))
                ((##fx= _g127180_ 1)
                 (apply make-symbolic-table/lock__1 _g127179_))
                ((##fx= _g127180_ 2)
                 (apply make-symbolic-table/lock__% _g127179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g127179_))))))
    (define symbolic-table-ref
      (lambda (_%tab125754%_ _%key125755%_ _%default125756%_)
        (let ((_%table125758%_ (&raw-table-table _%tab125754%_))
              (_%seed125759%_ (&raw-table-seed _%tab125754%_)))
          (let* ((_%h125761%_
                  (fxxor (##symbol-hash _%key125755%_) _%seed125759%_))
                 (_%size125764%_ (vector-length _%table125758%_))
                 (_%entries125767%_ (##fxquotient _%size125764%_ '2))
                 (_%start125770%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125761%_ _%entries125767%_)
                   '1)))
            (let _%loop125774%_ ((_%probe125777%_ _%start125770%_)
                                 (_%i125779%_ '1)
                                 (_%deleted125781%_ '#f))
              (let ((_%k125784%_ (vector-ref _%table125758%_ _%probe125777%_)))
                (if (eq? _%k125784%_ (macro-unused-obj))
                    _%default125756%_
                    (if (eq? _%k125784%_ (macro-deleted-obj))
                        (_%loop125774%_
                         (let ((_%next-probe125789%_
                                (fx+ _%start125770%_
                                     _%i125779%_
                                     (fx* _%i125779%_ _%i125779%_))))
                           (##fxmodulo _%next-probe125789%_ _%size125764%_))
                         (##fx+ _%i125779%_ '1)
                         (let ((_%$e125792%_ _%deleted125781%_))
                           (if _%$e125792%_ _%$e125792%_ _%probe125777%_)))
                        (if (eq? _%key125755%_ _%k125784%_)
                            (vector-ref
                             _%table125758%_
                             (##fx+ _%probe125777%_ '1))
                            (_%loop125774%_
                             (let ((_%next-probe125797%_
                                    (fx+ _%start125770%_
                                         _%i125779%_
                                         (fx* _%i125779%_ _%i125779%_))))
                               (##fxmodulo
                                _%next-probe125797%_
                                _%size125764%_))
                             (##fx+ _%i125779%_ '1)
                             _%deleted125781%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab125725%_ _%key125726%_ _%default125727%_)
        (let ((_%lock125729%_ (&raw-table-lock _%tab125725%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125734%_ ((_%spin125737%_ '0))
              (if (##fx= (##vector-cas! _%lock125729%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125729%_ '1 (current-thread))
                  (if (##fx< _%spin125737%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125734%_ (##fx+ _%spin125737%_ '1)))
                      (let ((_%owner125743%_ (##vector-ref _%lock125729%_ '1)))
                        (if (eq? _%owner125743%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125743%_)
                                (let () (##thread-yield!) (_%again125734%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125749%_
                 (symbolic-table-ref
                  _%tab125725%_
                  _%key125726%_
                  _%default125727%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125729%_ '1 '#f)
                (##vector-cas! _%lock125729%_ '0 '0 '1)))
            _%$r125749%_))))
    (define __symbolic-table-set!
      (lambda (_%tab125677%_ _%key125678%_ _%value125679%_)
        (let ((_%table125681%_ (&raw-table-table _%tab125677%_))
              (_%seed125682%_ (&raw-table-seed _%tab125677%_)))
          (let* ((_%h125684%_
                  (fxxor (##symbol-hash _%key125678%_) _%seed125682%_))
                 (_%size125687%_ (vector-length _%table125681%_))
                 (_%entries125690%_ (##fxquotient _%size125687%_ '2))
                 (_%start125693%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125684%_ _%entries125690%_)
                   '1)))
            (let _%loop125697%_ ((_%probe125700%_ _%start125693%_)
                                 (_%i125702%_ '1)
                                 (_%deleted125704%_ '#f))
              (let ((_%k125707%_ (vector-ref _%table125681%_ _%probe125700%_)))
                (if (eq? _%k125707%_ (macro-unused-obj))
                    (if _%deleted125704%_
                        (begin
                          (vector-set!
                           _%table125681%_
                           _%deleted125704%_
                           _%key125678%_)
                          (vector-set!
                           _%table125681%_
                           (##fx+ _%deleted125704%_ '1)
                           _%value125679%_)
                          (&raw-table-count-set!
                           _%tab125677%_
                           (##fx+ (&raw-table-count _%tab125677%_) '1)))
                        (begin
                          (vector-set!
                           _%table125681%_
                           _%probe125700%_
                           _%key125678%_)
                          (vector-set!
                           _%table125681%_
                           (##fx+ _%probe125700%_ '1)
                           _%value125679%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab125677%_
                             (##fx- (&raw-table-free _%tab125677%_) '1))
                            (&raw-table-count-set!
                             _%tab125677%_
                             (##fx+ (&raw-table-count _%tab125677%_) '1)))))
                    (if (eq? _%k125707%_ (macro-deleted-obj))
                        (_%loop125697%_
                         (let ((_%next-probe125714%_
                                (fx+ _%start125693%_
                                     _%i125702%_
                                     (fx* _%i125702%_ _%i125702%_))))
                           (##fxmodulo _%next-probe125714%_ _%size125687%_))
                         (##fx+ _%i125702%_ '1)
                         (let ((_%$e125717%_ _%deleted125704%_))
                           (if _%$e125717%_ _%$e125717%_ _%probe125700%_)))
                        (if (eq? _%key125678%_ _%k125707%_)
                            (let ()
                              (vector-set!
                               _%table125681%_
                               _%probe125700%_
                               _%key125678%_)
                              (vector-set!
                               _%table125681%_
                               (##fx+ _%probe125700%_ '1)
                               _%value125679%_))
                            (_%loop125697%_
                             (let ((_%next-probe125722%_
                                    (fx+ _%start125693%_
                                         _%i125702%_
                                         (fx* _%i125702%_ _%i125702%_))))
                               (##fxmodulo
                                _%next-probe125722%_
                                _%size125687%_))
                             (##fx+ _%i125702%_ '1)
                             _%deleted125704%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab125673%_ _%key125674%_ _%value125675%_)
        (if (##fx< (&raw-table-free _%tab125673%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125673%_))
                    '4))
            (__raw-table-rehash! _%tab125673%_)
            '#!void)
        (__symbolic-table-set! _%tab125673%_ _%key125674%_ _%value125675%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab125643%_ _%key125644%_ _%value125645%_)
        (let ((_%lock125648%_ (&raw-table-lock _%tab125643%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125653%_ ((_%spin125656%_ '0))
              (if (##fx= (##vector-cas! _%lock125648%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125648%_ '1 (current-thread))
                  (if (##fx< _%spin125656%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125653%_ (##fx+ _%spin125656%_ '1)))
                      (let ((_%owner125662%_ (##vector-ref _%lock125648%_ '1)))
                        (if (eq? _%owner125662%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125662%_)
                                (let () (##thread-yield!) (_%again125653%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125668%_
                 (symbolic-table-set!
                  _%tab125643%_
                  _%key125644%_
                  _%value125645%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125648%_ '1 '#f)
                (##vector-cas! _%lock125648%_ '0 '0 '1)))
            _%$r125668%_))))
    (define __symbolic-table-update!
      (lambda (_%tab125594%_
               _%key125595%_
               _%symbolic-table-update!125596%_
               _%default125597%_)
        (let ((_%table125599%_ (&raw-table-table _%tab125594%_))
              (_%seed125600%_ (&raw-table-seed _%tab125594%_)))
          (let* ((_%h125602%_
                  (fxxor (##symbol-hash _%key125595%_) _%seed125600%_))
                 (_%size125605%_ (vector-length _%table125599%_))
                 (_%entries125608%_ (##fxquotient _%size125605%_ '2))
                 (_%start125611%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125602%_ _%entries125608%_)
                   '1)))
            (let _%loop125615%_ ((_%probe125618%_ _%start125611%_)
                                 (_%i125620%_ '1)
                                 (_%deleted125622%_ '#f))
              (let ((_%k125625%_ (vector-ref _%table125599%_ _%probe125618%_)))
                (if (eq? _%k125625%_ (macro-unused-obj))
                    (if _%deleted125622%_
                        (begin
                          (vector-set!
                           _%table125599%_
                           _%deleted125622%_
                           _%key125595%_)
                          (vector-set!
                           _%table125599%_
                           (##fx+ _%deleted125622%_ '1)
                           (_%symbolic-table-update!125596%_
                            _%default125597%_))
                          (&raw-table-count-set!
                           _%tab125594%_
                           (##fx+ (&raw-table-count _%tab125594%_) '1)))
                        (begin
                          (vector-set!
                           _%table125599%_
                           _%probe125618%_
                           _%key125595%_)
                          (vector-set!
                           _%table125599%_
                           (##fx+ _%probe125618%_ '1)
                           (_%symbolic-table-update!125596%_
                            _%default125597%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125594%_
                             (##fx- (&raw-table-free _%tab125594%_) '1))
                            (&raw-table-count-set!
                             _%tab125594%_
                             (##fx+ (&raw-table-count _%tab125594%_) '1)))))
                    (if (eq? _%k125625%_ (macro-deleted-obj))
                        (_%loop125615%_
                         (let ((_%next-probe125632%_
                                (fx+ _%start125611%_
                                     _%i125620%_
                                     (fx* _%i125620%_ _%i125620%_))))
                           (##fxmodulo _%next-probe125632%_ _%size125605%_))
                         (##fx+ _%i125620%_ '1)
                         (let ((_%$e125635%_ _%deleted125622%_))
                           (if _%$e125635%_ _%$e125635%_ _%probe125618%_)))
                        (if (eq? _%key125595%_ _%k125625%_)
                            (let ()
                              (vector-set!
                               _%table125599%_
                               _%probe125618%_
                               _%key125595%_)
                              (vector-set!
                               _%table125599%_
                               (##fx+ _%probe125618%_ '1)
                               (_%symbolic-table-update!125596%_
                                (vector-ref
                                 _%table125599%_
                                 (##fx+ _%probe125618%_ '1)))))
                            (_%loop125615%_
                             (let ((_%next-probe125640%_
                                    (fx+ _%start125611%_
                                         _%i125620%_
                                         (fx* _%i125620%_ _%i125620%_))))
                               (##fxmodulo
                                _%next-probe125640%_
                                _%size125605%_))
                             (##fx+ _%i125620%_ '1)
                             _%deleted125622%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab125589%_
               _%key125590%_
               _%symbolic-table-update!125591%_
               _%default125592%_)
        (if (##fx< (&raw-table-free _%tab125589%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125589%_))
                    '4))
            (__raw-table-rehash! _%tab125589%_)
            '#!void)
        (__symbolic-table-update!
         _%tab125589%_
         _%key125590%_
         _%symbolic-table-update!125591%_
         _%default125592%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab125558%_
               _%key125559%_
               _%symbolic-table-update!125560%_
               _%default125561%_)
        (let ((_%lock125564%_ (&raw-table-lock _%tab125558%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125569%_ ((_%spin125572%_ '0))
              (if (##fx= (##vector-cas! _%lock125564%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125564%_ '1 (current-thread))
                  (if (##fx< _%spin125572%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125569%_ (##fx+ _%spin125572%_ '1)))
                      (let ((_%owner125578%_ (##vector-ref _%lock125564%_ '1)))
                        (if (eq? _%owner125578%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125578%_)
                                (let () (##thread-yield!) (_%again125569%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125584%_
                 (_%symbolic-table-update!125560%_
                  _%tab125558%_
                  _%key125559%_
                  _%symbolic-table-update!125560%_
                  _%default125561%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125564%_ '1 '#f)
                (##vector-cas! _%lock125564%_ '0 '0 '1)))
            _%$r125584%_))))
    (define symbolic-table-delete!
      (lambda (_%tab125515%_ _%key125516%_)
        (let ((_%table125518%_ (&raw-table-table _%tab125515%_))
              (_%seed125520%_ (&raw-table-seed _%tab125515%_)))
          (let* ((_%h125523%_
                  (fxxor (##symbol-hash _%key125516%_) _%seed125520%_))
                 (_%size125526%_ (vector-length _%table125518%_))
                 (_%entries125529%_ (##fxquotient _%size125526%_ '2))
                 (_%start125532%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125523%_ _%entries125529%_)
                   '1)))
            (let _%loop125536%_ ((_%probe125539%_ _%start125532%_)
                                 (_%i125541%_ '1))
              (let ((_%k125544%_ (vector-ref _%table125518%_ _%probe125539%_)))
                (if (eq? _%k125544%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125544%_ (macro-deleted-obj))
                        (_%loop125536%_
                         (let ((_%next-probe125549%_
                                (fx+ _%start125532%_
                                     _%i125541%_
                                     (fx* _%i125541%_ _%i125541%_))))
                           (##fxmodulo _%next-probe125549%_ _%size125526%_))
                         (##fx+ _%i125541%_ '1))
                        (if (eq? _%key125516%_ _%k125544%_)
                            (let ()
                              (vector-set!
                               _%table125518%_
                               _%probe125539%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125518%_
                               (##fx+ _%probe125539%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125515%_
                               (##fx- (&raw-table-count _%tab125515%_) '1)))
                            (_%loop125536%_
                             (let ((_%next-probe125555%_
                                    (fx+ _%start125532%_
                                         _%i125541%_
                                         (fx* _%i125541%_ _%i125541%_))))
                               (##fxmodulo
                                _%next-probe125555%_
                                _%size125526%_))
                             (##fx+ _%i125541%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab125485%_ _%key125487%_)
        (let ((_%lock125490%_ (&raw-table-lock _%tab125485%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125495%_ ((_%spin125498%_ '0))
              (if (##fx= (##vector-cas! _%lock125490%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125490%_ '1 (current-thread))
                  (if (##fx< _%spin125498%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125495%_ (##fx+ _%spin125498%_ '1)))
                      (let ((_%owner125504%_ (##vector-ref _%lock125490%_ '1)))
                        (if (eq? _%owner125504%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125504%_)
                                (let () (##thread-yield!) (_%again125495%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125510%_
                 (symbolic-table-delete! _%tab125485%_ _%key125487%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125490%_ '1 '#f)
                (##vector-cas! _%lock125490%_ '0 '0 '1)))
            _%$r125510%_))))
    (define make-string-table__%
      (lambda (_%size-hint125467%_ _%seed125468%_)
        (make-raw-table__1
         _%size-hint125467%_
         string-hash
         ##string=?
         _%seed125468%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint125474%_ '#f) (_%seed125476%_ '0))
          (make-string-table__% _%size-hint125474%_ _%seed125476%_))))
    (define make-string-table__1
      (lambda (_%size-hint125478%_)
        (let ((_%seed125480%_ '0))
          (make-string-table__% _%size-hint125478%_ _%seed125480%_))))
    (define make-string-table
      (lambda _g127181_
        (let ((_g127182_ (##length _g127181_)))
          (cond ((##fx= _g127182_ 0) (apply make-string-table__0 _g127181_))
                ((##fx= _g127182_ 1) (apply make-string-table__1 _g127181_))
                ((##fx= _g127182_ 2) (apply make-string-table__% _g127181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g127181_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint125447%_ _%seed125449%_)
        (make-raw-table/lock__%
         _%size-hint125447%_
         string-hash
         ##string=?
         _%seed125449%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint125455%_ '#f) (_%seed125457%_ '0))
          (make-string-table/lock__% _%size-hint125455%_ _%seed125457%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint125459%_)
        (let ((_%seed125461%_ '0))
          (make-string-table/lock__% _%size-hint125459%_ _%seed125461%_))))
    (define make-string-table/lock
      (lambda _g127183_
        (let ((_g127184_ (##length _g127183_)))
          (cond ((##fx= _g127184_ 0)
                 (apply make-string-table/lock__0 _g127183_))
                ((##fx= _g127184_ 1)
                 (apply make-string-table/lock__1 _g127183_))
                ((##fx= _g127184_ 2)
                 (apply make-string-table/lock__% _g127183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g127183_))))))
    (define string-table-ref
      (lambda (_%tab125400%_ _%key125401%_ _%default125402%_)
        (let ((_%table125404%_ (&raw-table-table _%tab125400%_))
              (_%seed125405%_ (&raw-table-seed _%tab125400%_)))
          (let* ((_%h125407%_
                  (fxxor (##string=?-hash _%key125401%_) _%seed125405%_))
                 (_%size125410%_ (vector-length _%table125404%_))
                 (_%entries125413%_ (##fxquotient _%size125410%_ '2))
                 (_%start125416%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125407%_ _%entries125413%_)
                   '1)))
            (let _%loop125420%_ ((_%probe125423%_ _%start125416%_)
                                 (_%i125425%_ '1)
                                 (_%deleted125427%_ '#f))
              (let ((_%k125430%_ (vector-ref _%table125404%_ _%probe125423%_)))
                (if (eq? _%k125430%_ (macro-unused-obj))
                    _%default125402%_
                    (if (eq? _%k125430%_ (macro-deleted-obj))
                        (_%loop125420%_
                         (let ((_%next-probe125435%_
                                (fx+ _%start125416%_
                                     _%i125425%_
                                     (fx* _%i125425%_ _%i125425%_))))
                           (##fxmodulo _%next-probe125435%_ _%size125410%_))
                         (##fx+ _%i125425%_ '1)
                         (let ((_%$e125438%_ _%deleted125427%_))
                           (if _%$e125438%_ _%$e125438%_ _%probe125423%_)))
                        (if (##string=? _%key125401%_ _%k125430%_)
                            (vector-ref
                             _%table125404%_
                             (##fx+ _%probe125423%_ '1))
                            (_%loop125420%_
                             (let ((_%next-probe125443%_
                                    (fx+ _%start125416%_
                                         _%i125425%_
                                         (fx* _%i125425%_ _%i125425%_))))
                               (##fxmodulo
                                _%next-probe125443%_
                                _%size125410%_))
                             (##fx+ _%i125425%_ '1)
                             _%deleted125427%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab125371%_ _%key125372%_ _%default125373%_)
        (let ((_%lock125375%_ (&raw-table-lock _%tab125371%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125380%_ ((_%spin125383%_ '0))
              (if (##fx= (##vector-cas! _%lock125375%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125375%_ '1 (current-thread))
                  (if (##fx< _%spin125383%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125380%_ (##fx+ _%spin125383%_ '1)))
                      (let ((_%owner125389%_ (##vector-ref _%lock125375%_ '1)))
                        (if (eq? _%owner125389%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125389%_)
                                (let () (##thread-yield!) (_%again125380%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125395%_
                 (string-table-ref
                  _%tab125371%_
                  _%key125372%_
                  _%default125373%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125375%_ '1 '#f)
                (##vector-cas! _%lock125375%_ '0 '0 '1)))
            _%$r125395%_))))
    (define __string-table-set!
      (lambda (_%tab125323%_ _%key125324%_ _%value125325%_)
        (let ((_%table125327%_ (&raw-table-table _%tab125323%_))
              (_%seed125328%_ (&raw-table-seed _%tab125323%_)))
          (let* ((_%h125330%_
                  (fxxor (##string=?-hash _%key125324%_) _%seed125328%_))
                 (_%size125333%_ (vector-length _%table125327%_))
                 (_%entries125336%_ (##fxquotient _%size125333%_ '2))
                 (_%start125339%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125330%_ _%entries125336%_)
                   '1)))
            (let _%loop125343%_ ((_%probe125346%_ _%start125339%_)
                                 (_%i125348%_ '1)
                                 (_%deleted125350%_ '#f))
              (let ((_%k125353%_ (vector-ref _%table125327%_ _%probe125346%_)))
                (if (eq? _%k125353%_ (macro-unused-obj))
                    (if _%deleted125350%_
                        (begin
                          (vector-set!
                           _%table125327%_
                           _%deleted125350%_
                           _%key125324%_)
                          (vector-set!
                           _%table125327%_
                           (##fx+ _%deleted125350%_ '1)
                           _%value125325%_)
                          (&raw-table-count-set!
                           _%tab125323%_
                           (##fx+ (&raw-table-count _%tab125323%_) '1)))
                        (begin
                          (vector-set!
                           _%table125327%_
                           _%probe125346%_
                           _%key125324%_)
                          (vector-set!
                           _%table125327%_
                           (##fx+ _%probe125346%_ '1)
                           _%value125325%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab125323%_
                             (##fx- (&raw-table-free _%tab125323%_) '1))
                            (&raw-table-count-set!
                             _%tab125323%_
                             (##fx+ (&raw-table-count _%tab125323%_) '1)))))
                    (if (eq? _%k125353%_ (macro-deleted-obj))
                        (_%loop125343%_
                         (let ((_%next-probe125360%_
                                (fx+ _%start125339%_
                                     _%i125348%_
                                     (fx* _%i125348%_ _%i125348%_))))
                           (##fxmodulo _%next-probe125360%_ _%size125333%_))
                         (##fx+ _%i125348%_ '1)
                         (let ((_%$e125363%_ _%deleted125350%_))
                           (if _%$e125363%_ _%$e125363%_ _%probe125346%_)))
                        (if (##string=? _%key125324%_ _%k125353%_)
                            (let ()
                              (vector-set!
                               _%table125327%_
                               _%probe125346%_
                               _%key125324%_)
                              (vector-set!
                               _%table125327%_
                               (##fx+ _%probe125346%_ '1)
                               _%value125325%_))
                            (_%loop125343%_
                             (let ((_%next-probe125368%_
                                    (fx+ _%start125339%_
                                         _%i125348%_
                                         (fx* _%i125348%_ _%i125348%_))))
                               (##fxmodulo
                                _%next-probe125368%_
                                _%size125333%_))
                             (##fx+ _%i125348%_ '1)
                             _%deleted125350%_))))))))))
    (define string-table-set!
      (lambda (_%tab125319%_ _%key125320%_ _%value125321%_)
        (if (##fx< (&raw-table-free _%tab125319%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125319%_))
                    '4))
            (__raw-table-rehash! _%tab125319%_)
            '#!void)
        (__string-table-set! _%tab125319%_ _%key125320%_ _%value125321%_)))
    (define string-table-set!/lock
      (lambda (_%tab125289%_ _%key125290%_ _%value125291%_)
        (let ((_%lock125294%_ (&raw-table-lock _%tab125289%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125299%_ ((_%spin125302%_ '0))
              (if (##fx= (##vector-cas! _%lock125294%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125294%_ '1 (current-thread))
                  (if (##fx< _%spin125302%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125299%_ (##fx+ _%spin125302%_ '1)))
                      (let ((_%owner125308%_ (##vector-ref _%lock125294%_ '1)))
                        (if (eq? _%owner125308%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125308%_)
                                (let () (##thread-yield!) (_%again125299%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125314%_
                 (string-table-set!
                  _%tab125289%_
                  _%key125290%_
                  _%value125291%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125294%_ '1 '#f)
                (##vector-cas! _%lock125294%_ '0 '0 '1)))
            _%$r125314%_))))
    (define __string-table-update!
      (lambda (_%tab125240%_
               _%key125241%_
               _%string-table-update!125242%_
               _%default125243%_)
        (let ((_%table125245%_ (&raw-table-table _%tab125240%_))
              (_%seed125246%_ (&raw-table-seed _%tab125240%_)))
          (let* ((_%h125248%_
                  (fxxor (##string=?-hash _%key125241%_) _%seed125246%_))
                 (_%size125251%_ (vector-length _%table125245%_))
                 (_%entries125254%_ (##fxquotient _%size125251%_ '2))
                 (_%start125257%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125248%_ _%entries125254%_)
                   '1)))
            (let _%loop125261%_ ((_%probe125264%_ _%start125257%_)
                                 (_%i125266%_ '1)
                                 (_%deleted125268%_ '#f))
              (let ((_%k125271%_ (vector-ref _%table125245%_ _%probe125264%_)))
                (if (eq? _%k125271%_ (macro-unused-obj))
                    (if _%deleted125268%_
                        (begin
                          (vector-set!
                           _%table125245%_
                           _%deleted125268%_
                           _%key125241%_)
                          (vector-set!
                           _%table125245%_
                           (##fx+ _%deleted125268%_ '1)
                           (_%string-table-update!125242%_ _%default125243%_))
                          (&raw-table-count-set!
                           _%tab125240%_
                           (##fx+ (&raw-table-count _%tab125240%_) '1)))
                        (begin
                          (vector-set!
                           _%table125245%_
                           _%probe125264%_
                           _%key125241%_)
                          (vector-set!
                           _%table125245%_
                           (##fx+ _%probe125264%_ '1)
                           (_%string-table-update!125242%_ _%default125243%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab125240%_
                             (##fx- (&raw-table-free _%tab125240%_) '1))
                            (&raw-table-count-set!
                             _%tab125240%_
                             (##fx+ (&raw-table-count _%tab125240%_) '1)))))
                    (if (eq? _%k125271%_ (macro-deleted-obj))
                        (_%loop125261%_
                         (let ((_%next-probe125278%_
                                (fx+ _%start125257%_
                                     _%i125266%_
                                     (fx* _%i125266%_ _%i125266%_))))
                           (##fxmodulo _%next-probe125278%_ _%size125251%_))
                         (##fx+ _%i125266%_ '1)
                         (let ((_%$e125281%_ _%deleted125268%_))
                           (if _%$e125281%_ _%$e125281%_ _%probe125264%_)))
                        (if (##string=? _%key125241%_ _%k125271%_)
                            (let ()
                              (vector-set!
                               _%table125245%_
                               _%probe125264%_
                               _%key125241%_)
                              (vector-set!
                               _%table125245%_
                               (##fx+ _%probe125264%_ '1)
                               (_%string-table-update!125242%_
                                (vector-ref
                                 _%table125245%_
                                 (##fx+ _%probe125264%_ '1)))))
                            (_%loop125261%_
                             (let ((_%next-probe125286%_
                                    (fx+ _%start125257%_
                                         _%i125266%_
                                         (fx* _%i125266%_ _%i125266%_))))
                               (##fxmodulo
                                _%next-probe125286%_
                                _%size125251%_))
                             (##fx+ _%i125266%_ '1)
                             _%deleted125268%_))))))))))
    (define string-table-update!
      (lambda (_%tab125235%_
               _%key125236%_
               _%string-table-update!125237%_
               _%default125238%_)
        (if (##fx< (&raw-table-free _%tab125235%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125235%_))
                    '4))
            (__raw-table-rehash! _%tab125235%_)
            '#!void)
        (__string-table-update!
         _%tab125235%_
         _%key125236%_
         _%string-table-update!125237%_
         _%default125238%_)))
    (define string-table-update!/lock
      (lambda (_%tab125204%_
               _%key125205%_
               _%string-table-update!125206%_
               _%default125207%_)
        (let ((_%lock125210%_ (&raw-table-lock _%tab125204%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125215%_ ((_%spin125218%_ '0))
              (if (##fx= (##vector-cas! _%lock125210%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125210%_ '1 (current-thread))
                  (if (##fx< _%spin125218%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125215%_ (##fx+ _%spin125218%_ '1)))
                      (let ((_%owner125224%_ (##vector-ref _%lock125210%_ '1)))
                        (if (eq? _%owner125224%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125224%_)
                                (let () (##thread-yield!) (_%again125215%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125230%_
                 (_%string-table-update!125206%_
                  _%tab125204%_
                  _%key125205%_
                  _%string-table-update!125206%_
                  _%default125207%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125210%_ '1 '#f)
                (##vector-cas! _%lock125210%_ '0 '0 '1)))
            _%$r125230%_))))
    (define string-table-delete!
      (lambda (_%tab125161%_ _%key125162%_)
        (let ((_%table125164%_ (&raw-table-table _%tab125161%_))
              (_%seed125166%_ (&raw-table-seed _%tab125161%_)))
          (let* ((_%h125169%_
                  (fxxor (##string=?-hash _%key125162%_) _%seed125166%_))
                 (_%size125172%_ (vector-length _%table125164%_))
                 (_%entries125175%_ (##fxquotient _%size125172%_ '2))
                 (_%start125178%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125169%_ _%entries125175%_)
                   '1)))
            (let _%loop125182%_ ((_%probe125185%_ _%start125178%_)
                                 (_%i125187%_ '1))
              (let ((_%k125190%_ (vector-ref _%table125164%_ _%probe125185%_)))
                (if (eq? _%k125190%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125190%_ (macro-deleted-obj))
                        (_%loop125182%_
                         (let ((_%next-probe125195%_
                                (fx+ _%start125178%_
                                     _%i125187%_
                                     (fx* _%i125187%_ _%i125187%_))))
                           (##fxmodulo _%next-probe125195%_ _%size125172%_))
                         (##fx+ _%i125187%_ '1))
                        (if (##string=? _%key125162%_ _%k125190%_)
                            (let ()
                              (vector-set!
                               _%table125164%_
                               _%probe125185%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125164%_
                               (##fx+ _%probe125185%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125161%_
                               (##fx- (&raw-table-count _%tab125161%_) '1)))
                            (_%loop125182%_
                             (let ((_%next-probe125201%_
                                    (fx+ _%start125178%_
                                         _%i125187%_
                                         (fx* _%i125187%_ _%i125187%_))))
                               (##fxmodulo
                                _%next-probe125201%_
                                _%size125172%_))
                             (##fx+ _%i125187%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab125131%_ _%key125133%_)
        (let ((_%lock125136%_ (&raw-table-lock _%tab125131%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125141%_ ((_%spin125144%_ '0))
              (if (##fx= (##vector-cas! _%lock125136%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125136%_ '1 (current-thread))
                  (if (##fx< _%spin125144%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125141%_ (##fx+ _%spin125144%_ '1)))
                      (let ((_%owner125150%_ (##vector-ref _%lock125136%_ '1)))
                        (if (eq? _%owner125150%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125150%_)
                                (let () (##thread-yield!) (_%again125141%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125156%_
                 (string-table-delete! _%tab125131%_ _%key125133%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125136%_ '1 '#f)
                (##vector-cas! _%lock125136%_ '0 '0 '1)))
            _%$r125156%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint125113%_ _%seed125114%_)
        (make-raw-table__1
         _%size-hint125113%_
         immediate-hash
         eq?
         _%seed125114%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint125120%_ '#f) (_%seed125122%_ '0))
          (make-immediate-table__% _%size-hint125120%_ _%seed125122%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint125124%_)
        (let ((_%seed125126%_ '0))
          (make-immediate-table__% _%size-hint125124%_ _%seed125126%_))))
    (define make-immediate-table
      (lambda _g127185_
        (let ((_g127186_ (##length _g127185_)))
          (cond ((##fx= _g127186_ 0) (apply make-immediate-table__0 _g127185_))
                ((##fx= _g127186_ 1) (apply make-immediate-table__1 _g127185_))
                ((##fx= _g127186_ 2) (apply make-immediate-table__% _g127185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g127185_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint125093%_ _%seed125095%_)
        (make-raw-table/lock__%
         _%size-hint125093%_
         immediate-hash
         eq?
         _%seed125095%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint125101%_ '#f) (_%seed125103%_ '0))
          (make-immediate-table/lock__% _%size-hint125101%_ _%seed125103%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint125105%_)
        (let ((_%seed125107%_ '0))
          (make-immediate-table/lock__% _%size-hint125105%_ _%seed125107%_))))
    (define make-immediate-table/lock
      (lambda _g127187_
        (let ((_g127188_ (##length _g127187_)))
          (cond ((##fx= _g127188_ 0)
                 (apply make-immediate-table/lock__0 _g127187_))
                ((##fx= _g127188_ 1)
                 (apply make-immediate-table/lock__1 _g127187_))
                ((##fx= _g127188_ 2)
                 (apply make-immediate-table/lock__% _g127187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g127187_))))))
    (define immediate-table-ref
      (lambda (_%tab125046%_ _%key125047%_ _%default125048%_)
        (let ((_%table125050%_ (&raw-table-table _%tab125046%_))
              (_%seed125051%_ (&raw-table-seed _%tab125046%_)))
          (let* ((_%h125053%_
                  (fxxor (immediate-hash _%key125047%_) _%seed125051%_))
                 (_%size125056%_ (vector-length _%table125050%_))
                 (_%entries125059%_ (##fxquotient _%size125056%_ '2))
                 (_%start125062%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125053%_ _%entries125059%_)
                   '1)))
            (let _%loop125066%_ ((_%probe125069%_ _%start125062%_)
                                 (_%i125071%_ '1)
                                 (_%deleted125073%_ '#f))
              (let ((_%k125076%_ (vector-ref _%table125050%_ _%probe125069%_)))
                (if (eq? _%k125076%_ (macro-unused-obj))
                    _%default125048%_
                    (if (eq? _%k125076%_ (macro-deleted-obj))
                        (_%loop125066%_
                         (let ((_%next-probe125081%_
                                (fx+ _%start125062%_
                                     _%i125071%_
                                     (fx* _%i125071%_ _%i125071%_))))
                           (##fxmodulo _%next-probe125081%_ _%size125056%_))
                         (##fx+ _%i125071%_ '1)
                         (let ((_%$e125084%_ _%deleted125073%_))
                           (if _%$e125084%_ _%$e125084%_ _%probe125069%_)))
                        (if (eq? _%key125047%_ _%k125076%_)
                            (vector-ref
                             _%table125050%_
                             (##fx+ _%probe125069%_ '1))
                            (_%loop125066%_
                             (let ((_%next-probe125089%_
                                    (fx+ _%start125062%_
                                         _%i125071%_
                                         (fx* _%i125071%_ _%i125071%_))))
                               (##fxmodulo
                                _%next-probe125089%_
                                _%size125056%_))
                             (##fx+ _%i125071%_ '1)
                             _%deleted125073%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab125017%_ _%key125018%_ _%default125019%_)
        (let ((_%lock125021%_ (&raw-table-lock _%tab125017%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125026%_ ((_%spin125029%_ '0))
              (if (##fx= (##vector-cas! _%lock125021%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125021%_ '1 (current-thread))
                  (if (##fx< _%spin125029%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125026%_ (##fx+ _%spin125029%_ '1)))
                      (let ((_%owner125035%_ (##vector-ref _%lock125021%_ '1)))
                        (if (eq? _%owner125035%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125035%_)
                                (let () (##thread-yield!) (_%again125026%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125041%_
                 (immediate-table-ref
                  _%tab125017%_
                  _%key125018%_
                  _%default125019%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125021%_ '1 '#f)
                (##vector-cas! _%lock125021%_ '0 '0 '1)))
            _%$r125041%_))))
    (define __immediate-table-set!
      (lambda (_%tab124969%_ _%key124970%_ _%value124971%_)
        (let ((_%table124973%_ (&raw-table-table _%tab124969%_))
              (_%seed124974%_ (&raw-table-seed _%tab124969%_)))
          (let* ((_%h124976%_
                  (fxxor (immediate-hash _%key124970%_) _%seed124974%_))
                 (_%size124979%_ (vector-length _%table124973%_))
                 (_%entries124982%_ (##fxquotient _%size124979%_ '2))
                 (_%start124985%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124976%_ _%entries124982%_)
                   '1)))
            (let _%loop124989%_ ((_%probe124992%_ _%start124985%_)
                                 (_%i124994%_ '1)
                                 (_%deleted124996%_ '#f))
              (let ((_%k124999%_ (vector-ref _%table124973%_ _%probe124992%_)))
                (if (eq? _%k124999%_ (macro-unused-obj))
                    (if _%deleted124996%_
                        (begin
                          (vector-set!
                           _%table124973%_
                           _%deleted124996%_
                           _%key124970%_)
                          (vector-set!
                           _%table124973%_
                           (##fx+ _%deleted124996%_ '1)
                           _%value124971%_)
                          (&raw-table-count-set!
                           _%tab124969%_
                           (##fx+ (&raw-table-count _%tab124969%_) '1)))
                        (begin
                          (vector-set!
                           _%table124973%_
                           _%probe124992%_
                           _%key124970%_)
                          (vector-set!
                           _%table124973%_
                           (##fx+ _%probe124992%_ '1)
                           _%value124971%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124969%_
                             (##fx- (&raw-table-free _%tab124969%_) '1))
                            (&raw-table-count-set!
                             _%tab124969%_
                             (##fx+ (&raw-table-count _%tab124969%_) '1)))))
                    (if (eq? _%k124999%_ (macro-deleted-obj))
                        (_%loop124989%_
                         (let ((_%next-probe125006%_
                                (fx+ _%start124985%_
                                     _%i124994%_
                                     (fx* _%i124994%_ _%i124994%_))))
                           (##fxmodulo _%next-probe125006%_ _%size124979%_))
                         (##fx+ _%i124994%_ '1)
                         (let ((_%$e125009%_ _%deleted124996%_))
                           (if _%$e125009%_ _%$e125009%_ _%probe124992%_)))
                        (if (eq? _%key124970%_ _%k124999%_)
                            (let ()
                              (vector-set!
                               _%table124973%_
                               _%probe124992%_
                               _%key124970%_)
                              (vector-set!
                               _%table124973%_
                               (##fx+ _%probe124992%_ '1)
                               _%value124971%_))
                            (_%loop124989%_
                             (let ((_%next-probe125014%_
                                    (fx+ _%start124985%_
                                         _%i124994%_
                                         (fx* _%i124994%_ _%i124994%_))))
                               (##fxmodulo
                                _%next-probe125014%_
                                _%size124979%_))
                             (##fx+ _%i124994%_ '1)
                             _%deleted124996%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab124965%_ _%key124966%_ _%value124967%_)
        (if (##fx< (&raw-table-free _%tab124965%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124965%_))
                    '4))
            (__raw-table-rehash! _%tab124965%_)
            '#!void)
        (__immediate-table-set! _%tab124965%_ _%key124966%_ _%value124967%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab124935%_ _%key124936%_ _%value124937%_)
        (let ((_%lock124940%_ (&raw-table-lock _%tab124935%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124945%_ ((_%spin124948%_ '0))
              (if (##fx= (##vector-cas! _%lock124940%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124940%_ '1 (current-thread))
                  (if (##fx< _%spin124948%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124945%_ (##fx+ _%spin124948%_ '1)))
                      (let ((_%owner124954%_ (##vector-ref _%lock124940%_ '1)))
                        (if (eq? _%owner124954%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124954%_)
                                (let () (##thread-yield!) (_%again124945%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124960%_
                 (immediate-table-set!
                  _%tab124935%_
                  _%key124936%_
                  _%value124937%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124940%_ '1 '#f)
                (##vector-cas! _%lock124940%_ '0 '0 '1)))
            _%$r124960%_))))
    (define __immediate-table-update!
      (lambda (_%tab124886%_
               _%key124887%_
               _%immediate-table-update!124888%_
               _%default124889%_)
        (let ((_%table124891%_ (&raw-table-table _%tab124886%_))
              (_%seed124892%_ (&raw-table-seed _%tab124886%_)))
          (let* ((_%h124894%_
                  (fxxor (immediate-hash _%key124887%_) _%seed124892%_))
                 (_%size124897%_ (vector-length _%table124891%_))
                 (_%entries124900%_ (##fxquotient _%size124897%_ '2))
                 (_%start124903%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124894%_ _%entries124900%_)
                   '1)))
            (let _%loop124907%_ ((_%probe124910%_ _%start124903%_)
                                 (_%i124912%_ '1)
                                 (_%deleted124914%_ '#f))
              (let ((_%k124917%_ (vector-ref _%table124891%_ _%probe124910%_)))
                (if (eq? _%k124917%_ (macro-unused-obj))
                    (if _%deleted124914%_
                        (begin
                          (vector-set!
                           _%table124891%_
                           _%deleted124914%_
                           _%key124887%_)
                          (vector-set!
                           _%table124891%_
                           (##fx+ _%deleted124914%_ '1)
                           (_%immediate-table-update!124888%_
                            _%default124889%_))
                          (&raw-table-count-set!
                           _%tab124886%_
                           (##fx+ (&raw-table-count _%tab124886%_) '1)))
                        (begin
                          (vector-set!
                           _%table124891%_
                           _%probe124910%_
                           _%key124887%_)
                          (vector-set!
                           _%table124891%_
                           (##fx+ _%probe124910%_ '1)
                           (_%immediate-table-update!124888%_
                            _%default124889%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124886%_
                             (##fx- (&raw-table-free _%tab124886%_) '1))
                            (&raw-table-count-set!
                             _%tab124886%_
                             (##fx+ (&raw-table-count _%tab124886%_) '1)))))
                    (if (eq? _%k124917%_ (macro-deleted-obj))
                        (_%loop124907%_
                         (let ((_%next-probe124924%_
                                (fx+ _%start124903%_
                                     _%i124912%_
                                     (fx* _%i124912%_ _%i124912%_))))
                           (##fxmodulo _%next-probe124924%_ _%size124897%_))
                         (##fx+ _%i124912%_ '1)
                         (let ((_%$e124927%_ _%deleted124914%_))
                           (if _%$e124927%_ _%$e124927%_ _%probe124910%_)))
                        (if (eq? _%key124887%_ _%k124917%_)
                            (let ()
                              (vector-set!
                               _%table124891%_
                               _%probe124910%_
                               _%key124887%_)
                              (vector-set!
                               _%table124891%_
                               (##fx+ _%probe124910%_ '1)
                               (_%immediate-table-update!124888%_
                                (vector-ref
                                 _%table124891%_
                                 (##fx+ _%probe124910%_ '1)))))
                            (_%loop124907%_
                             (let ((_%next-probe124932%_
                                    (fx+ _%start124903%_
                                         _%i124912%_
                                         (fx* _%i124912%_ _%i124912%_))))
                               (##fxmodulo
                                _%next-probe124932%_
                                _%size124897%_))
                             (##fx+ _%i124912%_ '1)
                             _%deleted124914%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab124881%_
               _%key124882%_
               _%immediate-table-update!124883%_
               _%default124884%_)
        (if (##fx< (&raw-table-free _%tab124881%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124881%_))
                    '4))
            (__raw-table-rehash! _%tab124881%_)
            '#!void)
        (__immediate-table-update!
         _%tab124881%_
         _%key124882%_
         _%immediate-table-update!124883%_
         _%default124884%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab124850%_
               _%key124851%_
               _%immediate-table-update!124852%_
               _%default124853%_)
        (let ((_%lock124856%_ (&raw-table-lock _%tab124850%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124861%_ ((_%spin124864%_ '0))
              (if (##fx= (##vector-cas! _%lock124856%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124856%_ '1 (current-thread))
                  (if (##fx< _%spin124864%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124861%_ (##fx+ _%spin124864%_ '1)))
                      (let ((_%owner124870%_ (##vector-ref _%lock124856%_ '1)))
                        (if (eq? _%owner124870%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124870%_)
                                (let () (##thread-yield!) (_%again124861%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124876%_
                 (_%immediate-table-update!124852%_
                  _%tab124850%_
                  _%key124851%_
                  _%immediate-table-update!124852%_
                  _%default124853%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124856%_ '1 '#f)
                (##vector-cas! _%lock124856%_ '0 '0 '1)))
            _%$r124876%_))))
    (define immediate-table-delete!
      (lambda (_%tab124807%_ _%key124808%_)
        (let ((_%table124810%_ (&raw-table-table _%tab124807%_))
              (_%seed124812%_ (&raw-table-seed _%tab124807%_)))
          (let* ((_%h124815%_
                  (fxxor (immediate-hash _%key124808%_) _%seed124812%_))
                 (_%size124818%_ (vector-length _%table124810%_))
                 (_%entries124821%_ (##fxquotient _%size124818%_ '2))
                 (_%start124824%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124815%_ _%entries124821%_)
                   '1)))
            (let _%loop124828%_ ((_%probe124831%_ _%start124824%_)
                                 (_%i124833%_ '1))
              (let ((_%k124836%_ (vector-ref _%table124810%_ _%probe124831%_)))
                (if (eq? _%k124836%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124836%_ (macro-deleted-obj))
                        (_%loop124828%_
                         (let ((_%next-probe124841%_
                                (fx+ _%start124824%_
                                     _%i124833%_
                                     (fx* _%i124833%_ _%i124833%_))))
                           (##fxmodulo _%next-probe124841%_ _%size124818%_))
                         (##fx+ _%i124833%_ '1))
                        (if (eq? _%key124808%_ _%k124836%_)
                            (let ()
                              (vector-set!
                               _%table124810%_
                               _%probe124831%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124810%_
                               (##fx+ _%probe124831%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124807%_
                               (##fx- (&raw-table-count _%tab124807%_) '1)))
                            (_%loop124828%_
                             (let ((_%next-probe124847%_
                                    (fx+ _%start124824%_
                                         _%i124833%_
                                         (fx* _%i124833%_ _%i124833%_))))
                               (##fxmodulo
                                _%next-probe124847%_
                                _%size124818%_))
                             (##fx+ _%i124833%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab124777%_ _%key124779%_)
        (let ((_%lock124782%_ (&raw-table-lock _%tab124777%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124787%_ ((_%spin124790%_ '0))
              (if (##fx= (##vector-cas! _%lock124782%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124782%_ '1 (current-thread))
                  (if (##fx< _%spin124790%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124787%_ (##fx+ _%spin124790%_ '1)))
                      (let ((_%owner124796%_ (##vector-ref _%lock124782%_ '1)))
                        (if (eq? _%owner124796%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124796%_)
                                (let () (##thread-yield!) (_%again124787%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124802%_
                 (immediate-table-delete! _%tab124777%_ _%key124779%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124782%_ '1 '#f)
                (##vector-cas! _%lock124782%_ '0 '0 '1)))
            _%$r124802%_))))
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
      (lambda (_%tab124775%_)
        (##unchecked-structure-ref
         _%tab124775%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab124773%_)
        (##unchecked-structure-ref
         _%tab124773%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab124771%_)
        (##unchecked-structure-ref
         _%tab124771%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab124768%_ _%val124769%_)
        (##unchecked-structure-set!
         _%tab124768%_
         _%val124769%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab124765%_ _%val124766%_)
        (##unchecked-structure-set!
         _%tab124765%_
         _%val124766%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab124762%_ _%val124763%_)
        (##unchecked-structure-set!
         _%tab124762%_
         _%val124763%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint124726%_
               _%klass124727%_
               _%flags124728%_
               _%lock124729%_)
        (let ((_%gcht124731%_
               (__gc-table-new
                (if (fixnum? _%size-hint124726%_) _%size-hint124726%_ '16)
                _%flags124728%_)))
          (##structure _%klass124727%_ _%gcht124731%_ '#f _%lock124729%_))))
    (define make-gc-table__0
      (lambda (_%size-hint124736%_)
        (let* ((_%klass124738%_ __gc-table::t)
               (_%flags124740%_ '0)
               (_%lock124742%_ '#f))
          (make-gc-table__%
           _%size-hint124736%_
           _%klass124738%_
           _%flags124740%_
           _%lock124742%_))))
    (define make-gc-table__1
      (lambda (_%size-hint124744%_ _%klass124745%_)
        (let* ((_%flags124747%_ '0) (_%lock124749%_ '#f))
          (make-gc-table__%
           _%size-hint124744%_
           _%klass124745%_
           _%flags124747%_
           _%lock124749%_))))
    (define make-gc-table__2
      (lambda (_%size-hint124751%_ _%klass124752%_ _%flags124753%_)
        (let ((_%lock124755%_ '#f))
          (make-gc-table__%
           _%size-hint124751%_
           _%klass124752%_
           _%flags124753%_
           _%lock124755%_))))
    (define make-gc-table
      (lambda _g127189_
        (let ((_g127190_ (##length _g127189_)))
          (cond ((##fx= _g127190_ 1) (apply make-gc-table__0 _g127189_))
                ((##fx= _g127190_ 2) (apply make-gc-table__1 _g127189_))
                ((##fx= _g127190_ 3) (apply make-gc-table__2 _g127189_))
                ((##fx= _g127190_ 4) (apply make-gc-table__% _g127189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g127189_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint124703%_ _%klass124704%_ _%flags124705%_)
        (make-gc-table__%
         _%size-hint124703%_
         _%klass124704%_
         _%flags124705%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint124710%_)
        (let* ((_%klass124712%_ __gc-table::t) (_%flags124714%_ '0))
          (make-gc-table/lock__%
           _%size-hint124710%_
           _%klass124712%_
           _%flags124714%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint124716%_ _%klass124717%_)
        (let ((_%flags124719%_ '0))
          (make-gc-table/lock__%
           _%size-hint124716%_
           _%klass124717%_
           _%flags124719%_))))
    (define make-gc-table/lock
      (lambda _g127191_
        (let ((_g127192_ (##length _g127191_)))
          (cond ((##fx= _g127192_ 1) (apply make-gc-table/lock__0 _g127191_))
                ((##fx= _g127192_ 2) (apply make-gc-table/lock__1 _g127191_))
                ((##fx= _g127192_ 3) (apply make-gc-table/lock__% _g127191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g127191_))))))
    (define __gc-table-immediate
      (lambda (_%tab124694%_)
        (let ((_%$e124696%_ (&gc-table-immediate _%tab124694%_)))
          (if _%$e124696%_
              _%$e124696%_
              (let ((_%immediate124700%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab124694%_ _%immediate124700%_)
                _%immediate124700%_)))))
    (define __gc-table-new
      (lambda (_%size124684%_ _%flags124685%_)
        (let* ((_%flags124687%_
                (##fxand _%flags124685%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags124689%_
                (fxior _%flags124687%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht124691%_
                (##gc-hash-table-allocate
                 _%size124684%_
                 _%flags124689%_
                 __gc-table-loads)))
          _%gcht124691%_)))
    (define __gc-table-e
      (lambda (_%tab124679%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht124682%_ (&gc-table-gcht _%tab124679%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht124682%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht124682%_
              (begin
                (__gc-table-rehash! _%tab124679%_)
                (&gc-table-gcht _%tab124679%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab124670%_)
        (let* ((_%old-table124672%_ (&gc-table-gcht _%tab124670%_))
               (_%new-table124674%_
                (##gc-hash-table-resize! _%old-table124672%_ __gc-table-loads))
               (_%gcht124676%_
                (##gc-hash-table-rehash!
                 _%old-table124672%_
                 _%new-table124674%_)))
          (&gc-table-gcht-set! _%tab124670%_ _%gcht124676%_))))
    (define gc-table-ref
      (lambda (_%tab124654%_ _%key124655%_ _%default124656%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124655%_)
            (let* ((_%gcht124660%_ (__gc-table-e _%tab124654%_))
                   (_%value124662%_
                    (##gc-hash-table-ref _%gcht124660%_ _%key124655%_)))
              (if (eq? _%value124662%_ (macro-unused-obj))
                  _%default124656%_
                  _%value124662%_))
            (let ((_%$e124664%_ (&gc-table-immediate _%tab124654%_)))
              (if _%$e124664%_
                  (immediate-table-ref
                   _%$e124664%_
                   _%key124655%_
                   _%default124656%_)
                  _%default124656%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab124628%_ _%key124629%_ _%default124630%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124634%_ ((_%spin124637%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124628%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124628%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124637%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124634%_ (##fx+ _%spin124637%_ '1)))
                    (let ((_%owner124643%_
                           (##vector-ref (&gc-table-lock _%tab124628%_) '1)))
                      (if (eq? _%owner124643%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124643%_)
                              (let () (##thread-yield!) (_%again124634%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124649%_
               (gc-table-ref _%tab124628%_ _%key124629%_ _%default124630%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124628%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124628%_) '0 '0 '1)))
          _%$r124649%_)))
    (define gc-table-set!
      (lambda (_%tab124621%_ _%key124622%_ _%value124623%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124622%_)
            (let ((_%gcht124626%_ (__gc-table-e _%tab124621%_)))
              (if (##gc-hash-table-set!
                   _%gcht124626%_
                   _%key124622%_
                   _%value124623%_)
                  (begin
                    (__gc-table-rehash! _%tab124621%_)
                    (gc-table-set!
                     _%tab124621%_
                     _%key124622%_
                     _%value124623%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab124621%_)
             _%key124622%_
             _%value124623%_))))
    (define gc-table-set/lock!
      (lambda (_%tab124595%_ _%key124596%_ _%value124597%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124601%_ ((_%spin124604%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124595%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124595%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124604%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124601%_ (##fx+ _%spin124604%_ '1)))
                    (let ((_%owner124610%_
                           (##vector-ref (&gc-table-lock _%tab124595%_) '1)))
                      (if (eq? _%owner124610%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124610%_)
                              (let () (##thread-yield!) (_%again124601%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124616%_
               (gc-table-set! _%tab124595%_ _%key124596%_ _%value124597%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124595%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124595%_) '0 '0 '1)))
          _%$r124616%_)))
    (define gc-table-update!
      (lambda (_%tab124588%_ _%key124589%_ _%update124590%_ _%default124591%_)
        (if (##mem-allocated? _%key124589%_)
            (let ((_%value124593%_
                   (gc-table-ref
                    _%tab124588%_
                    _%key124589%_
                    _%default124591%_)))
              (gc-table-set!
               _%tab124588%_
               _%key124589%_
               (_%update124590%_ _%value124593%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab124588%_)
             _%key124589%_
             _%update124590%_
             _%default124591%_))))
    (define gc-table-update!/lock
      (lambda (_%tab124561%_ _%key124562%_ _%update124563%_ _%default124564%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124568%_ ((_%spin124571%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124561%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124561%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124571%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124568%_ (##fx+ _%spin124571%_ '1)))
                    (let ((_%owner124577%_
                           (##vector-ref (&gc-table-lock _%tab124561%_) '1)))
                      (if (eq? _%owner124577%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124577%_)
                              (let () (##thread-yield!) (_%again124568%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124583%_
               (gc-table-update!
                _%tab124561%_
                _%key124562%_
                _%update124563%_
                _%default124564%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124561%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124561%_) '0 '0 '1)))
          _%$r124583%_)))
    (define gc-table-delete!
      (lambda (_%tab124549%_ _%key124550%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key124550%_)
            (let ((_%gcht124554%_ (__gc-table-e _%tab124549%_)))
              (if (##gc-hash-table-set!
                   _%gcht124554%_
                   _%key124550%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab124549%_)
                    (gc-table-delete! _%tab124549%_ _%key124550%_))
                  '#!void))
            (let ((_%$e124556%_ (&gc-table-immediate _%tab124549%_)))
              (if _%$e124556%_
                  (immediate-table-delete! _%$e124556%_ _%key124550%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab124524%_ _%key124525%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124529%_ ((_%spin124532%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124524%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124524%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124532%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124529%_ (##fx+ _%spin124532%_ '1)))
                    (let ((_%owner124538%_
                           (##vector-ref (&gc-table-lock _%tab124524%_) '1)))
                      (if (eq? _%owner124538%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124538%_)
                              (let () (##thread-yield!) (_%again124529%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124544%_ (gc-table-delete! _%tab124524%_ _%key124525%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124524%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124524%_) '0 '0 '1)))
          _%$r124544%_)))
    (define gc-table-for-each
      (lambda (_%tab124513%_ _%proc124514%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht124517%_ (__gc-table-e _%tab124513%_)))
            (##gc-hash-table-for-each _%proc124514%_ _%gcht124517%_))
          (let ((_%$e124519%_ (&gc-table-immediate _%tab124513%_)))
            (if _%$e124519%_
                (raw-table-for-each _%$e124519%_ _%proc124514%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab124488%_ _%proc124489%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124493%_ ((_%spin124496%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124488%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124488%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124496%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124493%_ (##fx+ _%spin124496%_ '1)))
                    (let ((_%owner124502%_
                           (##vector-ref (&gc-table-lock _%tab124488%_) '1)))
                      (if (eq? _%owner124502%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124502%_)
                              (let () (##thread-yield!) (_%again124493%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124508%_ (gc-table-for-each _%tab124488%_ _%proc124489%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124488%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124488%_) '0 '0 '1)))
          _%$r124508%_)))
    (define table-new__%
      (lambda (_%tab124470%_ _%size-hint124471%_)
        (if (table? _%tab124470%_)
            '#!void
            (error '"table-new: expected table" _%tab124470%_))
        (letrec* ((_%loads124473%_ (macro-table-loads _%tab124470%_)))
          (make-table
           'size:
           (let ((_%$e124475%_ _%size-hint124471%_))
             (if _%$e124475%_ _%$e124475%_ '16))
           'init:
           (macro-table-init _%tab124470%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab124470%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab124470%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab124470%_)
           'hash:
           (macro-table-hash _%tab124470%_)
           'min-load:
           (##f64vector-ref _%loads124473%_ '0)
           'max-load:
           (##f64vector-ref _%loads124473%_ '2)))))
    (define table-new__0
      (lambda (_%tab124481%_)
        (let ((_%size-hint124483%_ '#f))
          (table-new__% _%tab124481%_ _%size-hint124483%_))))
    (define table-new
      (lambda _g127193_
        (let ((_g127194_ (##length _g127193_)))
          (cond ((##fx= _g127194_ 1) (apply table-new__0 _g127193_))
                ((##fx= _g127194_ 2) (apply table-new__% _g127193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g127193_))))))
    (define gc-table-new__%
      (lambda (_%tab124456%_ _%size-hint124457%_)
        (make-gc-table__%
         (if (eq? _%size-hint124457%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab124456%_))
             _%size-hint124457%_)
         (##structure-type _%tab124456%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab124456%_))
         (if (&gc-table-lock _%tab124456%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab124462%_)
        (let ((_%size-hint124464%_ '#f))
          (gc-table-new__% _%tab124462%_ _%size-hint124464%_))))
    (define gc-table-new
      (lambda _g127195_
        (let ((_g127196_ (##length _g127195_)))
          (cond ((##fx= _g127196_ 1) (apply gc-table-new__0 _g127195_))
                ((##fx= _g127196_ 2) (apply gc-table-new__% _g127195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g127195_))))))
    (define gc-table-copy
      (lambda (_%tab124448%_)
        (let ((_%result124450%_ (gc-table-new__% _%tab124448%_ '#t)))
          (gc-table-for-each
           _%tab124448%_
           (lambda (_%k124452%_ _%v124453%_)
             (gc-table-set! _%result124450%_ _%k124452%_ _%v124453%_)))
          _%result124450%_)))
    (define gc-table-copy/lock
      (lambda (_%tab124424%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124428%_ ((_%spin124431%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124424%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124424%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124431%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124428%_ (##fx+ _%spin124431%_ '1)))
                    (let ((_%owner124437%_
                           (##vector-ref (&gc-table-lock _%tab124424%_) '1)))
                      (if (eq? _%owner124437%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124437%_)
                              (let () (##thread-yield!) (_%again124428%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124443%_ (gc-table-copy _%tab124424%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124424%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124424%_) '0 '0 '1)))
          _%$r124443%_)))
    (define gc-table-clear!
      (lambda (_%tab124417%_)
        (let* ((_%gcht124419%_ (__gc-table-e _%tab124417%_))
               (_%new-table124421%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht124419%_))))
          (&gc-table-gcht-set! _%tab124417%_ _%new-table124421%_)
          (&gc-table-immediate-set! _%tab124417%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab124393%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124397%_ ((_%spin124400%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124393%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124393%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124400%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124397%_ (##fx+ _%spin124400%_ '1)))
                    (let ((_%owner124406%_
                           (##vector-ref (&gc-table-lock _%tab124393%_) '1)))
                      (if (eq? _%owner124406%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124406%_)
                              (let () (##thread-yield!) (_%again124397%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124412%_ (gc-table-clear! _%tab124393%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124393%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124393%_) '0 '0 '1)))
          _%$r124412%_)))
    (define gc-table-length
      (lambda (_%tab124385%_)
        (let ((_%gcht124387%_ (__gc-table-e _%tab124385%_)))
          (fx+ (macro-gc-hash-table-count _%gcht124387%_)
               (let ((_%$e124389%_ (&gc-table-immediate _%tab124385%_)))
                 (if _%$e124389%_ (&raw-table-count _%$e124389%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab124361%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again124365%_ ((_%spin124368%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab124361%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab124361%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin124368%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again124365%_ (##fx+ _%spin124368%_ '1)))
                    (let ((_%owner124374%_
                           (##vector-ref (&gc-table-lock _%tab124361%_) '1)))
                      (if (eq? _%owner124374%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner124374%_)
                              (let () (##thread-yield!) (_%again124365%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r124380%_ (gc-table-length _%tab124361%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab124361%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab124361%_) '0 '0 '1)))
          _%$r124380%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj124327%_)
        (declare (not interrupts-enabled))
        (let ((_%val124330%_
               (gc-table-ref __object-eq-hash _%obj124327%_ '#f)))
          (if _%val124330%_
              _%val124330%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again124334%_ ((_%spin124337%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin124337%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again124334%_ (##fx+ _%spin124337%_ '1)))
                            (let ((_%owner124343%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner124343%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner124343%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again124334%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r124356%_
                       (let ((_%val124349%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj124327%_
                               '#f)))
                         (if _%val124349%_
                             _%val124349%_
                             (let ((_%h124351%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e124353%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e124353%_ _%$e124353%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj124327%_
                                _%h124351%_)
                               _%h124351%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r124356%_))))))))
