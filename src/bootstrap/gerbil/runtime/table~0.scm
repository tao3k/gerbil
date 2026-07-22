(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1784758121)
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
      (lambda (_%obj125343%_)
        (if (##structure? _%obj125343%_)
            (##structure-instance-of? _%obj125343%_ __table::t.id)
            '#f)))
    (define &raw-table-table
      (lambda (_%tab125341%_)
        (##unchecked-structure-ref
         _%tab125341%_
         '1
         __table::t
         'raw-table-table)))
    (define &raw-table-count
      (lambda (_%tab125339%_)
        (##unchecked-structure-ref
         _%tab125339%_
         '2
         __table::t
         'raw-table-count)))
    (define &raw-table-free
      (lambda (_%tab125337%_)
        (##unchecked-structure-ref
         _%tab125337%_
         '3
         __table::t
         'raw-table-free)))
    (define &raw-table-hash
      (lambda (_%tab125335%_)
        (##unchecked-structure-ref
         _%tab125335%_
         '4
         __table::t
         'raw-table-hash)))
    (define &raw-table-test
      (lambda (_%tab125333%_)
        (##unchecked-structure-ref
         _%tab125333%_
         '5
         __table::t
         'raw-table-test)))
    (define &raw-table-seed
      (lambda (_%tab125331%_)
        (##unchecked-structure-ref
         _%tab125331%_
         '6
         __table::t
         'raw-table-seed)))
    (define &raw-table-lock
      (lambda (_%tab125329%_)
        (##unchecked-structure-ref
         _%tab125329%_
         '7
         __table::t
         'raw-table-lock)))
    (define &raw-table-table-set!
      (lambda (_%tab125326%_ _%val125327%_)
        (##unchecked-structure-set!
         _%tab125326%_
         _%val125327%_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_%tab125323%_ _%val125324%_)
        (##unchecked-structure-set!
         _%tab125323%_
         _%val125324%_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_%tab125320%_ _%val125321%_)
        (##unchecked-structure-set!
         _%tab125320%_
         _%val125321%_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_%tab125317%_ _%val125318%_)
        (##unchecked-structure-set!
         _%tab125317%_
         _%val125318%_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_%tab125314%_ _%val125315%_)
        (##unchecked-structure-set!
         _%tab125314%_
         _%val125315%_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_%tab125311%_ _%val125312%_)
        (##unchecked-structure-set!
         _%tab125311%_
         _%val125312%_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define &raw-table-lock-set!
      (lambda (_%tab125308%_ _%val125309%_)
        (##unchecked-structure-set!
         _%tab125308%_
         _%val125309%_
         '7
         __table::t
         'raw-table-lock-set!)))
    (define raw-table-size-hint->size
      (lambda (_%size-hint125306%_)
        (if (and (fixnum? _%size-hint125306%_) (##fx> _%size-hint125306%_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _%size-hint125306%_)))
                   '4)
            '16)))
    (define ensure-lock
      (lambda (_%lock125302%_)
        (if (eq? _%lock125302%_ '#t) (vector '0 '#f) _%lock125302%_)))
    (define make-raw-table__%
      (lambda (_%size-hint125267%_
               _%hash125268%_
               _%test125269%_
               _%seed125270%_
               _%lock125271%_)
        (let* ((_%size125273%_ (raw-table-size-hint->size _%size-hint125267%_))
               (_%table125275%_
                (##make-vector _%size125273%_ (macro-unused-obj))))
          (##structure
           __table::t
           _%table125275%_
           '0
           (##fxquotient _%size125273%_ '2)
           _%hash125268%_
           _%test125269%_
           _%seed125270%_
           (ensure-lock _%lock125271%_)))))
    (define make-raw-table__0
      (lambda (_%size-hint125281%_ _%hash125282%_ _%test125283%_)
        (let* ((_%seed125285%_ '0) (_%lock125287%_ '#f))
          (make-raw-table__%
           _%size-hint125281%_
           _%hash125282%_
           _%test125283%_
           _%seed125285%_
           _%lock125287%_))))
    (define make-raw-table__1
      (lambda (_%size-hint125289%_
               _%hash125290%_
               _%test125291%_
               _%seed125292%_)
        (let ((_%lock125294%_ '#f))
          (make-raw-table__%
           _%size-hint125289%_
           _%hash125290%_
           _%test125291%_
           _%seed125292%_
           _%lock125294%_))))
    (define make-raw-table
      (lambda _g125344_
        (let ((_g125345_ (##length _g125344_)))
          (cond ((##fx= _g125345_ 3) (apply make-raw-table__0 _g125344_))
                ((##fx= _g125345_ 4) (apply make-raw-table__1 _g125344_))
                ((##fx= _g125345_ 5) (apply make-raw-table__% _g125344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g125344_))))))
    (define make-raw-table/lock__%
      (lambda (_%size-hint125247%_
               _%hash125248%_
               _%test125249%_
               _%seed125250%_)
        (make-raw-table__%
         _%size-hint125247%_
         _%hash125248%_
         _%test125249%_
         _%seed125250%_
         '#t)))
    (define make-raw-table/lock__0
      (lambda (_%size-hint125255%_ _%hash125256%_ _%test125257%_)
        (let ((_%seed125259%_ '0))
          (make-raw-table/lock__%
           _%size-hint125255%_
           _%hash125256%_
           _%test125257%_
           _%seed125259%_))))
    (define make-raw-table/lock
      (lambda _g125346_
        (let ((_g125347_ (##length _g125346_)))
          (cond ((##fx= _g125347_ 3) (apply make-raw-table/lock__0 _g125346_))
                ((##fx= _g125347_ 4) (apply make-raw-table/lock__% _g125346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table/lock
                  _g125346_))))))
    (define raw-table-length
      (lambda (_%tab125244%_) (&raw-table-count _%tab125244%_)))
    (define raw-table-length/lock
      (lambda (_%tab125217%_)
        (let ((_%lock125219%_ (&raw-table-lock _%tab125217%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125224%_ ((_%spin125227%_ '0))
              (if (##fx= (##vector-cas! _%lock125219%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125219%_ '1 (current-thread))
                  (if (##fx< _%spin125227%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125224%_ (##fx+ _%spin125227%_ '1)))
                      (let ((_%owner125233%_ (##vector-ref _%lock125219%_ '1)))
                        (if (eq? _%owner125233%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125233%_)
                                (let () (##thread-yield!) (_%again125224%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125239%_ (&raw-table-count _%tab125217%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125219%_ '1 '#f)
                (##vector-cas! _%lock125219%_ '0 '0 '1)))
            _%$r125239%_))))
    (define raw-table-ref
      (lambda (_%tab125169%_ _%key125170%_ _%default125171%_)
        (let ((_%table125173%_ (&raw-table-table _%tab125169%_))
              (_%seed125174%_ (&raw-table-seed _%tab125169%_))
              (_%hash125175%_ (&raw-table-hash _%tab125169%_))
              (_%test125176%_ (&raw-table-test _%tab125169%_)))
          (let* ((_%h125178%_
                  (fxxor (_%hash125175%_ _%key125170%_) _%seed125174%_))
                 (_%size125181%_ (vector-length _%table125173%_))
                 (_%entries125184%_ (##fxquotient _%size125181%_ '2))
                 (_%start125187%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125178%_ _%entries125184%_)
                   '1)))
            (let _%loop125191%_ ((_%probe125194%_ _%start125187%_)
                                 (_%i125196%_ '1)
                                 (_%deleted125198%_ '#f))
              (let ((_%k125201%_ (vector-ref _%table125173%_ _%probe125194%_)))
                (if (eq? _%k125201%_ (macro-unused-obj))
                    _%default125171%_
                    (if (eq? _%k125201%_ (macro-deleted-obj))
                        (_%loop125191%_
                         (let ((_%next-probe125206%_
                                (fx+ _%start125187%_
                                     _%i125196%_
                                     (fx* _%i125196%_ _%i125196%_))))
                           (##fxmodulo _%next-probe125206%_ _%size125181%_))
                         (##fx+ _%i125196%_ '1)
                         (let ((_%$e125209%_ _%deleted125198%_))
                           (if _%$e125209%_ _%$e125209%_ _%probe125194%_)))
                        (if (_%test125176%_ _%key125170%_ _%k125201%_)
                            (vector-ref
                             _%table125173%_
                             (##fx+ _%probe125194%_ '1))
                            (_%loop125191%_
                             (let ((_%next-probe125214%_
                                    (fx+ _%start125187%_
                                         _%i125196%_
                                         (fx* _%i125196%_ _%i125196%_))))
                               (##fxmodulo
                                _%next-probe125214%_
                                _%size125181%_))
                             (##fx+ _%i125196%_ '1)
                             _%deleted125198%_))))))))))
    (define raw-table-ref/lock
      (lambda (_%tab125140%_ _%key125141%_ _%default125142%_)
        (let ((_%lock125144%_ (&raw-table-lock _%tab125140%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125149%_ ((_%spin125152%_ '0))
              (if (##fx= (##vector-cas! _%lock125144%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125144%_ '1 (current-thread))
                  (if (##fx< _%spin125152%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125149%_ (##fx+ _%spin125152%_ '1)))
                      (let ((_%owner125158%_ (##vector-ref _%lock125144%_ '1)))
                        (if (eq? _%owner125158%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125158%_)
                                (let () (##thread-yield!) (_%again125149%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125164%_
                 (raw-table-ref
                  _%tab125140%_
                  _%key125141%_
                  _%default125142%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125144%_ '1 '#f)
                (##vector-cas! _%lock125144%_ '0 '0 '1)))
            _%$r125164%_))))
    (define raw-table-set!
      (lambda (_%tab125136%_ _%key125137%_ _%value125138%_)
        (if (##fx< (&raw-table-free _%tab125136%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125136%_))
                    '4))
            (__raw-table-rehash! _%tab125136%_)
            '#!void)
        (__raw-table-set! _%tab125136%_ _%key125137%_ _%value125138%_)))
    (define raw-table-set!/lock
      (lambda (_%tab125107%_ _%key125108%_ _%value125109%_)
        (let ((_%lock125111%_ (&raw-table-lock _%tab125107%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125116%_ ((_%spin125119%_ '0))
              (if (##fx= (##vector-cas! _%lock125111%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125111%_ '1 (current-thread))
                  (if (##fx< _%spin125119%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125116%_ (##fx+ _%spin125119%_ '1)))
                      (let ((_%owner125125%_ (##vector-ref _%lock125111%_ '1)))
                        (if (eq? _%owner125125%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125125%_)
                                (let () (##thread-yield!) (_%again125116%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125131%_
                 (raw-table-set! _%tab125107%_ _%key125108%_ _%value125109%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125111%_ '1 '#f)
                (##vector-cas! _%lock125111%_ '0 '0 '1)))
            _%$r125131%_))))
    (define raw-table-update!
      (lambda (_%tab125102%_ _%key125103%_ _%update125104%_ _%default125105%_)
        (if (##fx< (&raw-table-free _%tab125102%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab125102%_))
                    '4))
            (__raw-table-rehash! _%tab125102%_)
            '#!void)
        (__raw-table-update!
         _%tab125102%_
         _%key125103%_
         _%update125104%_
         _%default125105%_)))
    (define raw-table-update!/lock
      (lambda (_%tab125072%_ _%key125073%_ _%update125074%_ _%default125075%_)
        (let ((_%lock125077%_ (&raw-table-lock _%tab125072%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125082%_ ((_%spin125085%_ '0))
              (if (##fx= (##vector-cas! _%lock125077%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125077%_ '1 (current-thread))
                  (if (##fx< _%spin125085%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125082%_ (##fx+ _%spin125085%_ '1)))
                      (let ((_%owner125091%_ (##vector-ref _%lock125077%_ '1)))
                        (if (eq? _%owner125091%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125091%_)
                                (let () (##thread-yield!) (_%again125082%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125097%_
                 (raw-table-update!
                  _%tab125072%_
                  _%key125073%_
                  _%update125074%_
                  _%default125075%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125077%_ '1 '#f)
                (##vector-cas! _%lock125077%_ '0 '0 '1)))
            _%$r125097%_))))
    (define raw-table-delete!
      (lambda (_%tab125029%_ _%key125030%_)
        (let ((_%table125032%_ (&raw-table-table _%tab125029%_))
              (_%seed125033%_ (&raw-table-seed _%tab125029%_))
              (_%hash125034%_ (&raw-table-hash _%tab125029%_))
              (_%test125035%_ (&raw-table-test _%tab125029%_)))
          (let* ((_%h125037%_
                  (fxxor (_%hash125034%_ _%key125030%_) _%seed125033%_))
                 (_%size125040%_ (vector-length _%table125032%_))
                 (_%entries125043%_ (##fxquotient _%size125040%_ '2))
                 (_%start125046%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h125037%_ _%entries125043%_)
                   '1)))
            (let _%loop125050%_ ((_%probe125053%_ _%start125046%_)
                                 (_%i125055%_ '1))
              (let ((_%k125058%_ (vector-ref _%table125032%_ _%probe125053%_)))
                (if (eq? _%k125058%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k125058%_ (macro-deleted-obj))
                        (_%loop125050%_
                         (let ((_%next-probe125063%_
                                (fx+ _%start125046%_
                                     _%i125055%_
                                     (fx* _%i125055%_ _%i125055%_))))
                           (##fxmodulo _%next-probe125063%_ _%size125040%_))
                         (##fx+ _%i125055%_ '1))
                        (if (_%test125035%_ _%key125030%_ _%k125058%_)
                            (let ()
                              (vector-set!
                               _%table125032%_
                               _%probe125053%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table125032%_
                               (##fx+ _%probe125053%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab125029%_
                               (##fx- (&raw-table-count _%tab125029%_) '1)))
                            (_%loop125050%_
                             (let ((_%next-probe125069%_
                                    (fx+ _%start125046%_
                                         _%i125055%_
                                         (fx* _%i125055%_ _%i125055%_))))
                               (##fxmodulo
                                _%next-probe125069%_
                                _%size125040%_))
                             (##fx+ _%i125055%_ '1)))))))))))
    (define raw-table-delete!/lock
      (lambda (_%tab125001%_ _%key125002%_)
        (let ((_%lock125004%_ (&raw-table-lock _%tab125001%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again125009%_ ((_%spin125012%_ '0))
              (if (##fx= (##vector-cas! _%lock125004%_ '0 '1 '0) '0)
                  (##vector-set! _%lock125004%_ '1 (current-thread))
                  (if (##fx< _%spin125012%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again125009%_ (##fx+ _%spin125012%_ '1)))
                      (let ((_%owner125018%_ (##vector-ref _%lock125004%_ '1)))
                        (if (eq? _%owner125018%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner125018%_)
                                (let () (##thread-yield!) (_%again125009%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r125024%_ (raw-table-delete! _%tab125001%_ _%key125002%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock125004%_ '1 '#f)
                (##vector-cas! _%lock125004%_ '0 '0 '1)))
            _%$r125024%_))))
    (define raw-table-for-each
      (lambda (_%tab124985%_ _%proc124986%_)
        (let* ((_%table124988%_ (&raw-table-table _%tab124985%_))
               (_%size124990%_ (vector-length _%table124988%_)))
          (let _%loop124993%_ ((_%i124995%_ '0))
            (if (##fx< _%i124995%_ _%size124990%_)
                (begin
                  (let ((_%key124997%_
                         (vector-ref _%table124988%_ _%i124995%_)))
                    (if (if (eq? _%key124997%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key124997%_ (macro-deleted-obj))))
                        (let ((_%value124999%_
                               (vector-ref
                                _%table124988%_
                                (##fx+ _%i124995%_ '1))))
                          (_%proc124986%_ _%key124997%_ _%value124999%_))
                        '#!void))
                  (_%loop124993%_ (##fx+ _%i124995%_ '2)))
                '#!void)))))
    (define raw-table-for-each/lock
      (lambda (_%tab124957%_ _%proc124958%_)
        (let ((_%lock124960%_ (&raw-table-lock _%tab124957%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124965%_ ((_%spin124968%_ '0))
              (if (##fx= (##vector-cas! _%lock124960%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124960%_ '1 (current-thread))
                  (if (##fx< _%spin124968%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124965%_ (##fx+ _%spin124968%_ '1)))
                      (let ((_%owner124974%_ (##vector-ref _%lock124960%_ '1)))
                        (if (eq? _%owner124974%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124974%_)
                                (let () (##thread-yield!) (_%again124965%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124980%_
                 (raw-table-for-each _%tab124957%_ _%proc124958%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124960%_ '1 '#f)
                (##vector-cas! _%lock124960%_ '0 '0 '1)))
            _%$r124980%_))))
    (define raw-table-copy
      (lambda (_%tab124953%_)
        (let ((_%new-tab124955%_ (##structure-copy _%tab124953%_)))
          (&raw-table-table-set!
           _%new-tab124955%_
           (vector-copy (&raw-table-table _%tab124953%_)))
          (&raw-table-lock-set!
           _%new-tab124955%_
           (ensure-lock (if (&raw-table-lock _%tab124953%_) '#t '#f)))
          _%new-tab124955%_)))
    (define raw-table-copy/lock
      (lambda (_%tab124926%_)
        (let ((_%lock124928%_ (&raw-table-lock _%tab124926%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124933%_ ((_%spin124936%_ '0))
              (if (##fx= (##vector-cas! _%lock124928%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124928%_ '1 (current-thread))
                  (if (##fx< _%spin124936%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124933%_ (##fx+ _%spin124936%_ '1)))
                      (let ((_%owner124942%_ (##vector-ref _%lock124928%_ '1)))
                        (if (eq? _%owner124942%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124942%_)
                                (let () (##thread-yield!) (_%again124933%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124948%_ (raw-table-copy _%tab124926%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124928%_ '1 '#f)
                (##vector-cas! _%lock124928%_ '0 '0 '1)))
            _%$r124948%_))))
    (define raw-table-new__%
      (lambda (_%tab124913%_ _%size-hint124914%_)
        (make-raw-table__%
         (if (eq? _%size-hint124914%_ '#t)
             (vector-length (&raw-table-table _%tab124913%_))
             _%size-hint124914%_)
         (&raw-table-hash _%tab124913%_)
         (&raw-table-test _%tab124913%_)
         (&raw-table-seed _%tab124913%_)
         (if (&raw-table-lock _%tab124913%_) '#t '#f))))
    (define raw-table-new__0
      (lambda (_%tab124919%_)
        (let ((_%size-hint124921%_ '#f))
          (raw-table-new__% _%tab124919%_ _%size-hint124921%_))))
    (define raw-table-new
      (lambda _g125348_
        (let ((_g125349_ (##length _g125348_)))
          (cond ((##fx= _g125349_ 1) (apply raw-table-new__0 _g125348_))
                ((##fx= _g125349_ 2) (apply raw-table-new__% _g125348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  raw-table-new
                  _g125348_))))))
    (define raw-table-clear!
      (lambda (_%tab124910%_)
        (vector-fill! (&raw-table-table _%tab124910%_) (macro-unused-obj))
        (&raw-table-count-set! _%tab124910%_ '0)
        (&raw-table-free-set!
         _%tab124910%_
         (##fxquotient (vector-length (&raw-table-table _%tab124910%_)) '2))))
    (define raw-table-clear!/lock
      (lambda (_%tab124883%_)
        (let ((_%lock124885%_ (&raw-table-lock _%tab124883%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124890%_ ((_%spin124893%_ '0))
              (if (##fx= (##vector-cas! _%lock124885%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124885%_ '1 (current-thread))
                  (if (##fx< _%spin124893%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124890%_ (##fx+ _%spin124893%_ '1)))
                      (let ((_%owner124899%_ (##vector-ref _%lock124885%_ '1)))
                        (if (eq? _%owner124899%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124899%_)
                                (let () (##thread-yield!) (_%again124890%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124905%_ (raw-table-clear! _%tab124883%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124885%_ '1 '#f)
                (##vector-cas! _%lock124885%_ '0 '0 '1)))
            _%$r124905%_))))
    (define __raw-table-set!
      (lambda (_%tab124833%_ _%key124834%_ _%value124835%_)
        (let ((_%table124837%_ (&raw-table-table _%tab124833%_))
              (_%seed124838%_ (&raw-table-seed _%tab124833%_))
              (_%hash124839%_ (&raw-table-hash _%tab124833%_))
              (_%test124840%_ (&raw-table-test _%tab124833%_)))
          (let* ((_%h124842%_
                  (fxxor (_%hash124839%_ _%key124834%_) _%seed124838%_))
                 (_%size124845%_ (vector-length _%table124837%_))
                 (_%entries124848%_ (##fxquotient _%size124845%_ '2))
                 (_%start124851%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124842%_ _%entries124848%_)
                   '1)))
            (let _%loop124855%_ ((_%probe124858%_ _%start124851%_)
                                 (_%i124860%_ '1)
                                 (_%deleted124862%_ '#f))
              (let ((_%k124865%_ (vector-ref _%table124837%_ _%probe124858%_)))
                (if (eq? _%k124865%_ (macro-unused-obj))
                    (if _%deleted124862%_
                        (begin
                          (vector-set!
                           _%table124837%_
                           _%deleted124862%_
                           _%key124834%_)
                          (vector-set!
                           _%table124837%_
                           (##fx+ _%deleted124862%_ '1)
                           _%value124835%_)
                          (&raw-table-count-set!
                           _%tab124833%_
                           (##fx+ (&raw-table-count _%tab124833%_) '1)))
                        (begin
                          (vector-set!
                           _%table124837%_
                           _%probe124858%_
                           _%key124834%_)
                          (vector-set!
                           _%table124837%_
                           (##fx+ _%probe124858%_ '1)
                           _%value124835%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124833%_
                             (##fx- (&raw-table-free _%tab124833%_) '1))
                            (&raw-table-count-set!
                             _%tab124833%_
                             (##fx+ (&raw-table-count _%tab124833%_) '1)))))
                    (if (eq? _%k124865%_ (macro-deleted-obj))
                        (_%loop124855%_
                         (let ((_%next-probe124872%_
                                (fx+ _%start124851%_
                                     _%i124860%_
                                     (fx* _%i124860%_ _%i124860%_))))
                           (##fxmodulo _%next-probe124872%_ _%size124845%_))
                         (##fx+ _%i124860%_ '1)
                         (let ((_%$e124875%_ _%deleted124862%_))
                           (if _%$e124875%_ _%$e124875%_ _%probe124858%_)))
                        (if (_%test124840%_ _%key124834%_ _%k124865%_)
                            (let ()
                              (vector-set!
                               _%table124837%_
                               _%probe124858%_
                               _%key124834%_)
                              (vector-set!
                               _%table124837%_
                               (##fx+ _%probe124858%_ '1)
                               _%value124835%_))
                            (_%loop124855%_
                             (let ((_%next-probe124880%_
                                    (fx+ _%start124851%_
                                         _%i124860%_
                                         (fx* _%i124860%_ _%i124860%_))))
                               (##fxmodulo
                                _%next-probe124880%_
                                _%size124845%_))
                             (##fx+ _%i124860%_ '1)
                             _%deleted124862%_))))))))))
    (define __raw-table-update!
      (lambda (_%tab124782%_ _%key124783%_ _%update124784%_ _%default124785%_)
        (let ((_%table124787%_ (&raw-table-table _%tab124782%_))
              (_%seed124788%_ (&raw-table-seed _%tab124782%_))
              (_%hash124789%_ (&raw-table-hash _%tab124782%_))
              (_%test124790%_ (&raw-table-test _%tab124782%_)))
          (let* ((_%h124792%_
                  (fxxor (_%hash124789%_ _%key124783%_) _%seed124788%_))
                 (_%size124795%_ (vector-length _%table124787%_))
                 (_%entries124798%_ (##fxquotient _%size124795%_ '2))
                 (_%start124801%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124792%_ _%entries124798%_)
                   '1)))
            (let _%loop124805%_ ((_%probe124808%_ _%start124801%_)
                                 (_%i124810%_ '1)
                                 (_%deleted124812%_ '#f))
              (let ((_%k124815%_ (vector-ref _%table124787%_ _%probe124808%_)))
                (if (eq? _%k124815%_ (macro-unused-obj))
                    (if _%deleted124812%_
                        (begin
                          (vector-set!
                           _%table124787%_
                           _%deleted124812%_
                           _%key124783%_)
                          (vector-set!
                           _%table124787%_
                           (##fx+ _%deleted124812%_ '1)
                           (_%update124784%_ _%default124785%_))
                          (&raw-table-count-set!
                           _%tab124782%_
                           (##fx+ (&raw-table-count _%tab124782%_) '1)))
                        (begin
                          (vector-set!
                           _%table124787%_
                           _%probe124808%_
                           _%key124783%_)
                          (vector-set!
                           _%table124787%_
                           (##fx+ _%probe124808%_ '1)
                           (_%update124784%_ _%default124785%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124782%_
                             (##fx- (&raw-table-free _%tab124782%_) '1))
                            (&raw-table-count-set!
                             _%tab124782%_
                             (##fx+ (&raw-table-count _%tab124782%_) '1)))))
                    (if (eq? _%k124815%_ (macro-deleted-obj))
                        (_%loop124805%_
                         (let ((_%next-probe124822%_
                                (fx+ _%start124801%_
                                     _%i124810%_
                                     (fx* _%i124810%_ _%i124810%_))))
                           (##fxmodulo _%next-probe124822%_ _%size124795%_))
                         (##fx+ _%i124810%_ '1)
                         (let ((_%$e124825%_ _%deleted124812%_))
                           (if _%$e124825%_ _%$e124825%_ _%probe124808%_)))
                        (if (_%test124790%_ _%key124783%_ _%k124815%_)
                            (let ()
                              (vector-set!
                               _%table124787%_
                               _%probe124808%_
                               _%key124783%_)
                              (vector-set!
                               _%table124787%_
                               (##fx+ _%probe124808%_ '1)
                               (_%update124784%_
                                (vector-ref
                                 _%table124787%_
                                 (##fx+ _%probe124808%_ '1)))))
                            (_%loop124805%_
                             (let ((_%next-probe124830%_
                                    (fx+ _%start124801%_
                                         _%i124810%_
                                         (fx* _%i124810%_ _%i124810%_))))
                               (##fxmodulo
                                _%next-probe124830%_
                                _%size124795%_))
                             (##fx+ _%i124810%_ '1)
                             _%deleted124812%_))))))))))
    (define __raw-table-rehash!
      (lambda (_%tab124763%_)
        (let* ((_%old-table124765%_ (&raw-table-table _%tab124763%_))
               (_%old-size124767%_ (vector-length _%old-table124765%_))
               (_%new-size124769%_
                (if (##fx< (&raw-table-count _%tab124763%_)
                           (##fxquotient _%old-size124767%_ '4))
                    (vector-length _%old-table124765%_)
                    (##fx* '2 (vector-length _%old-table124765%_))))
               (_%new-table124771%_
                (##make-vector _%new-size124769%_ (macro-unused-obj))))
          (&raw-table-table-set! _%tab124763%_ _%new-table124771%_)
          (&raw-table-count-set! _%tab124763%_ '0)
          (&raw-table-free-set!
           _%tab124763%_
           (##fxquotient _%new-size124769%_ '2))
          (let _%lp124774%_ ((_%i124776%_ '0))
            (if (##fx< _%i124776%_ _%old-size124767%_)
                (begin
                  (let ((_%key124778%_
                         (vector-ref _%old-table124765%_ _%i124776%_)))
                    (if (if (eq? _%key124778%_ (macro-unused-obj))
                            '#f
                            (not (eq? _%key124778%_ (macro-deleted-obj))))
                        (let ((_%value124780%_
                               (vector-ref
                                _%old-table124765%_
                                (##fx+ _%i124776%_ '1))))
                          (__raw-table-set!
                           _%tab124763%_
                           _%key124778%_
                           _%value124780%_))
                        '#!void))
                  (_%lp124774%_ (##fx+ _%i124776%_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_%obj124755%_)
        (let ((_%t124757%_ (##type _%obj124755%_)))
          (if (##fx= (##fxand _%t124757%_ '1) '0)
              (fxand (##type-cast _%obj124755%_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _%obj124755%_)
                  (##symbol-hash _%obj124755%_)
                  (if (procedure? _%obj124755%_)
                      (procedure-hash _%obj124755%_)
                      (fxand (__object->eq-hash _%obj124755%_)
                             (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_%obj124751%_)
        (let ((_%h124753%_
               (if (##closure? _%obj124751%_)
                   (__object->eq-hash _%obj124751%_)
                   (##type-cast _%obj124751%_ '0))))
          (fxand _%h124753%_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_%obj124749%_) (__object->eq-hash _%obj124749%_)))
    (define eqv-hash
      (lambda (_%obj124739%_)
        (letrec ((_%combine124741%_
                  (lambda (_%a124746%_ _%b124747%_)
                    (fxand (##fx* (##fx+ _%a124746%_
                                         (fxarithmetic-shift-left
                                          _%b124747%_
                                          '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_%hash124742%_
                  (lambda (_%obj124744%_)
                    (macro-number-dispatch
                     _%obj124744%_
                     (eq-hash _%obj124744%_)
                     (fxand _%obj124744%_ (macro-max-fixnum32))
                     (modulo _%obj124744%_ '331804481)
                     (_%combine124741%_
                      (_%hash124742%_ (macro-ratnum-numerator _%obj124744%_))
                      (_%hash124742%_
                       (macro-ratnum-denominator _%obj124744%_)))
                     (_%combine124741%_
                      (##u16vector-ref _%obj124744%_ '0)
                      (_%combine124741%_
                       (##u16vector-ref _%obj124744%_ '1)
                       (_%combine124741%_
                        (##u16vector-ref _%obj124744%_ '2)
                        (##u16vector-ref _%obj124744%_ '3))))
                     (_%combine124741%_
                      (_%hash124742%_ (macro-cpxnum-real _%obj124744%_))
                      (_%hash124742%_ (macro-cpxnum-imag _%obj124744%_)))))))
          (_%hash124742%_ _%obj124739%_))))
    (define symbolic?
      (lambda (_%obj124734%_)
        (let ((_%$e124736%_ (symbol? _%obj124734%_)))
          (if _%$e124736%_ _%$e124736%_ (keyword? _%obj124734%_)))))
    (define symbolic-hash
      (lambda (_%obj124732%_) (##symbol-hash _%obj124732%_)))
    (define string-hash
      (lambda (_%obj124730%_) (##string=?-hash _%obj124730%_)))
    (define immediate-hash
      (lambda (_%obj124728%_) (##type-cast _%obj124728%_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_%size-hint124710%_ _%seed124711%_)
        (make-raw-table__1 _%size-hint124710%_ eq-hash eq? _%seed124711%_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_%size-hint124717%_ '#f) (_%seed124719%_ '0))
          (make-eq-table__% _%size-hint124717%_ _%seed124719%_))))
    (define make-eq-table__1
      (lambda (_%size-hint124721%_)
        (let ((_%seed124723%_ '0))
          (make-eq-table__% _%size-hint124721%_ _%seed124723%_))))
    (define make-eq-table
      (lambda _g125350_
        (let ((_g125351_ (##length _g125350_)))
          (cond ((##fx= _g125351_ 0) (apply make-eq-table__0 _g125350_))
                ((##fx= _g125351_ 1) (apply make-eq-table__1 _g125350_))
                ((##fx= _g125351_ 2) (apply make-eq-table__% _g125350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g125350_))))))
    (define make-eq-table/lock__%
      (lambda (_%size-hint124690%_ _%seed124692%_)
        (make-raw-table/lock__%
         _%size-hint124690%_
         eq-hash
         eq?
         _%seed124692%_)))
    (define make-eq-table/lock__0
      (lambda ()
        (let* ((_%size-hint124698%_ '#f) (_%seed124700%_ '0))
          (make-eq-table/lock__% _%size-hint124698%_ _%seed124700%_))))
    (define make-eq-table/lock__1
      (lambda (_%size-hint124702%_)
        (let ((_%seed124704%_ '0))
          (make-eq-table/lock__% _%size-hint124702%_ _%seed124704%_))))
    (define make-eq-table/lock
      (lambda _g125352_
        (let ((_g125353_ (##length _g125352_)))
          (cond ((##fx= _g125353_ 0) (apply make-eq-table/lock__0 _g125352_))
                ((##fx= _g125353_ 1) (apply make-eq-table/lock__1 _g125352_))
                ((##fx= _g125353_ 2) (apply make-eq-table/lock__% _g125352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table/lock
                  _g125352_))))))
    (define eq-table-ref
      (lambda (_%tab124643%_ _%key124644%_ _%default124645%_)
        (let ((_%table124647%_ (&raw-table-table _%tab124643%_))
              (_%seed124648%_ (&raw-table-seed _%tab124643%_)))
          (let* ((_%h124650%_ (fxxor (eq-hash _%key124644%_) _%seed124648%_))
                 (_%size124653%_ (vector-length _%table124647%_))
                 (_%entries124656%_ (##fxquotient _%size124653%_ '2))
                 (_%start124659%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124650%_ _%entries124656%_)
                   '1)))
            (let _%loop124663%_ ((_%probe124666%_ _%start124659%_)
                                 (_%i124668%_ '1)
                                 (_%deleted124670%_ '#f))
              (let ((_%k124673%_ (vector-ref _%table124647%_ _%probe124666%_)))
                (if (eq? _%k124673%_ (macro-unused-obj))
                    _%default124645%_
                    (if (eq? _%k124673%_ (macro-deleted-obj))
                        (_%loop124663%_
                         (let ((_%next-probe124678%_
                                (fx+ _%start124659%_
                                     _%i124668%_
                                     (fx* _%i124668%_ _%i124668%_))))
                           (##fxmodulo _%next-probe124678%_ _%size124653%_))
                         (##fx+ _%i124668%_ '1)
                         (let ((_%$e124681%_ _%deleted124670%_))
                           (if _%$e124681%_ _%$e124681%_ _%probe124666%_)))
                        (if (eq? _%key124644%_ _%k124673%_)
                            (vector-ref
                             _%table124647%_
                             (##fx+ _%probe124666%_ '1))
                            (_%loop124663%_
                             (let ((_%next-probe124686%_
                                    (fx+ _%start124659%_
                                         _%i124668%_
                                         (fx* _%i124668%_ _%i124668%_))))
                               (##fxmodulo
                                _%next-probe124686%_
                                _%size124653%_))
                             (##fx+ _%i124668%_ '1)
                             _%deleted124670%_))))))))))
    (define eq-table-ref/lock
      (lambda (_%tab124614%_ _%key124615%_ _%default124616%_)
        (let ((_%lock124618%_ (&raw-table-lock _%tab124614%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124623%_ ((_%spin124626%_ '0))
              (if (##fx= (##vector-cas! _%lock124618%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124618%_ '1 (current-thread))
                  (if (##fx< _%spin124626%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124623%_ (##fx+ _%spin124626%_ '1)))
                      (let ((_%owner124632%_ (##vector-ref _%lock124618%_ '1)))
                        (if (eq? _%owner124632%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124632%_)
                                (let () (##thread-yield!) (_%again124623%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124638%_
                 (eq-table-ref _%tab124614%_ _%key124615%_ _%default124616%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124618%_ '1 '#f)
                (##vector-cas! _%lock124618%_ '0 '0 '1)))
            _%$r124638%_))))
    (define __eq-table-set!
      (lambda (_%tab124566%_ _%key124567%_ _%value124568%_)
        (let ((_%table124570%_ (&raw-table-table _%tab124566%_))
              (_%seed124571%_ (&raw-table-seed _%tab124566%_)))
          (let* ((_%h124573%_ (fxxor (eq-hash _%key124567%_) _%seed124571%_))
                 (_%size124576%_ (vector-length _%table124570%_))
                 (_%entries124579%_ (##fxquotient _%size124576%_ '2))
                 (_%start124582%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124573%_ _%entries124579%_)
                   '1)))
            (let _%loop124586%_ ((_%probe124589%_ _%start124582%_)
                                 (_%i124591%_ '1)
                                 (_%deleted124593%_ '#f))
              (let ((_%k124596%_ (vector-ref _%table124570%_ _%probe124589%_)))
                (if (eq? _%k124596%_ (macro-unused-obj))
                    (if _%deleted124593%_
                        (begin
                          (vector-set!
                           _%table124570%_
                           _%deleted124593%_
                           _%key124567%_)
                          (vector-set!
                           _%table124570%_
                           (##fx+ _%deleted124593%_ '1)
                           _%value124568%_)
                          (&raw-table-count-set!
                           _%tab124566%_
                           (##fx+ (&raw-table-count _%tab124566%_) '1)))
                        (begin
                          (vector-set!
                           _%table124570%_
                           _%probe124589%_
                           _%key124567%_)
                          (vector-set!
                           _%table124570%_
                           (##fx+ _%probe124589%_ '1)
                           _%value124568%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124566%_
                             (##fx- (&raw-table-free _%tab124566%_) '1))
                            (&raw-table-count-set!
                             _%tab124566%_
                             (##fx+ (&raw-table-count _%tab124566%_) '1)))))
                    (if (eq? _%k124596%_ (macro-deleted-obj))
                        (_%loop124586%_
                         (let ((_%next-probe124603%_
                                (fx+ _%start124582%_
                                     _%i124591%_
                                     (fx* _%i124591%_ _%i124591%_))))
                           (##fxmodulo _%next-probe124603%_ _%size124576%_))
                         (##fx+ _%i124591%_ '1)
                         (let ((_%$e124606%_ _%deleted124593%_))
                           (if _%$e124606%_ _%$e124606%_ _%probe124589%_)))
                        (if (eq? _%key124567%_ _%k124596%_)
                            (let ()
                              (vector-set!
                               _%table124570%_
                               _%probe124589%_
                               _%key124567%_)
                              (vector-set!
                               _%table124570%_
                               (##fx+ _%probe124589%_ '1)
                               _%value124568%_))
                            (_%loop124586%_
                             (let ((_%next-probe124611%_
                                    (fx+ _%start124582%_
                                         _%i124591%_
                                         (fx* _%i124591%_ _%i124591%_))))
                               (##fxmodulo
                                _%next-probe124611%_
                                _%size124576%_))
                             (##fx+ _%i124591%_ '1)
                             _%deleted124593%_))))))))))
    (define eq-table-set!
      (lambda (_%tab124562%_ _%key124563%_ _%value124564%_)
        (if (##fx< (&raw-table-free _%tab124562%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124562%_))
                    '4))
            (__raw-table-rehash! _%tab124562%_)
            '#!void)
        (__eq-table-set! _%tab124562%_ _%key124563%_ _%value124564%_)))
    (define eq-table-set!/lock
      (lambda (_%tab124532%_ _%key124533%_ _%value124534%_)
        (let ((_%lock124537%_ (&raw-table-lock _%tab124532%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124542%_ ((_%spin124545%_ '0))
              (if (##fx= (##vector-cas! _%lock124537%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124537%_ '1 (current-thread))
                  (if (##fx< _%spin124545%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124542%_ (##fx+ _%spin124545%_ '1)))
                      (let ((_%owner124551%_ (##vector-ref _%lock124537%_ '1)))
                        (if (eq? _%owner124551%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124551%_)
                                (let () (##thread-yield!) (_%again124542%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124557%_
                 (eq-table-set! _%tab124532%_ _%key124533%_ _%value124534%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124537%_ '1 '#f)
                (##vector-cas! _%lock124537%_ '0 '0 '1)))
            _%$r124557%_))))
    (define __eq-table-update!
      (lambda (_%tab124483%_
               _%key124484%_
               _%eq-table-update!124485%_
               _%default124486%_)
        (let ((_%table124488%_ (&raw-table-table _%tab124483%_))
              (_%seed124489%_ (&raw-table-seed _%tab124483%_)))
          (let* ((_%h124491%_ (fxxor (eq-hash _%key124484%_) _%seed124489%_))
                 (_%size124494%_ (vector-length _%table124488%_))
                 (_%entries124497%_ (##fxquotient _%size124494%_ '2))
                 (_%start124500%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124491%_ _%entries124497%_)
                   '1)))
            (let _%loop124504%_ ((_%probe124507%_ _%start124500%_)
                                 (_%i124509%_ '1)
                                 (_%deleted124511%_ '#f))
              (let ((_%k124514%_ (vector-ref _%table124488%_ _%probe124507%_)))
                (if (eq? _%k124514%_ (macro-unused-obj))
                    (if _%deleted124511%_
                        (begin
                          (vector-set!
                           _%table124488%_
                           _%deleted124511%_
                           _%key124484%_)
                          (vector-set!
                           _%table124488%_
                           (##fx+ _%deleted124511%_ '1)
                           (_%eq-table-update!124485%_ _%default124486%_))
                          (&raw-table-count-set!
                           _%tab124483%_
                           (##fx+ (&raw-table-count _%tab124483%_) '1)))
                        (begin
                          (vector-set!
                           _%table124488%_
                           _%probe124507%_
                           _%key124484%_)
                          (vector-set!
                           _%table124488%_
                           (##fx+ _%probe124507%_ '1)
                           (_%eq-table-update!124485%_ _%default124486%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124483%_
                             (##fx- (&raw-table-free _%tab124483%_) '1))
                            (&raw-table-count-set!
                             _%tab124483%_
                             (##fx+ (&raw-table-count _%tab124483%_) '1)))))
                    (if (eq? _%k124514%_ (macro-deleted-obj))
                        (_%loop124504%_
                         (let ((_%next-probe124521%_
                                (fx+ _%start124500%_
                                     _%i124509%_
                                     (fx* _%i124509%_ _%i124509%_))))
                           (##fxmodulo _%next-probe124521%_ _%size124494%_))
                         (##fx+ _%i124509%_ '1)
                         (let ((_%$e124524%_ _%deleted124511%_))
                           (if _%$e124524%_ _%$e124524%_ _%probe124507%_)))
                        (if (eq? _%key124484%_ _%k124514%_)
                            (let ()
                              (vector-set!
                               _%table124488%_
                               _%probe124507%_
                               _%key124484%_)
                              (vector-set!
                               _%table124488%_
                               (##fx+ _%probe124507%_ '1)
                               (_%eq-table-update!124485%_
                                (vector-ref
                                 _%table124488%_
                                 (##fx+ _%probe124507%_ '1)))))
                            (_%loop124504%_
                             (let ((_%next-probe124529%_
                                    (fx+ _%start124500%_
                                         _%i124509%_
                                         (fx* _%i124509%_ _%i124509%_))))
                               (##fxmodulo
                                _%next-probe124529%_
                                _%size124494%_))
                             (##fx+ _%i124509%_ '1)
                             _%deleted124511%_))))))))))
    (define eq-table-update!
      (lambda (_%tab124478%_
               _%key124479%_
               _%eq-table-update!124480%_
               _%default124481%_)
        (if (##fx< (&raw-table-free _%tab124478%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124478%_))
                    '4))
            (__raw-table-rehash! _%tab124478%_)
            '#!void)
        (__eq-table-update!
         _%tab124478%_
         _%key124479%_
         _%eq-table-update!124480%_
         _%default124481%_)))
    (define eq-table-update!/lock
      (lambda (_%tab124447%_
               _%key124448%_
               _%eq-table-update!124449%_
               _%default124450%_)
        (let ((_%lock124453%_ (&raw-table-lock _%tab124447%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124458%_ ((_%spin124461%_ '0))
              (if (##fx= (##vector-cas! _%lock124453%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124453%_ '1 (current-thread))
                  (if (##fx< _%spin124461%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124458%_ (##fx+ _%spin124461%_ '1)))
                      (let ((_%owner124467%_ (##vector-ref _%lock124453%_ '1)))
                        (if (eq? _%owner124467%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124467%_)
                                (let () (##thread-yield!) (_%again124458%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124473%_
                 (_%eq-table-update!124449%_
                  _%tab124447%_
                  _%key124448%_
                  _%eq-table-update!124449%_
                  _%default124450%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124453%_ '1 '#f)
                (##vector-cas! _%lock124453%_ '0 '0 '1)))
            _%$r124473%_))))
    (define eq-table-delete!
      (lambda (_%tab124404%_ _%key124405%_)
        (let ((_%table124407%_ (&raw-table-table _%tab124404%_))
              (_%seed124409%_ (&raw-table-seed _%tab124404%_)))
          (let* ((_%h124412%_ (fxxor (eq-hash _%key124405%_) _%seed124409%_))
                 (_%size124415%_ (vector-length _%table124407%_))
                 (_%entries124418%_ (##fxquotient _%size124415%_ '2))
                 (_%start124421%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124412%_ _%entries124418%_)
                   '1)))
            (let _%loop124425%_ ((_%probe124428%_ _%start124421%_)
                                 (_%i124430%_ '1))
              (let ((_%k124433%_ (vector-ref _%table124407%_ _%probe124428%_)))
                (if (eq? _%k124433%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124433%_ (macro-deleted-obj))
                        (_%loop124425%_
                         (let ((_%next-probe124438%_
                                (fx+ _%start124421%_
                                     _%i124430%_
                                     (fx* _%i124430%_ _%i124430%_))))
                           (##fxmodulo _%next-probe124438%_ _%size124415%_))
                         (##fx+ _%i124430%_ '1))
                        (if (eq? _%key124405%_ _%k124433%_)
                            (let ()
                              (vector-set!
                               _%table124407%_
                               _%probe124428%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124407%_
                               (##fx+ _%probe124428%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124404%_
                               (##fx- (&raw-table-count _%tab124404%_) '1)))
                            (_%loop124425%_
                             (let ((_%next-probe124444%_
                                    (fx+ _%start124421%_
                                         _%i124430%_
                                         (fx* _%i124430%_ _%i124430%_))))
                               (##fxmodulo
                                _%next-probe124444%_
                                _%size124415%_))
                             (##fx+ _%i124430%_ '1)))))))))))
    (define eq-table-delete!/lock
      (lambda (_%tab124374%_ _%key124376%_)
        (let ((_%lock124379%_ (&raw-table-lock _%tab124374%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124384%_ ((_%spin124387%_ '0))
              (if (##fx= (##vector-cas! _%lock124379%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124379%_ '1 (current-thread))
                  (if (##fx< _%spin124387%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124384%_ (##fx+ _%spin124387%_ '1)))
                      (let ((_%owner124393%_ (##vector-ref _%lock124379%_ '1)))
                        (if (eq? _%owner124393%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124393%_)
                                (let () (##thread-yield!) (_%again124384%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124399%_ (eq-table-delete! _%tab124374%_ _%key124376%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124379%_ '1 '#f)
                (##vector-cas! _%lock124379%_ '0 '0 '1)))
            _%$r124399%_))))
    (define make-eqv-table__%
      (lambda (_%size-hint124356%_ _%seed124357%_)
        (make-raw-table__1 _%size-hint124356%_ eqv-hash eqv? _%seed124357%_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_%size-hint124363%_ '#f) (_%seed124365%_ '0))
          (make-eqv-table__% _%size-hint124363%_ _%seed124365%_))))
    (define make-eqv-table__1
      (lambda (_%size-hint124367%_)
        (let ((_%seed124369%_ '0))
          (make-eqv-table__% _%size-hint124367%_ _%seed124369%_))))
    (define make-eqv-table
      (lambda _g125354_
        (let ((_g125355_ (##length _g125354_)))
          (cond ((##fx= _g125355_ 0) (apply make-eqv-table__0 _g125354_))
                ((##fx= _g125355_ 1) (apply make-eqv-table__1 _g125354_))
                ((##fx= _g125355_ 2) (apply make-eqv-table__% _g125354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g125354_))))))
    (define make-eqv-table/lock__%
      (lambda (_%size-hint124336%_ _%seed124338%_)
        (make-raw-table/lock__%
         _%size-hint124336%_
         eqv-hash
         eqv?
         _%seed124338%_)))
    (define make-eqv-table/lock__0
      (lambda ()
        (let* ((_%size-hint124344%_ '#f) (_%seed124346%_ '0))
          (make-eqv-table/lock__% _%size-hint124344%_ _%seed124346%_))))
    (define make-eqv-table/lock__1
      (lambda (_%size-hint124348%_)
        (let ((_%seed124350%_ '0))
          (make-eqv-table/lock__% _%size-hint124348%_ _%seed124350%_))))
    (define make-eqv-table/lock
      (lambda _g125356_
        (let ((_g125357_ (##length _g125356_)))
          (cond ((##fx= _g125357_ 0) (apply make-eqv-table/lock__0 _g125356_))
                ((##fx= _g125357_ 1) (apply make-eqv-table/lock__1 _g125356_))
                ((##fx= _g125357_ 2) (apply make-eqv-table/lock__% _g125356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table/lock
                  _g125356_))))))
    (define eqv-table-ref
      (lambda (_%tab124289%_ _%key124290%_ _%default124291%_)
        (let ((_%table124293%_ (&raw-table-table _%tab124289%_))
              (_%seed124294%_ (&raw-table-seed _%tab124289%_)))
          (let* ((_%h124296%_ (fxxor (eqv-hash _%key124290%_) _%seed124294%_))
                 (_%size124299%_ (vector-length _%table124293%_))
                 (_%entries124302%_ (##fxquotient _%size124299%_ '2))
                 (_%start124305%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124296%_ _%entries124302%_)
                   '1)))
            (let _%loop124309%_ ((_%probe124312%_ _%start124305%_)
                                 (_%i124314%_ '1)
                                 (_%deleted124316%_ '#f))
              (let ((_%k124319%_ (vector-ref _%table124293%_ _%probe124312%_)))
                (if (eq? _%k124319%_ (macro-unused-obj))
                    _%default124291%_
                    (if (eq? _%k124319%_ (macro-deleted-obj))
                        (_%loop124309%_
                         (let ((_%next-probe124324%_
                                (fx+ _%start124305%_
                                     _%i124314%_
                                     (fx* _%i124314%_ _%i124314%_))))
                           (##fxmodulo _%next-probe124324%_ _%size124299%_))
                         (##fx+ _%i124314%_ '1)
                         (let ((_%$e124327%_ _%deleted124316%_))
                           (if _%$e124327%_ _%$e124327%_ _%probe124312%_)))
                        (if (eqv? _%key124290%_ _%k124319%_)
                            (vector-ref
                             _%table124293%_
                             (##fx+ _%probe124312%_ '1))
                            (_%loop124309%_
                             (let ((_%next-probe124332%_
                                    (fx+ _%start124305%_
                                         _%i124314%_
                                         (fx* _%i124314%_ _%i124314%_))))
                               (##fxmodulo
                                _%next-probe124332%_
                                _%size124299%_))
                             (##fx+ _%i124314%_ '1)
                             _%deleted124316%_))))))))))
    (define eqv-table-ref/lock
      (lambda (_%tab124260%_ _%key124261%_ _%default124262%_)
        (let ((_%lock124264%_ (&raw-table-lock _%tab124260%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124269%_ ((_%spin124272%_ '0))
              (if (##fx= (##vector-cas! _%lock124264%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124264%_ '1 (current-thread))
                  (if (##fx< _%spin124272%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124269%_ (##fx+ _%spin124272%_ '1)))
                      (let ((_%owner124278%_ (##vector-ref _%lock124264%_ '1)))
                        (if (eq? _%owner124278%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124278%_)
                                (let () (##thread-yield!) (_%again124269%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124284%_
                 (eqv-table-ref
                  _%tab124260%_
                  _%key124261%_
                  _%default124262%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124264%_ '1 '#f)
                (##vector-cas! _%lock124264%_ '0 '0 '1)))
            _%$r124284%_))))
    (define __eqv-table-set!
      (lambda (_%tab124212%_ _%key124213%_ _%value124214%_)
        (let ((_%table124216%_ (&raw-table-table _%tab124212%_))
              (_%seed124217%_ (&raw-table-seed _%tab124212%_)))
          (let* ((_%h124219%_ (fxxor (eqv-hash _%key124213%_) _%seed124217%_))
                 (_%size124222%_ (vector-length _%table124216%_))
                 (_%entries124225%_ (##fxquotient _%size124222%_ '2))
                 (_%start124228%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124219%_ _%entries124225%_)
                   '1)))
            (let _%loop124232%_ ((_%probe124235%_ _%start124228%_)
                                 (_%i124237%_ '1)
                                 (_%deleted124239%_ '#f))
              (let ((_%k124242%_ (vector-ref _%table124216%_ _%probe124235%_)))
                (if (eq? _%k124242%_ (macro-unused-obj))
                    (if _%deleted124239%_
                        (begin
                          (vector-set!
                           _%table124216%_
                           _%deleted124239%_
                           _%key124213%_)
                          (vector-set!
                           _%table124216%_
                           (##fx+ _%deleted124239%_ '1)
                           _%value124214%_)
                          (&raw-table-count-set!
                           _%tab124212%_
                           (##fx+ (&raw-table-count _%tab124212%_) '1)))
                        (begin
                          (vector-set!
                           _%table124216%_
                           _%probe124235%_
                           _%key124213%_)
                          (vector-set!
                           _%table124216%_
                           (##fx+ _%probe124235%_ '1)
                           _%value124214%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab124212%_
                             (##fx- (&raw-table-free _%tab124212%_) '1))
                            (&raw-table-count-set!
                             _%tab124212%_
                             (##fx+ (&raw-table-count _%tab124212%_) '1)))))
                    (if (eq? _%k124242%_ (macro-deleted-obj))
                        (_%loop124232%_
                         (let ((_%next-probe124249%_
                                (fx+ _%start124228%_
                                     _%i124237%_
                                     (fx* _%i124237%_ _%i124237%_))))
                           (##fxmodulo _%next-probe124249%_ _%size124222%_))
                         (##fx+ _%i124237%_ '1)
                         (let ((_%$e124252%_ _%deleted124239%_))
                           (if _%$e124252%_ _%$e124252%_ _%probe124235%_)))
                        (if (eqv? _%key124213%_ _%k124242%_)
                            (let ()
                              (vector-set!
                               _%table124216%_
                               _%probe124235%_
                               _%key124213%_)
                              (vector-set!
                               _%table124216%_
                               (##fx+ _%probe124235%_ '1)
                               _%value124214%_))
                            (_%loop124232%_
                             (let ((_%next-probe124257%_
                                    (fx+ _%start124228%_
                                         _%i124237%_
                                         (fx* _%i124237%_ _%i124237%_))))
                               (##fxmodulo
                                _%next-probe124257%_
                                _%size124222%_))
                             (##fx+ _%i124237%_ '1)
                             _%deleted124239%_))))))))))
    (define eqv-table-set!
      (lambda (_%tab124208%_ _%key124209%_ _%value124210%_)
        (if (##fx< (&raw-table-free _%tab124208%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124208%_))
                    '4))
            (__raw-table-rehash! _%tab124208%_)
            '#!void)
        (__eqv-table-set! _%tab124208%_ _%key124209%_ _%value124210%_)))
    (define eqv-table-set!/lock
      (lambda (_%tab124178%_ _%key124179%_ _%value124180%_)
        (let ((_%lock124183%_ (&raw-table-lock _%tab124178%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124188%_ ((_%spin124191%_ '0))
              (if (##fx= (##vector-cas! _%lock124183%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124183%_ '1 (current-thread))
                  (if (##fx< _%spin124191%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124188%_ (##fx+ _%spin124191%_ '1)))
                      (let ((_%owner124197%_ (##vector-ref _%lock124183%_ '1)))
                        (if (eq? _%owner124197%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124197%_)
                                (let () (##thread-yield!) (_%again124188%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124203%_
                 (eqv-table-set! _%tab124178%_ _%key124179%_ _%value124180%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124183%_ '1 '#f)
                (##vector-cas! _%lock124183%_ '0 '0 '1)))
            _%$r124203%_))))
    (define __eqv-table-update!
      (lambda (_%tab124129%_
               _%key124130%_
               _%eqv-table-update!124131%_
               _%default124132%_)
        (let ((_%table124134%_ (&raw-table-table _%tab124129%_))
              (_%seed124135%_ (&raw-table-seed _%tab124129%_)))
          (let* ((_%h124137%_ (fxxor (eqv-hash _%key124130%_) _%seed124135%_))
                 (_%size124140%_ (vector-length _%table124134%_))
                 (_%entries124143%_ (##fxquotient _%size124140%_ '2))
                 (_%start124146%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124137%_ _%entries124143%_)
                   '1)))
            (let _%loop124150%_ ((_%probe124153%_ _%start124146%_)
                                 (_%i124155%_ '1)
                                 (_%deleted124157%_ '#f))
              (let ((_%k124160%_ (vector-ref _%table124134%_ _%probe124153%_)))
                (if (eq? _%k124160%_ (macro-unused-obj))
                    (if _%deleted124157%_
                        (begin
                          (vector-set!
                           _%table124134%_
                           _%deleted124157%_
                           _%key124130%_)
                          (vector-set!
                           _%table124134%_
                           (##fx+ _%deleted124157%_ '1)
                           (_%eqv-table-update!124131%_ _%default124132%_))
                          (&raw-table-count-set!
                           _%tab124129%_
                           (##fx+ (&raw-table-count _%tab124129%_) '1)))
                        (begin
                          (vector-set!
                           _%table124134%_
                           _%probe124153%_
                           _%key124130%_)
                          (vector-set!
                           _%table124134%_
                           (##fx+ _%probe124153%_ '1)
                           (_%eqv-table-update!124131%_ _%default124132%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab124129%_
                             (##fx- (&raw-table-free _%tab124129%_) '1))
                            (&raw-table-count-set!
                             _%tab124129%_
                             (##fx+ (&raw-table-count _%tab124129%_) '1)))))
                    (if (eq? _%k124160%_ (macro-deleted-obj))
                        (_%loop124150%_
                         (let ((_%next-probe124167%_
                                (fx+ _%start124146%_
                                     _%i124155%_
                                     (fx* _%i124155%_ _%i124155%_))))
                           (##fxmodulo _%next-probe124167%_ _%size124140%_))
                         (##fx+ _%i124155%_ '1)
                         (let ((_%$e124170%_ _%deleted124157%_))
                           (if _%$e124170%_ _%$e124170%_ _%probe124153%_)))
                        (if (eqv? _%key124130%_ _%k124160%_)
                            (let ()
                              (vector-set!
                               _%table124134%_
                               _%probe124153%_
                               _%key124130%_)
                              (vector-set!
                               _%table124134%_
                               (##fx+ _%probe124153%_ '1)
                               (_%eqv-table-update!124131%_
                                (vector-ref
                                 _%table124134%_
                                 (##fx+ _%probe124153%_ '1)))))
                            (_%loop124150%_
                             (let ((_%next-probe124175%_
                                    (fx+ _%start124146%_
                                         _%i124155%_
                                         (fx* _%i124155%_ _%i124155%_))))
                               (##fxmodulo
                                _%next-probe124175%_
                                _%size124140%_))
                             (##fx+ _%i124155%_ '1)
                             _%deleted124157%_))))))))))
    (define eqv-table-update!
      (lambda (_%tab124124%_
               _%key124125%_
               _%eqv-table-update!124126%_
               _%default124127%_)
        (if (##fx< (&raw-table-free _%tab124124%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab124124%_))
                    '4))
            (__raw-table-rehash! _%tab124124%_)
            '#!void)
        (__eqv-table-update!
         _%tab124124%_
         _%key124125%_
         _%eqv-table-update!124126%_
         _%default124127%_)))
    (define eqv-table-update!/lock
      (lambda (_%tab124093%_
               _%key124094%_
               _%eqv-table-update!124095%_
               _%default124096%_)
        (let ((_%lock124099%_ (&raw-table-lock _%tab124093%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124104%_ ((_%spin124107%_ '0))
              (if (##fx= (##vector-cas! _%lock124099%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124099%_ '1 (current-thread))
                  (if (##fx< _%spin124107%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124104%_ (##fx+ _%spin124107%_ '1)))
                      (let ((_%owner124113%_ (##vector-ref _%lock124099%_ '1)))
                        (if (eq? _%owner124113%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124113%_)
                                (let () (##thread-yield!) (_%again124104%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124119%_
                 (_%eqv-table-update!124095%_
                  _%tab124093%_
                  _%key124094%_
                  _%eqv-table-update!124095%_
                  _%default124096%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124099%_ '1 '#f)
                (##vector-cas! _%lock124099%_ '0 '0 '1)))
            _%$r124119%_))))
    (define eqv-table-delete!
      (lambda (_%tab124050%_ _%key124051%_)
        (let ((_%table124053%_ (&raw-table-table _%tab124050%_))
              (_%seed124055%_ (&raw-table-seed _%tab124050%_)))
          (let* ((_%h124058%_ (fxxor (eqv-hash _%key124051%_) _%seed124055%_))
                 (_%size124061%_ (vector-length _%table124053%_))
                 (_%entries124064%_ (##fxquotient _%size124061%_ '2))
                 (_%start124067%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h124058%_ _%entries124064%_)
                   '1)))
            (let _%loop124071%_ ((_%probe124074%_ _%start124067%_)
                                 (_%i124076%_ '1))
              (let ((_%k124079%_ (vector-ref _%table124053%_ _%probe124074%_)))
                (if (eq? _%k124079%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k124079%_ (macro-deleted-obj))
                        (_%loop124071%_
                         (let ((_%next-probe124084%_
                                (fx+ _%start124067%_
                                     _%i124076%_
                                     (fx* _%i124076%_ _%i124076%_))))
                           (##fxmodulo _%next-probe124084%_ _%size124061%_))
                         (##fx+ _%i124076%_ '1))
                        (if (eqv? _%key124051%_ _%k124079%_)
                            (let ()
                              (vector-set!
                               _%table124053%_
                               _%probe124074%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table124053%_
                               (##fx+ _%probe124074%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab124050%_
                               (##fx- (&raw-table-count _%tab124050%_) '1)))
                            (_%loop124071%_
                             (let ((_%next-probe124090%_
                                    (fx+ _%start124067%_
                                         _%i124076%_
                                         (fx* _%i124076%_ _%i124076%_))))
                               (##fxmodulo
                                _%next-probe124090%_
                                _%size124061%_))
                             (##fx+ _%i124076%_ '1)))))))))))
    (define eqv-table-delete!/lock
      (lambda (_%tab124020%_ _%key124022%_)
        (let ((_%lock124025%_ (&raw-table-lock _%tab124020%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again124030%_ ((_%spin124033%_ '0))
              (if (##fx= (##vector-cas! _%lock124025%_ '0 '1 '0) '0)
                  (##vector-set! _%lock124025%_ '1 (current-thread))
                  (if (##fx< _%spin124033%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again124030%_ (##fx+ _%spin124033%_ '1)))
                      (let ((_%owner124039%_ (##vector-ref _%lock124025%_ '1)))
                        (if (eq? _%owner124039%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner124039%_)
                                (let () (##thread-yield!) (_%again124030%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r124045%_ (eqv-table-delete! _%tab124020%_ _%key124022%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock124025%_ '1 '#f)
                (##vector-cas! _%lock124025%_ '0 '0 '1)))
            _%$r124045%_))))
    (define make-symbolic-table__%
      (lambda (_%size-hint124002%_ _%seed124003%_)
        (make-raw-table__1
         _%size-hint124002%_
         symbolic-hash
         eq?
         _%seed124003%_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_%size-hint124009%_ '#f) (_%seed124011%_ '0))
          (make-symbolic-table__% _%size-hint124009%_ _%seed124011%_))))
    (define make-symbolic-table__1
      (lambda (_%size-hint124013%_)
        (let ((_%seed124015%_ '0))
          (make-symbolic-table__% _%size-hint124013%_ _%seed124015%_))))
    (define make-symbolic-table
      (lambda _g125358_
        (let ((_g125359_ (##length _g125358_)))
          (cond ((##fx= _g125359_ 0) (apply make-symbolic-table__0 _g125358_))
                ((##fx= _g125359_ 1) (apply make-symbolic-table__1 _g125358_))
                ((##fx= _g125359_ 2) (apply make-symbolic-table__% _g125358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g125358_))))))
    (define make-symbolic-table/lock__%
      (lambda (_%size-hint123982%_ _%seed123984%_)
        (make-raw-table/lock__%
         _%size-hint123982%_
         symbolic-hash
         eq?
         _%seed123984%_)))
    (define make-symbolic-table/lock__0
      (lambda ()
        (let* ((_%size-hint123990%_ '#f) (_%seed123992%_ '0))
          (make-symbolic-table/lock__% _%size-hint123990%_ _%seed123992%_))))
    (define make-symbolic-table/lock__1
      (lambda (_%size-hint123994%_)
        (let ((_%seed123996%_ '0))
          (make-symbolic-table/lock__% _%size-hint123994%_ _%seed123996%_))))
    (define make-symbolic-table/lock
      (lambda _g125360_
        (let ((_g125361_ (##length _g125360_)))
          (cond ((##fx= _g125361_ 0)
                 (apply make-symbolic-table/lock__0 _g125360_))
                ((##fx= _g125361_ 1)
                 (apply make-symbolic-table/lock__1 _g125360_))
                ((##fx= _g125361_ 2)
                 (apply make-symbolic-table/lock__% _g125360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table/lock
                  _g125360_))))))
    (define symbolic-table-ref
      (lambda (_%tab123935%_ _%key123936%_ _%default123937%_)
        (let ((_%table123939%_ (&raw-table-table _%tab123935%_))
              (_%seed123940%_ (&raw-table-seed _%tab123935%_)))
          (let* ((_%h123942%_
                  (fxxor (##symbol-hash _%key123936%_) _%seed123940%_))
                 (_%size123945%_ (vector-length _%table123939%_))
                 (_%entries123948%_ (##fxquotient _%size123945%_ '2))
                 (_%start123951%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123942%_ _%entries123948%_)
                   '1)))
            (let _%loop123955%_ ((_%probe123958%_ _%start123951%_)
                                 (_%i123960%_ '1)
                                 (_%deleted123962%_ '#f))
              (let ((_%k123965%_ (vector-ref _%table123939%_ _%probe123958%_)))
                (if (eq? _%k123965%_ (macro-unused-obj))
                    _%default123937%_
                    (if (eq? _%k123965%_ (macro-deleted-obj))
                        (_%loop123955%_
                         (let ((_%next-probe123970%_
                                (fx+ _%start123951%_
                                     _%i123960%_
                                     (fx* _%i123960%_ _%i123960%_))))
                           (##fxmodulo _%next-probe123970%_ _%size123945%_))
                         (##fx+ _%i123960%_ '1)
                         (let ((_%$e123973%_ _%deleted123962%_))
                           (if _%$e123973%_ _%$e123973%_ _%probe123958%_)))
                        (if (eq? _%key123936%_ _%k123965%_)
                            (vector-ref
                             _%table123939%_
                             (##fx+ _%probe123958%_ '1))
                            (_%loop123955%_
                             (let ((_%next-probe123978%_
                                    (fx+ _%start123951%_
                                         _%i123960%_
                                         (fx* _%i123960%_ _%i123960%_))))
                               (##fxmodulo
                                _%next-probe123978%_
                                _%size123945%_))
                             (##fx+ _%i123960%_ '1)
                             _%deleted123962%_))))))))))
    (define symbolic-table-ref/lock
      (lambda (_%tab123906%_ _%key123907%_ _%default123908%_)
        (let ((_%lock123910%_ (&raw-table-lock _%tab123906%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123915%_ ((_%spin123918%_ '0))
              (if (##fx= (##vector-cas! _%lock123910%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123910%_ '1 (current-thread))
                  (if (##fx< _%spin123918%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123915%_ (##fx+ _%spin123918%_ '1)))
                      (let ((_%owner123924%_ (##vector-ref _%lock123910%_ '1)))
                        (if (eq? _%owner123924%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123924%_)
                                (let () (##thread-yield!) (_%again123915%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123930%_
                 (symbolic-table-ref
                  _%tab123906%_
                  _%key123907%_
                  _%default123908%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123910%_ '1 '#f)
                (##vector-cas! _%lock123910%_ '0 '0 '1)))
            _%$r123930%_))))
    (define __symbolic-table-set!
      (lambda (_%tab123858%_ _%key123859%_ _%value123860%_)
        (let ((_%table123862%_ (&raw-table-table _%tab123858%_))
              (_%seed123863%_ (&raw-table-seed _%tab123858%_)))
          (let* ((_%h123865%_
                  (fxxor (##symbol-hash _%key123859%_) _%seed123863%_))
                 (_%size123868%_ (vector-length _%table123862%_))
                 (_%entries123871%_ (##fxquotient _%size123868%_ '2))
                 (_%start123874%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123865%_ _%entries123871%_)
                   '1)))
            (let _%loop123878%_ ((_%probe123881%_ _%start123874%_)
                                 (_%i123883%_ '1)
                                 (_%deleted123885%_ '#f))
              (let ((_%k123888%_ (vector-ref _%table123862%_ _%probe123881%_)))
                (if (eq? _%k123888%_ (macro-unused-obj))
                    (if _%deleted123885%_
                        (begin
                          (vector-set!
                           _%table123862%_
                           _%deleted123885%_
                           _%key123859%_)
                          (vector-set!
                           _%table123862%_
                           (##fx+ _%deleted123885%_ '1)
                           _%value123860%_)
                          (&raw-table-count-set!
                           _%tab123858%_
                           (##fx+ (&raw-table-count _%tab123858%_) '1)))
                        (begin
                          (vector-set!
                           _%table123862%_
                           _%probe123881%_
                           _%key123859%_)
                          (vector-set!
                           _%table123862%_
                           (##fx+ _%probe123881%_ '1)
                           _%value123860%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab123858%_
                             (##fx- (&raw-table-free _%tab123858%_) '1))
                            (&raw-table-count-set!
                             _%tab123858%_
                             (##fx+ (&raw-table-count _%tab123858%_) '1)))))
                    (if (eq? _%k123888%_ (macro-deleted-obj))
                        (_%loop123878%_
                         (let ((_%next-probe123895%_
                                (fx+ _%start123874%_
                                     _%i123883%_
                                     (fx* _%i123883%_ _%i123883%_))))
                           (##fxmodulo _%next-probe123895%_ _%size123868%_))
                         (##fx+ _%i123883%_ '1)
                         (let ((_%$e123898%_ _%deleted123885%_))
                           (if _%$e123898%_ _%$e123898%_ _%probe123881%_)))
                        (if (eq? _%key123859%_ _%k123888%_)
                            (let ()
                              (vector-set!
                               _%table123862%_
                               _%probe123881%_
                               _%key123859%_)
                              (vector-set!
                               _%table123862%_
                               (##fx+ _%probe123881%_ '1)
                               _%value123860%_))
                            (_%loop123878%_
                             (let ((_%next-probe123903%_
                                    (fx+ _%start123874%_
                                         _%i123883%_
                                         (fx* _%i123883%_ _%i123883%_))))
                               (##fxmodulo
                                _%next-probe123903%_
                                _%size123868%_))
                             (##fx+ _%i123883%_ '1)
                             _%deleted123885%_))))))))))
    (define symbolic-table-set!
      (lambda (_%tab123854%_ _%key123855%_ _%value123856%_)
        (if (##fx< (&raw-table-free _%tab123854%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123854%_))
                    '4))
            (__raw-table-rehash! _%tab123854%_)
            '#!void)
        (__symbolic-table-set! _%tab123854%_ _%key123855%_ _%value123856%_)))
    (define symbolic-table-set!/lock
      (lambda (_%tab123824%_ _%key123825%_ _%value123826%_)
        (let ((_%lock123829%_ (&raw-table-lock _%tab123824%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123834%_ ((_%spin123837%_ '0))
              (if (##fx= (##vector-cas! _%lock123829%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123829%_ '1 (current-thread))
                  (if (##fx< _%spin123837%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123834%_ (##fx+ _%spin123837%_ '1)))
                      (let ((_%owner123843%_ (##vector-ref _%lock123829%_ '1)))
                        (if (eq? _%owner123843%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123843%_)
                                (let () (##thread-yield!) (_%again123834%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123849%_
                 (symbolic-table-set!
                  _%tab123824%_
                  _%key123825%_
                  _%value123826%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123829%_ '1 '#f)
                (##vector-cas! _%lock123829%_ '0 '0 '1)))
            _%$r123849%_))))
    (define __symbolic-table-update!
      (lambda (_%tab123775%_
               _%key123776%_
               _%symbolic-table-update!123777%_
               _%default123778%_)
        (let ((_%table123780%_ (&raw-table-table _%tab123775%_))
              (_%seed123781%_ (&raw-table-seed _%tab123775%_)))
          (let* ((_%h123783%_
                  (fxxor (##symbol-hash _%key123776%_) _%seed123781%_))
                 (_%size123786%_ (vector-length _%table123780%_))
                 (_%entries123789%_ (##fxquotient _%size123786%_ '2))
                 (_%start123792%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123783%_ _%entries123789%_)
                   '1)))
            (let _%loop123796%_ ((_%probe123799%_ _%start123792%_)
                                 (_%i123801%_ '1)
                                 (_%deleted123803%_ '#f))
              (let ((_%k123806%_ (vector-ref _%table123780%_ _%probe123799%_)))
                (if (eq? _%k123806%_ (macro-unused-obj))
                    (if _%deleted123803%_
                        (begin
                          (vector-set!
                           _%table123780%_
                           _%deleted123803%_
                           _%key123776%_)
                          (vector-set!
                           _%table123780%_
                           (##fx+ _%deleted123803%_ '1)
                           (_%symbolic-table-update!123777%_
                            _%default123778%_))
                          (&raw-table-count-set!
                           _%tab123775%_
                           (##fx+ (&raw-table-count _%tab123775%_) '1)))
                        (begin
                          (vector-set!
                           _%table123780%_
                           _%probe123799%_
                           _%key123776%_)
                          (vector-set!
                           _%table123780%_
                           (##fx+ _%probe123799%_ '1)
                           (_%symbolic-table-update!123777%_
                            _%default123778%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123775%_
                             (##fx- (&raw-table-free _%tab123775%_) '1))
                            (&raw-table-count-set!
                             _%tab123775%_
                             (##fx+ (&raw-table-count _%tab123775%_) '1)))))
                    (if (eq? _%k123806%_ (macro-deleted-obj))
                        (_%loop123796%_
                         (let ((_%next-probe123813%_
                                (fx+ _%start123792%_
                                     _%i123801%_
                                     (fx* _%i123801%_ _%i123801%_))))
                           (##fxmodulo _%next-probe123813%_ _%size123786%_))
                         (##fx+ _%i123801%_ '1)
                         (let ((_%$e123816%_ _%deleted123803%_))
                           (if _%$e123816%_ _%$e123816%_ _%probe123799%_)))
                        (if (eq? _%key123776%_ _%k123806%_)
                            (let ()
                              (vector-set!
                               _%table123780%_
                               _%probe123799%_
                               _%key123776%_)
                              (vector-set!
                               _%table123780%_
                               (##fx+ _%probe123799%_ '1)
                               (_%symbolic-table-update!123777%_
                                (vector-ref
                                 _%table123780%_
                                 (##fx+ _%probe123799%_ '1)))))
                            (_%loop123796%_
                             (let ((_%next-probe123821%_
                                    (fx+ _%start123792%_
                                         _%i123801%_
                                         (fx* _%i123801%_ _%i123801%_))))
                               (##fxmodulo
                                _%next-probe123821%_
                                _%size123786%_))
                             (##fx+ _%i123801%_ '1)
                             _%deleted123803%_))))))))))
    (define symbolic-table-update!
      (lambda (_%tab123770%_
               _%key123771%_
               _%symbolic-table-update!123772%_
               _%default123773%_)
        (if (##fx< (&raw-table-free _%tab123770%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123770%_))
                    '4))
            (__raw-table-rehash! _%tab123770%_)
            '#!void)
        (__symbolic-table-update!
         _%tab123770%_
         _%key123771%_
         _%symbolic-table-update!123772%_
         _%default123773%_)))
    (define symbolic-table-update!/lock
      (lambda (_%tab123739%_
               _%key123740%_
               _%symbolic-table-update!123741%_
               _%default123742%_)
        (let ((_%lock123745%_ (&raw-table-lock _%tab123739%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123750%_ ((_%spin123753%_ '0))
              (if (##fx= (##vector-cas! _%lock123745%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123745%_ '1 (current-thread))
                  (if (##fx< _%spin123753%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123750%_ (##fx+ _%spin123753%_ '1)))
                      (let ((_%owner123759%_ (##vector-ref _%lock123745%_ '1)))
                        (if (eq? _%owner123759%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123759%_)
                                (let () (##thread-yield!) (_%again123750%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123765%_
                 (_%symbolic-table-update!123741%_
                  _%tab123739%_
                  _%key123740%_
                  _%symbolic-table-update!123741%_
                  _%default123742%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123745%_ '1 '#f)
                (##vector-cas! _%lock123745%_ '0 '0 '1)))
            _%$r123765%_))))
    (define symbolic-table-delete!
      (lambda (_%tab123696%_ _%key123697%_)
        (let ((_%table123699%_ (&raw-table-table _%tab123696%_))
              (_%seed123701%_ (&raw-table-seed _%tab123696%_)))
          (let* ((_%h123704%_
                  (fxxor (##symbol-hash _%key123697%_) _%seed123701%_))
                 (_%size123707%_ (vector-length _%table123699%_))
                 (_%entries123710%_ (##fxquotient _%size123707%_ '2))
                 (_%start123713%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123704%_ _%entries123710%_)
                   '1)))
            (let _%loop123717%_ ((_%probe123720%_ _%start123713%_)
                                 (_%i123722%_ '1))
              (let ((_%k123725%_ (vector-ref _%table123699%_ _%probe123720%_)))
                (if (eq? _%k123725%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123725%_ (macro-deleted-obj))
                        (_%loop123717%_
                         (let ((_%next-probe123730%_
                                (fx+ _%start123713%_
                                     _%i123722%_
                                     (fx* _%i123722%_ _%i123722%_))))
                           (##fxmodulo _%next-probe123730%_ _%size123707%_))
                         (##fx+ _%i123722%_ '1))
                        (if (eq? _%key123697%_ _%k123725%_)
                            (let ()
                              (vector-set!
                               _%table123699%_
                               _%probe123720%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table123699%_
                               (##fx+ _%probe123720%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab123696%_
                               (##fx- (&raw-table-count _%tab123696%_) '1)))
                            (_%loop123717%_
                             (let ((_%next-probe123736%_
                                    (fx+ _%start123713%_
                                         _%i123722%_
                                         (fx* _%i123722%_ _%i123722%_))))
                               (##fxmodulo
                                _%next-probe123736%_
                                _%size123707%_))
                             (##fx+ _%i123722%_ '1)))))))))))
    (define symbolic-table-delete!/lock
      (lambda (_%tab123666%_ _%key123668%_)
        (let ((_%lock123671%_ (&raw-table-lock _%tab123666%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123676%_ ((_%spin123679%_ '0))
              (if (##fx= (##vector-cas! _%lock123671%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123671%_ '1 (current-thread))
                  (if (##fx< _%spin123679%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123676%_ (##fx+ _%spin123679%_ '1)))
                      (let ((_%owner123685%_ (##vector-ref _%lock123671%_ '1)))
                        (if (eq? _%owner123685%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123685%_)
                                (let () (##thread-yield!) (_%again123676%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123691%_
                 (symbolic-table-delete! _%tab123666%_ _%key123668%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123671%_ '1 '#f)
                (##vector-cas! _%lock123671%_ '0 '0 '1)))
            _%$r123691%_))))
    (define make-string-table__%
      (lambda (_%size-hint123648%_ _%seed123649%_)
        (make-raw-table__1
         _%size-hint123648%_
         string-hash
         ##string=?
         _%seed123649%_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_%size-hint123655%_ '#f) (_%seed123657%_ '0))
          (make-string-table__% _%size-hint123655%_ _%seed123657%_))))
    (define make-string-table__1
      (lambda (_%size-hint123659%_)
        (let ((_%seed123661%_ '0))
          (make-string-table__% _%size-hint123659%_ _%seed123661%_))))
    (define make-string-table
      (lambda _g125362_
        (let ((_g125363_ (##length _g125362_)))
          (cond ((##fx= _g125363_ 0) (apply make-string-table__0 _g125362_))
                ((##fx= _g125363_ 1) (apply make-string-table__1 _g125362_))
                ((##fx= _g125363_ 2) (apply make-string-table__% _g125362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g125362_))))))
    (define make-string-table/lock__%
      (lambda (_%size-hint123628%_ _%seed123630%_)
        (make-raw-table/lock__%
         _%size-hint123628%_
         string-hash
         ##string=?
         _%seed123630%_)))
    (define make-string-table/lock__0
      (lambda ()
        (let* ((_%size-hint123636%_ '#f) (_%seed123638%_ '0))
          (make-string-table/lock__% _%size-hint123636%_ _%seed123638%_))))
    (define make-string-table/lock__1
      (lambda (_%size-hint123640%_)
        (let ((_%seed123642%_ '0))
          (make-string-table/lock__% _%size-hint123640%_ _%seed123642%_))))
    (define make-string-table/lock
      (lambda _g125364_
        (let ((_g125365_ (##length _g125364_)))
          (cond ((##fx= _g125365_ 0)
                 (apply make-string-table/lock__0 _g125364_))
                ((##fx= _g125365_ 1)
                 (apply make-string-table/lock__1 _g125364_))
                ((##fx= _g125365_ 2)
                 (apply make-string-table/lock__% _g125364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table/lock
                  _g125364_))))))
    (define string-table-ref
      (lambda (_%tab123581%_ _%key123582%_ _%default123583%_)
        (let ((_%table123585%_ (&raw-table-table _%tab123581%_))
              (_%seed123586%_ (&raw-table-seed _%tab123581%_)))
          (let* ((_%h123588%_
                  (fxxor (##string=?-hash _%key123582%_) _%seed123586%_))
                 (_%size123591%_ (vector-length _%table123585%_))
                 (_%entries123594%_ (##fxquotient _%size123591%_ '2))
                 (_%start123597%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123588%_ _%entries123594%_)
                   '1)))
            (let _%loop123601%_ ((_%probe123604%_ _%start123597%_)
                                 (_%i123606%_ '1)
                                 (_%deleted123608%_ '#f))
              (let ((_%k123611%_ (vector-ref _%table123585%_ _%probe123604%_)))
                (if (eq? _%k123611%_ (macro-unused-obj))
                    _%default123583%_
                    (if (eq? _%k123611%_ (macro-deleted-obj))
                        (_%loop123601%_
                         (let ((_%next-probe123616%_
                                (fx+ _%start123597%_
                                     _%i123606%_
                                     (fx* _%i123606%_ _%i123606%_))))
                           (##fxmodulo _%next-probe123616%_ _%size123591%_))
                         (##fx+ _%i123606%_ '1)
                         (let ((_%$e123619%_ _%deleted123608%_))
                           (if _%$e123619%_ _%$e123619%_ _%probe123604%_)))
                        (if (##string=? _%key123582%_ _%k123611%_)
                            (vector-ref
                             _%table123585%_
                             (##fx+ _%probe123604%_ '1))
                            (_%loop123601%_
                             (let ((_%next-probe123624%_
                                    (fx+ _%start123597%_
                                         _%i123606%_
                                         (fx* _%i123606%_ _%i123606%_))))
                               (##fxmodulo
                                _%next-probe123624%_
                                _%size123591%_))
                             (##fx+ _%i123606%_ '1)
                             _%deleted123608%_))))))))))
    (define string-table-ref/lock
      (lambda (_%tab123552%_ _%key123553%_ _%default123554%_)
        (let ((_%lock123556%_ (&raw-table-lock _%tab123552%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123561%_ ((_%spin123564%_ '0))
              (if (##fx= (##vector-cas! _%lock123556%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123556%_ '1 (current-thread))
                  (if (##fx< _%spin123564%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123561%_ (##fx+ _%spin123564%_ '1)))
                      (let ((_%owner123570%_ (##vector-ref _%lock123556%_ '1)))
                        (if (eq? _%owner123570%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123570%_)
                                (let () (##thread-yield!) (_%again123561%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123576%_
                 (string-table-ref
                  _%tab123552%_
                  _%key123553%_
                  _%default123554%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123556%_ '1 '#f)
                (##vector-cas! _%lock123556%_ '0 '0 '1)))
            _%$r123576%_))))
    (define __string-table-set!
      (lambda (_%tab123504%_ _%key123505%_ _%value123506%_)
        (let ((_%table123508%_ (&raw-table-table _%tab123504%_))
              (_%seed123509%_ (&raw-table-seed _%tab123504%_)))
          (let* ((_%h123511%_
                  (fxxor (##string=?-hash _%key123505%_) _%seed123509%_))
                 (_%size123514%_ (vector-length _%table123508%_))
                 (_%entries123517%_ (##fxquotient _%size123514%_ '2))
                 (_%start123520%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123511%_ _%entries123517%_)
                   '1)))
            (let _%loop123524%_ ((_%probe123527%_ _%start123520%_)
                                 (_%i123529%_ '1)
                                 (_%deleted123531%_ '#f))
              (let ((_%k123534%_ (vector-ref _%table123508%_ _%probe123527%_)))
                (if (eq? _%k123534%_ (macro-unused-obj))
                    (if _%deleted123531%_
                        (begin
                          (vector-set!
                           _%table123508%_
                           _%deleted123531%_
                           _%key123505%_)
                          (vector-set!
                           _%table123508%_
                           (##fx+ _%deleted123531%_ '1)
                           _%value123506%_)
                          (&raw-table-count-set!
                           _%tab123504%_
                           (##fx+ (&raw-table-count _%tab123504%_) '1)))
                        (begin
                          (vector-set!
                           _%table123508%_
                           _%probe123527%_
                           _%key123505%_)
                          (vector-set!
                           _%table123508%_
                           (##fx+ _%probe123527%_ '1)
                           _%value123506%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab123504%_
                             (##fx- (&raw-table-free _%tab123504%_) '1))
                            (&raw-table-count-set!
                             _%tab123504%_
                             (##fx+ (&raw-table-count _%tab123504%_) '1)))))
                    (if (eq? _%k123534%_ (macro-deleted-obj))
                        (_%loop123524%_
                         (let ((_%next-probe123541%_
                                (fx+ _%start123520%_
                                     _%i123529%_
                                     (fx* _%i123529%_ _%i123529%_))))
                           (##fxmodulo _%next-probe123541%_ _%size123514%_))
                         (##fx+ _%i123529%_ '1)
                         (let ((_%$e123544%_ _%deleted123531%_))
                           (if _%$e123544%_ _%$e123544%_ _%probe123527%_)))
                        (if (##string=? _%key123505%_ _%k123534%_)
                            (let ()
                              (vector-set!
                               _%table123508%_
                               _%probe123527%_
                               _%key123505%_)
                              (vector-set!
                               _%table123508%_
                               (##fx+ _%probe123527%_ '1)
                               _%value123506%_))
                            (_%loop123524%_
                             (let ((_%next-probe123549%_
                                    (fx+ _%start123520%_
                                         _%i123529%_
                                         (fx* _%i123529%_ _%i123529%_))))
                               (##fxmodulo
                                _%next-probe123549%_
                                _%size123514%_))
                             (##fx+ _%i123529%_ '1)
                             _%deleted123531%_))))))))))
    (define string-table-set!
      (lambda (_%tab123500%_ _%key123501%_ _%value123502%_)
        (if (##fx< (&raw-table-free _%tab123500%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123500%_))
                    '4))
            (__raw-table-rehash! _%tab123500%_)
            '#!void)
        (__string-table-set! _%tab123500%_ _%key123501%_ _%value123502%_)))
    (define string-table-set!/lock
      (lambda (_%tab123470%_ _%key123471%_ _%value123472%_)
        (let ((_%lock123475%_ (&raw-table-lock _%tab123470%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123480%_ ((_%spin123483%_ '0))
              (if (##fx= (##vector-cas! _%lock123475%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123475%_ '1 (current-thread))
                  (if (##fx< _%spin123483%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123480%_ (##fx+ _%spin123483%_ '1)))
                      (let ((_%owner123489%_ (##vector-ref _%lock123475%_ '1)))
                        (if (eq? _%owner123489%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123489%_)
                                (let () (##thread-yield!) (_%again123480%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123495%_
                 (string-table-set!
                  _%tab123470%_
                  _%key123471%_
                  _%value123472%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123475%_ '1 '#f)
                (##vector-cas! _%lock123475%_ '0 '0 '1)))
            _%$r123495%_))))
    (define __string-table-update!
      (lambda (_%tab123421%_
               _%key123422%_
               _%string-table-update!123423%_
               _%default123424%_)
        (let ((_%table123426%_ (&raw-table-table _%tab123421%_))
              (_%seed123427%_ (&raw-table-seed _%tab123421%_)))
          (let* ((_%h123429%_
                  (fxxor (##string=?-hash _%key123422%_) _%seed123427%_))
                 (_%size123432%_ (vector-length _%table123426%_))
                 (_%entries123435%_ (##fxquotient _%size123432%_ '2))
                 (_%start123438%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123429%_ _%entries123435%_)
                   '1)))
            (let _%loop123442%_ ((_%probe123445%_ _%start123438%_)
                                 (_%i123447%_ '1)
                                 (_%deleted123449%_ '#f))
              (let ((_%k123452%_ (vector-ref _%table123426%_ _%probe123445%_)))
                (if (eq? _%k123452%_ (macro-unused-obj))
                    (if _%deleted123449%_
                        (begin
                          (vector-set!
                           _%table123426%_
                           _%deleted123449%_
                           _%key123422%_)
                          (vector-set!
                           _%table123426%_
                           (##fx+ _%deleted123449%_ '1)
                           (_%string-table-update!123423%_ _%default123424%_))
                          (&raw-table-count-set!
                           _%tab123421%_
                           (##fx+ (&raw-table-count _%tab123421%_) '1)))
                        (begin
                          (vector-set!
                           _%table123426%_
                           _%probe123445%_
                           _%key123422%_)
                          (vector-set!
                           _%table123426%_
                           (##fx+ _%probe123445%_ '1)
                           (_%string-table-update!123423%_ _%default123424%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123421%_
                             (##fx- (&raw-table-free _%tab123421%_) '1))
                            (&raw-table-count-set!
                             _%tab123421%_
                             (##fx+ (&raw-table-count _%tab123421%_) '1)))))
                    (if (eq? _%k123452%_ (macro-deleted-obj))
                        (_%loop123442%_
                         (let ((_%next-probe123459%_
                                (fx+ _%start123438%_
                                     _%i123447%_
                                     (fx* _%i123447%_ _%i123447%_))))
                           (##fxmodulo _%next-probe123459%_ _%size123432%_))
                         (##fx+ _%i123447%_ '1)
                         (let ((_%$e123462%_ _%deleted123449%_))
                           (if _%$e123462%_ _%$e123462%_ _%probe123445%_)))
                        (if (##string=? _%key123422%_ _%k123452%_)
                            (let ()
                              (vector-set!
                               _%table123426%_
                               _%probe123445%_
                               _%key123422%_)
                              (vector-set!
                               _%table123426%_
                               (##fx+ _%probe123445%_ '1)
                               (_%string-table-update!123423%_
                                (vector-ref
                                 _%table123426%_
                                 (##fx+ _%probe123445%_ '1)))))
                            (_%loop123442%_
                             (let ((_%next-probe123467%_
                                    (fx+ _%start123438%_
                                         _%i123447%_
                                         (fx* _%i123447%_ _%i123447%_))))
                               (##fxmodulo
                                _%next-probe123467%_
                                _%size123432%_))
                             (##fx+ _%i123447%_ '1)
                             _%deleted123449%_))))))))))
    (define string-table-update!
      (lambda (_%tab123416%_
               _%key123417%_
               _%string-table-update!123418%_
               _%default123419%_)
        (if (##fx< (&raw-table-free _%tab123416%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123416%_))
                    '4))
            (__raw-table-rehash! _%tab123416%_)
            '#!void)
        (__string-table-update!
         _%tab123416%_
         _%key123417%_
         _%string-table-update!123418%_
         _%default123419%_)))
    (define string-table-update!/lock
      (lambda (_%tab123385%_
               _%key123386%_
               _%string-table-update!123387%_
               _%default123388%_)
        (let ((_%lock123391%_ (&raw-table-lock _%tab123385%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123396%_ ((_%spin123399%_ '0))
              (if (##fx= (##vector-cas! _%lock123391%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123391%_ '1 (current-thread))
                  (if (##fx< _%spin123399%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123396%_ (##fx+ _%spin123399%_ '1)))
                      (let ((_%owner123405%_ (##vector-ref _%lock123391%_ '1)))
                        (if (eq? _%owner123405%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123405%_)
                                (let () (##thread-yield!) (_%again123396%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123411%_
                 (_%string-table-update!123387%_
                  _%tab123385%_
                  _%key123386%_
                  _%string-table-update!123387%_
                  _%default123388%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123391%_ '1 '#f)
                (##vector-cas! _%lock123391%_ '0 '0 '1)))
            _%$r123411%_))))
    (define string-table-delete!
      (lambda (_%tab123342%_ _%key123343%_)
        (let ((_%table123345%_ (&raw-table-table _%tab123342%_))
              (_%seed123347%_ (&raw-table-seed _%tab123342%_)))
          (let* ((_%h123350%_
                  (fxxor (##string=?-hash _%key123343%_) _%seed123347%_))
                 (_%size123353%_ (vector-length _%table123345%_))
                 (_%entries123356%_ (##fxquotient _%size123353%_ '2))
                 (_%start123359%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123350%_ _%entries123356%_)
                   '1)))
            (let _%loop123363%_ ((_%probe123366%_ _%start123359%_)
                                 (_%i123368%_ '1))
              (let ((_%k123371%_ (vector-ref _%table123345%_ _%probe123366%_)))
                (if (eq? _%k123371%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123371%_ (macro-deleted-obj))
                        (_%loop123363%_
                         (let ((_%next-probe123376%_
                                (fx+ _%start123359%_
                                     _%i123368%_
                                     (fx* _%i123368%_ _%i123368%_))))
                           (##fxmodulo _%next-probe123376%_ _%size123353%_))
                         (##fx+ _%i123368%_ '1))
                        (if (##string=? _%key123343%_ _%k123371%_)
                            (let ()
                              (vector-set!
                               _%table123345%_
                               _%probe123366%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table123345%_
                               (##fx+ _%probe123366%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab123342%_
                               (##fx- (&raw-table-count _%tab123342%_) '1)))
                            (_%loop123363%_
                             (let ((_%next-probe123382%_
                                    (fx+ _%start123359%_
                                         _%i123368%_
                                         (fx* _%i123368%_ _%i123368%_))))
                               (##fxmodulo
                                _%next-probe123382%_
                                _%size123353%_))
                             (##fx+ _%i123368%_ '1)))))))))))
    (define string-table-delete!/lock
      (lambda (_%tab123312%_ _%key123314%_)
        (let ((_%lock123317%_ (&raw-table-lock _%tab123312%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123322%_ ((_%spin123325%_ '0))
              (if (##fx= (##vector-cas! _%lock123317%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123317%_ '1 (current-thread))
                  (if (##fx< _%spin123325%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123322%_ (##fx+ _%spin123325%_ '1)))
                      (let ((_%owner123331%_ (##vector-ref _%lock123317%_ '1)))
                        (if (eq? _%owner123331%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123331%_)
                                (let () (##thread-yield!) (_%again123322%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123337%_
                 (string-table-delete! _%tab123312%_ _%key123314%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123317%_ '1 '#f)
                (##vector-cas! _%lock123317%_ '0 '0 '1)))
            _%$r123337%_))))
    (define make-immediate-table__%
      (lambda (_%size-hint123294%_ _%seed123295%_)
        (make-raw-table__1
         _%size-hint123294%_
         immediate-hash
         eq?
         _%seed123295%_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_%size-hint123301%_ '#f) (_%seed123303%_ '0))
          (make-immediate-table__% _%size-hint123301%_ _%seed123303%_))))
    (define make-immediate-table__1
      (lambda (_%size-hint123305%_)
        (let ((_%seed123307%_ '0))
          (make-immediate-table__% _%size-hint123305%_ _%seed123307%_))))
    (define make-immediate-table
      (lambda _g125366_
        (let ((_g125367_ (##length _g125366_)))
          (cond ((##fx= _g125367_ 0) (apply make-immediate-table__0 _g125366_))
                ((##fx= _g125367_ 1) (apply make-immediate-table__1 _g125366_))
                ((##fx= _g125367_ 2) (apply make-immediate-table__% _g125366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g125366_))))))
    (define make-immediate-table/lock__%
      (lambda (_%size-hint123274%_ _%seed123276%_)
        (make-raw-table/lock__%
         _%size-hint123274%_
         immediate-hash
         eq?
         _%seed123276%_)))
    (define make-immediate-table/lock__0
      (lambda ()
        (let* ((_%size-hint123282%_ '#f) (_%seed123284%_ '0))
          (make-immediate-table/lock__% _%size-hint123282%_ _%seed123284%_))))
    (define make-immediate-table/lock__1
      (lambda (_%size-hint123286%_)
        (let ((_%seed123288%_ '0))
          (make-immediate-table/lock__% _%size-hint123286%_ _%seed123288%_))))
    (define make-immediate-table/lock
      (lambda _g125368_
        (let ((_g125369_ (##length _g125368_)))
          (cond ((##fx= _g125369_ 0)
                 (apply make-immediate-table/lock__0 _g125368_))
                ((##fx= _g125369_ 1)
                 (apply make-immediate-table/lock__1 _g125368_))
                ((##fx= _g125369_ 2)
                 (apply make-immediate-table/lock__% _g125368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table/lock
                  _g125368_))))))
    (define immediate-table-ref
      (lambda (_%tab123227%_ _%key123228%_ _%default123229%_)
        (let ((_%table123231%_ (&raw-table-table _%tab123227%_))
              (_%seed123232%_ (&raw-table-seed _%tab123227%_)))
          (let* ((_%h123234%_
                  (fxxor (immediate-hash _%key123228%_) _%seed123232%_))
                 (_%size123237%_ (vector-length _%table123231%_))
                 (_%entries123240%_ (##fxquotient _%size123237%_ '2))
                 (_%start123243%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123234%_ _%entries123240%_)
                   '1)))
            (let _%loop123247%_ ((_%probe123250%_ _%start123243%_)
                                 (_%i123252%_ '1)
                                 (_%deleted123254%_ '#f))
              (let ((_%k123257%_ (vector-ref _%table123231%_ _%probe123250%_)))
                (if (eq? _%k123257%_ (macro-unused-obj))
                    _%default123229%_
                    (if (eq? _%k123257%_ (macro-deleted-obj))
                        (_%loop123247%_
                         (let ((_%next-probe123262%_
                                (fx+ _%start123243%_
                                     _%i123252%_
                                     (fx* _%i123252%_ _%i123252%_))))
                           (##fxmodulo _%next-probe123262%_ _%size123237%_))
                         (##fx+ _%i123252%_ '1)
                         (let ((_%$e123265%_ _%deleted123254%_))
                           (if _%$e123265%_ _%$e123265%_ _%probe123250%_)))
                        (if (eq? _%key123228%_ _%k123257%_)
                            (vector-ref
                             _%table123231%_
                             (##fx+ _%probe123250%_ '1))
                            (_%loop123247%_
                             (let ((_%next-probe123270%_
                                    (fx+ _%start123243%_
                                         _%i123252%_
                                         (fx* _%i123252%_ _%i123252%_))))
                               (##fxmodulo
                                _%next-probe123270%_
                                _%size123237%_))
                             (##fx+ _%i123252%_ '1)
                             _%deleted123254%_))))))))))
    (define immediate-table-ref/lock
      (lambda (_%tab123198%_ _%key123199%_ _%default123200%_)
        (let ((_%lock123202%_ (&raw-table-lock _%tab123198%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123207%_ ((_%spin123210%_ '0))
              (if (##fx= (##vector-cas! _%lock123202%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123202%_ '1 (current-thread))
                  (if (##fx< _%spin123210%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123207%_ (##fx+ _%spin123210%_ '1)))
                      (let ((_%owner123216%_ (##vector-ref _%lock123202%_ '1)))
                        (if (eq? _%owner123216%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123216%_)
                                (let () (##thread-yield!) (_%again123207%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123222%_
                 (immediate-table-ref
                  _%tab123198%_
                  _%key123199%_
                  _%default123200%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123202%_ '1 '#f)
                (##vector-cas! _%lock123202%_ '0 '0 '1)))
            _%$r123222%_))))
    (define __immediate-table-set!
      (lambda (_%tab123150%_ _%key123151%_ _%value123152%_)
        (let ((_%table123154%_ (&raw-table-table _%tab123150%_))
              (_%seed123155%_ (&raw-table-seed _%tab123150%_)))
          (let* ((_%h123157%_
                  (fxxor (immediate-hash _%key123151%_) _%seed123155%_))
                 (_%size123160%_ (vector-length _%table123154%_))
                 (_%entries123163%_ (##fxquotient _%size123160%_ '2))
                 (_%start123166%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123157%_ _%entries123163%_)
                   '1)))
            (let _%loop123170%_ ((_%probe123173%_ _%start123166%_)
                                 (_%i123175%_ '1)
                                 (_%deleted123177%_ '#f))
              (let ((_%k123180%_ (vector-ref _%table123154%_ _%probe123173%_)))
                (if (eq? _%k123180%_ (macro-unused-obj))
                    (if _%deleted123177%_
                        (begin
                          (vector-set!
                           _%table123154%_
                           _%deleted123177%_
                           _%key123151%_)
                          (vector-set!
                           _%table123154%_
                           (##fx+ _%deleted123177%_ '1)
                           _%value123152%_)
                          (&raw-table-count-set!
                           _%tab123150%_
                           (##fx+ (&raw-table-count _%tab123150%_) '1)))
                        (begin
                          (vector-set!
                           _%table123154%_
                           _%probe123173%_
                           _%key123151%_)
                          (vector-set!
                           _%table123154%_
                           (##fx+ _%probe123173%_ '1)
                           _%value123152%_)
                          (let ()
                            (&raw-table-free-set!
                             _%tab123150%_
                             (##fx- (&raw-table-free _%tab123150%_) '1))
                            (&raw-table-count-set!
                             _%tab123150%_
                             (##fx+ (&raw-table-count _%tab123150%_) '1)))))
                    (if (eq? _%k123180%_ (macro-deleted-obj))
                        (_%loop123170%_
                         (let ((_%next-probe123187%_
                                (fx+ _%start123166%_
                                     _%i123175%_
                                     (fx* _%i123175%_ _%i123175%_))))
                           (##fxmodulo _%next-probe123187%_ _%size123160%_))
                         (##fx+ _%i123175%_ '1)
                         (let ((_%$e123190%_ _%deleted123177%_))
                           (if _%$e123190%_ _%$e123190%_ _%probe123173%_)))
                        (if (eq? _%key123151%_ _%k123180%_)
                            (let ()
                              (vector-set!
                               _%table123154%_
                               _%probe123173%_
                               _%key123151%_)
                              (vector-set!
                               _%table123154%_
                               (##fx+ _%probe123173%_ '1)
                               _%value123152%_))
                            (_%loop123170%_
                             (let ((_%next-probe123195%_
                                    (fx+ _%start123166%_
                                         _%i123175%_
                                         (fx* _%i123175%_ _%i123175%_))))
                               (##fxmodulo
                                _%next-probe123195%_
                                _%size123160%_))
                             (##fx+ _%i123175%_ '1)
                             _%deleted123177%_))))))))))
    (define immediate-table-set!
      (lambda (_%tab123146%_ _%key123147%_ _%value123148%_)
        (if (##fx< (&raw-table-free _%tab123146%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123146%_))
                    '4))
            (__raw-table-rehash! _%tab123146%_)
            '#!void)
        (__immediate-table-set! _%tab123146%_ _%key123147%_ _%value123148%_)))
    (define immediate-table-set!/lock
      (lambda (_%tab123116%_ _%key123117%_ _%value123118%_)
        (let ((_%lock123121%_ (&raw-table-lock _%tab123116%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123126%_ ((_%spin123129%_ '0))
              (if (##fx= (##vector-cas! _%lock123121%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123121%_ '1 (current-thread))
                  (if (##fx< _%spin123129%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123126%_ (##fx+ _%spin123129%_ '1)))
                      (let ((_%owner123135%_ (##vector-ref _%lock123121%_ '1)))
                        (if (eq? _%owner123135%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123135%_)
                                (let () (##thread-yield!) (_%again123126%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123141%_
                 (immediate-table-set!
                  _%tab123116%_
                  _%key123117%_
                  _%value123118%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123121%_ '1 '#f)
                (##vector-cas! _%lock123121%_ '0 '0 '1)))
            _%$r123141%_))))
    (define __immediate-table-update!
      (lambda (_%tab123067%_
               _%key123068%_
               _%immediate-table-update!123069%_
               _%default123070%_)
        (let ((_%table123072%_ (&raw-table-table _%tab123067%_))
              (_%seed123073%_ (&raw-table-seed _%tab123067%_)))
          (let* ((_%h123075%_
                  (fxxor (immediate-hash _%key123068%_) _%seed123073%_))
                 (_%size123078%_ (vector-length _%table123072%_))
                 (_%entries123081%_ (##fxquotient _%size123078%_ '2))
                 (_%start123084%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h123075%_ _%entries123081%_)
                   '1)))
            (let _%loop123088%_ ((_%probe123091%_ _%start123084%_)
                                 (_%i123093%_ '1)
                                 (_%deleted123095%_ '#f))
              (let ((_%k123098%_ (vector-ref _%table123072%_ _%probe123091%_)))
                (if (eq? _%k123098%_ (macro-unused-obj))
                    (if _%deleted123095%_
                        (begin
                          (vector-set!
                           _%table123072%_
                           _%deleted123095%_
                           _%key123068%_)
                          (vector-set!
                           _%table123072%_
                           (##fx+ _%deleted123095%_ '1)
                           (_%immediate-table-update!123069%_
                            _%default123070%_))
                          (&raw-table-count-set!
                           _%tab123067%_
                           (##fx+ (&raw-table-count _%tab123067%_) '1)))
                        (begin
                          (vector-set!
                           _%table123072%_
                           _%probe123091%_
                           _%key123068%_)
                          (vector-set!
                           _%table123072%_
                           (##fx+ _%probe123091%_ '1)
                           (_%immediate-table-update!123069%_
                            _%default123070%_))
                          (let ()
                            (&raw-table-free-set!
                             _%tab123067%_
                             (##fx- (&raw-table-free _%tab123067%_) '1))
                            (&raw-table-count-set!
                             _%tab123067%_
                             (##fx+ (&raw-table-count _%tab123067%_) '1)))))
                    (if (eq? _%k123098%_ (macro-deleted-obj))
                        (_%loop123088%_
                         (let ((_%next-probe123105%_
                                (fx+ _%start123084%_
                                     _%i123093%_
                                     (fx* _%i123093%_ _%i123093%_))))
                           (##fxmodulo _%next-probe123105%_ _%size123078%_))
                         (##fx+ _%i123093%_ '1)
                         (let ((_%$e123108%_ _%deleted123095%_))
                           (if _%$e123108%_ _%$e123108%_ _%probe123091%_)))
                        (if (eq? _%key123068%_ _%k123098%_)
                            (let ()
                              (vector-set!
                               _%table123072%_
                               _%probe123091%_
                               _%key123068%_)
                              (vector-set!
                               _%table123072%_
                               (##fx+ _%probe123091%_ '1)
                               (_%immediate-table-update!123069%_
                                (vector-ref
                                 _%table123072%_
                                 (##fx+ _%probe123091%_ '1)))))
                            (_%loop123088%_
                             (let ((_%next-probe123113%_
                                    (fx+ _%start123084%_
                                         _%i123093%_
                                         (fx* _%i123093%_ _%i123093%_))))
                               (##fxmodulo
                                _%next-probe123113%_
                                _%size123078%_))
                             (##fx+ _%i123093%_ '1)
                             _%deleted123095%_))))))))))
    (define immediate-table-update!
      (lambda (_%tab123062%_
               _%key123063%_
               _%immediate-table-update!123064%_
               _%default123065%_)
        (if (##fx< (&raw-table-free _%tab123062%_)
                   (##fxquotient
                    (vector-length (&raw-table-table _%tab123062%_))
                    '4))
            (__raw-table-rehash! _%tab123062%_)
            '#!void)
        (__immediate-table-update!
         _%tab123062%_
         _%key123063%_
         _%immediate-table-update!123064%_
         _%default123065%_)))
    (define immediate-table-update!/lock
      (lambda (_%tab123031%_
               _%key123032%_
               _%immediate-table-update!123033%_
               _%default123034%_)
        (let ((_%lock123037%_ (&raw-table-lock _%tab123031%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again123042%_ ((_%spin123045%_ '0))
              (if (##fx= (##vector-cas! _%lock123037%_ '0 '1 '0) '0)
                  (##vector-set! _%lock123037%_ '1 (current-thread))
                  (if (##fx< _%spin123045%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again123042%_ (##fx+ _%spin123045%_ '1)))
                      (let ((_%owner123051%_ (##vector-ref _%lock123037%_ '1)))
                        (if (eq? _%owner123051%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner123051%_)
                                (let () (##thread-yield!) (_%again123042%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r123057%_
                 (_%immediate-table-update!123033%_
                  _%tab123031%_
                  _%key123032%_
                  _%immediate-table-update!123033%_
                  _%default123034%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock123037%_ '1 '#f)
                (##vector-cas! _%lock123037%_ '0 '0 '1)))
            _%$r123057%_))))
    (define immediate-table-delete!
      (lambda (_%tab122988%_ _%key122989%_)
        (let ((_%table122991%_ (&raw-table-table _%tab122988%_))
              (_%seed122993%_ (&raw-table-seed _%tab122988%_)))
          (let* ((_%h122996%_
                  (fxxor (immediate-hash _%key122989%_) _%seed122993%_))
                 (_%size122999%_ (vector-length _%table122991%_))
                 (_%entries123002%_ (##fxquotient _%size122999%_ '2))
                 (_%start123005%_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _%h122996%_ _%entries123002%_)
                   '1)))
            (let _%loop123009%_ ((_%probe123012%_ _%start123005%_)
                                 (_%i123014%_ '1))
              (let ((_%k123017%_ (vector-ref _%table122991%_ _%probe123012%_)))
                (if (eq? _%k123017%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k123017%_ (macro-deleted-obj))
                        (_%loop123009%_
                         (let ((_%next-probe123022%_
                                (fx+ _%start123005%_
                                     _%i123014%_
                                     (fx* _%i123014%_ _%i123014%_))))
                           (##fxmodulo _%next-probe123022%_ _%size122999%_))
                         (##fx+ _%i123014%_ '1))
                        (if (eq? _%key122989%_ _%k123017%_)
                            (let ()
                              (vector-set!
                               _%table122991%_
                               _%probe123012%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table122991%_
                               (##fx+ _%probe123012%_ '1)
                               (macro-absent-obj))
                              (&raw-table-count-set!
                               _%tab122988%_
                               (##fx- (&raw-table-count _%tab122988%_) '1)))
                            (_%loop123009%_
                             (let ((_%next-probe123028%_
                                    (fx+ _%start123005%_
                                         _%i123014%_
                                         (fx* _%i123014%_ _%i123014%_))))
                               (##fxmodulo
                                _%next-probe123028%_
                                _%size122999%_))
                             (##fx+ _%i123014%_ '1)))))))))))
    (define immediate-table-delete!/lock
      (lambda (_%tab122958%_ _%key122960%_)
        (let ((_%lock122963%_ (&raw-table-lock _%tab122958%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again122968%_ ((_%spin122971%_ '0))
              (if (##fx= (##vector-cas! _%lock122963%_ '0 '1 '0) '0)
                  (##vector-set! _%lock122963%_ '1 (current-thread))
                  (if (##fx< _%spin122971%_ '10)
                      (let ()
                        (##thread-yield!)
                        (_%again122968%_ (##fx+ _%spin122971%_ '1)))
                      (let ((_%owner122977%_ (##vector-ref _%lock122963%_ '1)))
                        (if (eq? _%owner122977%_ (macro-current-thread))
                            (##thread-deadlock-action!)
                            (if (macro-thread-end-condvar _%owner122977%_)
                                (let () (##thread-yield!) (_%again122968%_ '0))
                                (##thread-deadlock-action!))))))))
          (let ((_%$r122983%_
                 (immediate-table-delete! _%tab122958%_ _%key122960%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (##vector-set! _%lock122963%_ '1 '#f)
                (##vector-cas! _%lock122963%_ '0 '0 '1)))
            _%$r122983%_))))
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
      (lambda (_%tab122956%_)
        (##unchecked-structure-ref
         _%tab122956%_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_%tab122954%_)
        (##unchecked-structure-ref
         _%tab122954%_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-lock
      (lambda (_%tab122952%_)
        (##unchecked-structure-ref
         _%tab122952%_
         '3
         __gc-table::t
         'gc-table-lock)))
    (define &gc-table-gcht-set!
      (lambda (_%tab122949%_ _%val122950%_)
        (##unchecked-structure-set!
         _%tab122949%_
         _%val122950%_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_%tab122946%_ _%val122947%_)
        (##unchecked-structure-set!
         _%tab122946%_
         _%val122947%_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define &gc-table-lock-set!
      (lambda (_%tab122943%_ _%val122944%_)
        (##unchecked-structure-set!
         _%tab122943%_
         _%val122944%_
         '3
         __gc-table::t
         'gc-table-lock-set!)))
    (define make-gc-table__%
      (lambda (_%size-hint122907%_
               _%klass122908%_
               _%flags122909%_
               _%lock122910%_)
        (let ((_%gcht122912%_
               (__gc-table-new
                (if (fixnum? _%size-hint122907%_) _%size-hint122907%_ '16)
                _%flags122909%_)))
          (##structure _%klass122908%_ _%gcht122912%_ '#f _%lock122910%_))))
    (define make-gc-table__0
      (lambda (_%size-hint122917%_)
        (let* ((_%klass122919%_ __gc-table::t)
               (_%flags122921%_ '0)
               (_%lock122923%_ '#f))
          (make-gc-table__%
           _%size-hint122917%_
           _%klass122919%_
           _%flags122921%_
           _%lock122923%_))))
    (define make-gc-table__1
      (lambda (_%size-hint122925%_ _%klass122926%_)
        (let* ((_%flags122928%_ '0) (_%lock122930%_ '#f))
          (make-gc-table__%
           _%size-hint122925%_
           _%klass122926%_
           _%flags122928%_
           _%lock122930%_))))
    (define make-gc-table__2
      (lambda (_%size-hint122932%_ _%klass122933%_ _%flags122934%_)
        (let ((_%lock122936%_ '#f))
          (make-gc-table__%
           _%size-hint122932%_
           _%klass122933%_
           _%flags122934%_
           _%lock122936%_))))
    (define make-gc-table
      (lambda _g125370_
        (let ((_g125371_ (##length _g125370_)))
          (cond ((##fx= _g125371_ 1) (apply make-gc-table__0 _g125370_))
                ((##fx= _g125371_ 2) (apply make-gc-table__1 _g125370_))
                ((##fx= _g125371_ 3) (apply make-gc-table__2 _g125370_))
                ((##fx= _g125371_ 4) (apply make-gc-table__% _g125370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g125370_))))))
    (define make-gc-table/lock__%
      (lambda (_%size-hint122884%_ _%klass122885%_ _%flags122886%_)
        (make-gc-table__%
         _%size-hint122884%_
         _%klass122885%_
         _%flags122886%_
         (vector '0 '#f))))
    (define make-gc-table/lock__0
      (lambda (_%size-hint122891%_)
        (let* ((_%klass122893%_ __gc-table::t) (_%flags122895%_ '0))
          (make-gc-table/lock__%
           _%size-hint122891%_
           _%klass122893%_
           _%flags122895%_))))
    (define make-gc-table/lock__1
      (lambda (_%size-hint122897%_ _%klass122898%_)
        (let ((_%flags122900%_ '0))
          (make-gc-table/lock__%
           _%size-hint122897%_
           _%klass122898%_
           _%flags122900%_))))
    (define make-gc-table/lock
      (lambda _g125372_
        (let ((_g125373_ (##length _g125372_)))
          (cond ((##fx= _g125373_ 1) (apply make-gc-table/lock__0 _g125372_))
                ((##fx= _g125373_ 2) (apply make-gc-table/lock__1 _g125372_))
                ((##fx= _g125373_ 3) (apply make-gc-table/lock__% _g125372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table/lock
                  _g125372_))))))
    (define __gc-table-immediate
      (lambda (_%tab122875%_)
        (let ((_%$e122877%_ (&gc-table-immediate _%tab122875%_)))
          (if _%$e122877%_
              _%$e122877%_
              (let ((_%immediate122881%_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _%tab122875%_ _%immediate122881%_)
                _%immediate122881%_)))))
    (define __gc-table-new
      (lambda (_%size122865%_ _%flags122866%_)
        (let* ((_%flags122868%_
                (##fxand _%flags122866%_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_%flags122870%_
                (fxior _%flags122868%_
                       (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_%gcht122872%_
                (##gc-hash-table-allocate
                 _%size122865%_
                 _%flags122870%_
                 __gc-table-loads)))
          _%gcht122872%_)))
    (define __gc-table-e
      (lambda (_%tab122860%_)
        (declare (not interrupts-enabled))
        (let ((_%gcht122863%_ (&gc-table-gcht _%tab122860%_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _%gcht122863%_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _%gcht122863%_
              (begin
                (__gc-table-rehash! _%tab122860%_)
                (&gc-table-gcht _%tab122860%_))))))
    (define __gc-table-rehash!
      (lambda (_%tab122851%_)
        (let* ((_%old-table122853%_ (&gc-table-gcht _%tab122851%_))
               (_%new-table122855%_
                (##gc-hash-table-resize! _%old-table122853%_ __gc-table-loads))
               (_%gcht122857%_
                (##gc-hash-table-rehash!
                 _%old-table122853%_
                 _%new-table122855%_)))
          (&gc-table-gcht-set! _%tab122851%_ _%gcht122857%_))))
    (define gc-table-ref
      (lambda (_%tab122835%_ _%key122836%_ _%default122837%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122836%_)
            (let* ((_%gcht122841%_ (__gc-table-e _%tab122835%_))
                   (_%value122843%_
                    (##gc-hash-table-ref _%gcht122841%_ _%key122836%_)))
              (if (eq? _%value122843%_ (macro-unused-obj))
                  _%default122837%_
                  _%value122843%_))
            (let ((_%$e122845%_ (&gc-table-immediate _%tab122835%_)))
              (if _%$e122845%_
                  (immediate-table-ref
                   _%$e122845%_
                   _%key122836%_
                   _%default122837%_)
                  _%default122837%_)))))
    (define gc-table-ref/lock
      (lambda (_%tab122809%_ _%key122810%_ _%default122811%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122815%_ ((_%spin122818%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122809%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122809%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122818%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122815%_ (##fx+ _%spin122818%_ '1)))
                    (let ((_%owner122824%_
                           (##vector-ref (&gc-table-lock _%tab122809%_) '1)))
                      (if (eq? _%owner122824%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122824%_)
                              (let () (##thread-yield!) (_%again122815%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122830%_
               (gc-table-ref _%tab122809%_ _%key122810%_ _%default122811%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122809%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122809%_) '0 '0 '1)))
          _%$r122830%_)))
    (define gc-table-set!
      (lambda (_%tab122802%_ _%key122803%_ _%value122804%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122803%_)
            (let ((_%gcht122807%_ (__gc-table-e _%tab122802%_)))
              (if (##gc-hash-table-set!
                   _%gcht122807%_
                   _%key122803%_
                   _%value122804%_)
                  (begin
                    (__gc-table-rehash! _%tab122802%_)
                    (gc-table-set!
                     _%tab122802%_
                     _%key122803%_
                     _%value122804%_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _%tab122802%_)
             _%key122803%_
             _%value122804%_))))
    (define gc-table-set/lock!
      (lambda (_%tab122776%_ _%key122777%_ _%value122778%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122782%_ ((_%spin122785%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122776%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122776%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122785%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122782%_ (##fx+ _%spin122785%_ '1)))
                    (let ((_%owner122791%_
                           (##vector-ref (&gc-table-lock _%tab122776%_) '1)))
                      (if (eq? _%owner122791%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122791%_)
                              (let () (##thread-yield!) (_%again122782%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122797%_
               (gc-table-set! _%tab122776%_ _%key122777%_ _%value122778%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122776%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122776%_) '0 '0 '1)))
          _%$r122797%_)))
    (define gc-table-update!
      (lambda (_%tab122769%_ _%key122770%_ _%update122771%_ _%default122772%_)
        (if (##mem-allocated? _%key122770%_)
            (let ((_%value122774%_
                   (gc-table-ref
                    _%tab122769%_
                    _%key122770%_
                    _%default122772%_)))
              (gc-table-set!
               _%tab122769%_
               _%key122770%_
               (_%update122771%_ _%value122774%_)))
            (immediate-table-update!
             (__gc-table-immediate _%tab122769%_)
             _%key122770%_
             _%update122771%_
             _%default122772%_))))
    (define gc-table-update!/lock
      (lambda (_%tab122742%_ _%key122743%_ _%update122744%_ _%default122745%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122749%_ ((_%spin122752%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122742%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122742%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122752%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122749%_ (##fx+ _%spin122752%_ '1)))
                    (let ((_%owner122758%_
                           (##vector-ref (&gc-table-lock _%tab122742%_) '1)))
                      (if (eq? _%owner122758%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122758%_)
                              (let () (##thread-yield!) (_%again122749%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122764%_
               (gc-table-update!
                _%tab122742%_
                _%key122743%_
                _%update122744%_
                _%default122745%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122742%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122742%_) '0 '0 '1)))
          _%$r122764%_)))
    (define gc-table-delete!
      (lambda (_%tab122730%_ _%key122731%_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _%key122731%_)
            (let ((_%gcht122735%_ (__gc-table-e _%tab122730%_)))
              (if (##gc-hash-table-set!
                   _%gcht122735%_
                   _%key122731%_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _%tab122730%_)
                    (gc-table-delete! _%tab122730%_ _%key122731%_))
                  '#!void))
            (let ((_%$e122737%_ (&gc-table-immediate _%tab122730%_)))
              (if _%$e122737%_
                  (immediate-table-delete! _%$e122737%_ _%key122731%_)
                  '#!void)))))
    (define gc-table-delete!/lock
      (lambda (_%tab122705%_ _%key122706%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122710%_ ((_%spin122713%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122705%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122705%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122713%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122710%_ (##fx+ _%spin122713%_ '1)))
                    (let ((_%owner122719%_
                           (##vector-ref (&gc-table-lock _%tab122705%_) '1)))
                      (if (eq? _%owner122719%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122719%_)
                              (let () (##thread-yield!) (_%again122710%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122725%_ (gc-table-delete! _%tab122705%_ _%key122706%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122705%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122705%_) '0 '0 '1)))
          _%$r122725%_)))
    (define gc-table-for-each
      (lambda (_%tab122694%_ _%proc122695%_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_%gcht122698%_ (__gc-table-e _%tab122694%_)))
            (##gc-hash-table-for-each _%proc122695%_ _%gcht122698%_))
          (let ((_%$e122700%_ (&gc-table-immediate _%tab122694%_)))
            (if _%$e122700%_
                (raw-table-for-each _%$e122700%_ _%proc122695%_)
                '#!void)))))
    (define gc-table-for-each/lock
      (lambda (_%tab122669%_ _%proc122670%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122674%_ ((_%spin122677%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122669%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122669%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122677%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122674%_ (##fx+ _%spin122677%_ '1)))
                    (let ((_%owner122683%_
                           (##vector-ref (&gc-table-lock _%tab122669%_) '1)))
                      (if (eq? _%owner122683%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122683%_)
                              (let () (##thread-yield!) (_%again122674%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122689%_ (gc-table-for-each _%tab122669%_ _%proc122670%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122669%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122669%_) '0 '0 '1)))
          _%$r122689%_)))
    (define table-new__%
      (lambda (_%tab122651%_ _%size-hint122652%_)
        (if (table? _%tab122651%_)
            '#!void
            (error '"table-new: expected table" _%tab122651%_))
        (letrec* ((_%loads122654%_ (macro-table-loads _%tab122651%_)))
          (make-table
           'size:
           (let ((_%$e122656%_ _%size-hint122652%_))
             (if _%$e122656%_ _%$e122656%_ '16))
           'init:
           (macro-table-init _%tab122651%_)
           'weak-keys:
           (##fx< '0
                  (fxand (macro-table-flags _%tab122651%_)
                         (macro-gc-hash-table-flag-weak-keys)))
           'weak-values:
           (##fx< '0
                  (fxand (macro-table-flags _%tab122651%_)
                         (macro-gc-hash-table-flag-weak-vals)))
           'test:
           (macro-table-test _%tab122651%_)
           'hash:
           (macro-table-hash _%tab122651%_)
           'min-load:
           (##f64vector-ref _%loads122654%_ '0)
           'max-load:
           (##f64vector-ref _%loads122654%_ '2)))))
    (define table-new__0
      (lambda (_%tab122662%_)
        (let ((_%size-hint122664%_ '#f))
          (table-new__% _%tab122662%_ _%size-hint122664%_))))
    (define table-new
      (lambda _g125374_
        (let ((_g125375_ (##length _g125374_)))
          (cond ((##fx= _g125375_ 1) (apply table-new__0 _g125374_))
                ((##fx= _g125375_ 2) (apply table-new__% _g125374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  table-new
                  _g125374_))))))
    (define gc-table-new__%
      (lambda (_%tab122637%_ _%size-hint122638%_)
        (make-gc-table__%
         (if (eq? _%size-hint122638%_ '#t)
             (macro-gc-hash-table-count (__gc-table-e _%tab122637%_))
             _%size-hint122638%_)
         (##structure-type _%tab122637%_)
         (macro-gc-hash-table-flags (&gc-table-gcht _%tab122637%_))
         (if (&gc-table-lock _%tab122637%_) '#t '#f))))
    (define gc-table-new__0
      (lambda (_%tab122643%_)
        (let ((_%size-hint122645%_ '#f))
          (gc-table-new__% _%tab122643%_ _%size-hint122645%_))))
    (define gc-table-new
      (lambda _g125376_
        (let ((_g125377_ (##length _g125376_)))
          (cond ((##fx= _g125377_ 1) (apply gc-table-new__0 _g125376_))
                ((##fx= _g125377_ 2) (apply gc-table-new__% _g125376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gc-table-new
                  _g125376_))))))
    (define gc-table-copy
      (lambda (_%tab122629%_)
        (let ((_%result122631%_ (gc-table-new__% _%tab122629%_ '#t)))
          (gc-table-for-each
           _%tab122629%_
           (lambda (_%k122633%_ _%v122634%_)
             (gc-table-set! _%result122631%_ _%k122633%_ _%v122634%_)))
          _%result122631%_)))
    (define gc-table-copy/lock
      (lambda (_%tab122605%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122609%_ ((_%spin122612%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122605%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122605%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122612%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122609%_ (##fx+ _%spin122612%_ '1)))
                    (let ((_%owner122618%_
                           (##vector-ref (&gc-table-lock _%tab122605%_) '1)))
                      (if (eq? _%owner122618%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122618%_)
                              (let () (##thread-yield!) (_%again122609%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122624%_ (gc-table-copy _%tab122605%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122605%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122605%_) '0 '0 '1)))
          _%$r122624%_)))
    (define gc-table-clear!
      (lambda (_%tab122598%_)
        (let* ((_%gcht122600%_ (__gc-table-e _%tab122598%_))
               (_%new-table122602%_
                (__gc-table-new
                 '16
                 (macro-gc-hash-table-flags _%gcht122600%_))))
          (&gc-table-gcht-set! _%tab122598%_ _%new-table122602%_)
          (&gc-table-immediate-set! _%tab122598%_ '#f))))
    (define gc-table-clear!/lock
      (lambda (_%tab122574%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122578%_ ((_%spin122581%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122574%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122574%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122581%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122578%_ (##fx+ _%spin122581%_ '1)))
                    (let ((_%owner122587%_
                           (##vector-ref (&gc-table-lock _%tab122574%_) '1)))
                      (if (eq? _%owner122587%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122587%_)
                              (let () (##thread-yield!) (_%again122578%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122593%_ (gc-table-clear! _%tab122574%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122574%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122574%_) '0 '0 '1)))
          _%$r122593%_)))
    (define gc-table-length
      (lambda (_%tab122566%_)
        (let ((_%gcht122568%_ (__gc-table-e _%tab122566%_)))
          (fx+ (macro-gc-hash-table-count _%gcht122568%_)
               (let ((_%$e122570%_ (&gc-table-immediate _%tab122566%_)))
                 (if _%$e122570%_ (&raw-table-count _%$e122570%_) '0))))))
    (define gc-table-length/lock
      (lambda (_%tab122542%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again122546%_ ((_%spin122549%_ '0))
            (if (##fx= (##vector-cas! (&gc-table-lock _%tab122542%_) '0 '1 '0)
                       '0)
                (##vector-set!
                 (&gc-table-lock _%tab122542%_)
                 '1
                 (current-thread))
                (if (##fx< _%spin122549%_ '10)
                    (let ()
                      (##thread-yield!)
                      (_%again122546%_ (##fx+ _%spin122549%_ '1)))
                    (let ((_%owner122555%_
                           (##vector-ref (&gc-table-lock _%tab122542%_) '1)))
                      (if (eq? _%owner122555%_ (macro-current-thread))
                          (##thread-deadlock-action!)
                          (if (macro-thread-end-condvar _%owner122555%_)
                              (let () (##thread-yield!) (_%again122546%_ '0))
                              (##thread-deadlock-action!))))))))
        (let ((_%$r122561%_ (gc-table-length _%tab122542%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (##vector-set! (&gc-table-lock _%tab122542%_) '1 '#f)
              (##vector-cas! (&gc-table-lock _%tab122542%_) '0 '0 '1)))
          _%$r122561%_)))
    (define __object-eq-hash-lock (vector '0 '#f))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__2
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_%obj122508%_)
        (declare (not interrupts-enabled))
        (let ((_%val122511%_
               (gc-table-ref __object-eq-hash _%obj122508%_ '#f)))
          (if _%val122511%_
              _%val122511%_
              (begin
                (let ()
                  (declare (not interrupts-enabled))
                  (let _%again122515%_ ((_%spin122518%_ '0))
                    (if (##fx= (##vector-cas! __object-eq-hash-lock '0 '1 '0)
                               '0)
                        (##vector-set!
                         __object-eq-hash-lock
                         '1
                         (current-thread))
                        (if (##fx< _%spin122518%_ '10)
                            (let ()
                              (##thread-yield!)
                              (_%again122515%_ (##fx+ _%spin122518%_ '1)))
                            (let ((_%owner122524%_
                                   (##vector-ref __object-eq-hash-lock '1)))
                              (if (eq? _%owner122524%_ (macro-current-thread))
                                  (##thread-deadlock-action!)
                                  (if (macro-thread-end-condvar
                                       _%owner122524%_)
                                      (let ()
                                        (##thread-yield!)
                                        (_%again122515%_ '0))
                                      (##thread-deadlock-action!))))))))
                (let ((_%$r122537%_
                       (let ((_%val122530%_
                              (gc-table-ref
                               __object-eq-hash
                               _%obj122508%_
                               '#f)))
                         (if _%val122530%_
                             _%val122530%_
                             (let ((_%h122532%_
                                    (fxand __object-eq-hash
                                           (macro-max-fixnum32))))
                               (set! __object-eq-hash-next
                                     (let ((_%$e122534%_
                                            (##fx+? __object-eq-hash-next '1)))
                                       (if _%$e122534%_ _%$e122534%_ '0)))
                               (gc-table-set!
                                __object-eq-hash
                                _%obj122508%_
                                _%h122532%_)
                               _%h122532%_)))))
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (##vector-set! __object-eq-hash-lock '1 '#f)
                      (##vector-cas! __object-eq-hash-lock '0 '0 '1)))
                  _%$r122537%_))))))))
