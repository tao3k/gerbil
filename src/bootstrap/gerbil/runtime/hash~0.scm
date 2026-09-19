(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1789839224)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp172570 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp172570
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args171182%_
        (apply make-instance UnboundKeyError::t _%$args171182%_)))
    (define UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor UnboundKeyError::t 'continuation)))
    (define UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'message)))
    (define UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'irritants)))
    (define UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'where)))
    (define UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator UnboundKeyError::t 'continuation)))
    (define &UnboundKeyError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         UnboundKeyError::t
         'continuation)))
    (define &UnboundKeyError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'message)))
    (define &UnboundKeyError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'irritants)))
    (define &UnboundKeyError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator UnboundKeyError::t 'where)))
    (define &UnboundKeyError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         UnboundKeyError::t
         'continuation)))
    (define UnboundKeyError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       UnboundKeyError::t
       ':init!
       UnboundKeyError:::init!
       '#f))
    (define raise-unbound-key-error
      (lambda (_%where171056%_ _%message171057%_ . _%irritants171058%_)
        (let ((__tmp172571
               (let ((__obj172562
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj172562
                    _%message171057%_
                    'where:
                    _%where171056%_
                    'irritants:
                    _%irritants171058%_))
                 __obj172562)))
          (declare (not safe))
          (raise __tmp172571))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp172572 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'HashTable::t
         'HashTable
         __tmp172572
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj172564
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj172564
           HashTable::t
           '((HashTable::clear! clear!)
             (HashTable::copy copy)
             (HashTable::delete! delete!)
             (HashTable::for-each for-each)
             (HashTable::length length)
             (HashTable::new new)
             (HashTable::ref ref)
             (HashTable::set! set!)
             (HashTable::update! update!))))
        __obj172564))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj171054%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj171054%_))))
    (define try-HashTable
      (lambda (_%obj171052%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj171052%_))))
    (define HashTable?
      (lambda (_%obj171050%_)
        (let ((__tmp172573
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj171050%_ __tmp172573))))
    (define is-HashTable?
      (lambda (_%obj171047%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj171047%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self154670171030%_)
        (let ((_%self154670171032%_ _%self154670171030%_))
          (declare (not safe))
          (let ((_%object171039171044%_
                 (##unchecked-structure-ref
                  _%self154670171032%_
                  '1
                  '#f
                  'clear!))
                (_%method171040171045%_
                 (##unchecked-structure-ref
                  _%self154670171032%_
                  '2
                  '#f
                  'clear!)))
            (_%method171040171045%_ _%object171039171044%_)))))
    (define ::HashTable-clear!
      (lambda (_%self154671171003%_)
        (let* ((_%self154671171005%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154671171003%_)))
               (_%self154671171007%_ _%self154671171005%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object171015171020%_
                       (##unchecked-structure-ref
                        _%self154671171007%_
                        '1
                        '#f
                        'clear!))
                      (_%method171016171021%_
                       (##unchecked-structure-ref
                        _%self154671171007%_
                        '2
                        '#f
                        'clear!)))
                  (_%method171016171021%_ _%object171015171020%_)))
              (let ()
                (declare (not safe))
                (let ((_%object171022171027%_
                       (##unchecked-structure-ref
                        _%self154671171007%_
                        '1
                        '#f
                        'clear!))
                      (_%method171023171028%_
                       (##unchecked-structure-ref
                        _%self154671171007%_
                        '2
                        '#f
                        'clear!)))
                  (_%method171023171028%_ _%object171022171027%_)))))))
    (define __HashTable-copy
      (lambda (_%self154915170986%_)
        (let ((_%self154915170988%_ _%self154915170986%_))
          (declare (not safe))
          (let ((_%object170995171000%_
                 (##unchecked-structure-ref _%self154915170988%_ '1 '#f 'copy))
                (_%method170996171001%_
                 (##unchecked-structure-ref
                  _%self154915170988%_
                  '3
                  '#f
                  'copy)))
            (_%method170996171001%_ _%object170995171000%_)))))
    (define ::HashTable-copy
      (lambda (_%self154916170959%_)
        (let* ((_%self154916170961%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154916170959%_)))
               (_%self154916170963%_ _%self154916170961%_))
          (if __DEBUG
              (let ((__tmp172574
                     (let ()
                       (declare (not safe))
                       (let ((_%object170971170976%_
                              (##unchecked-structure-ref
                               _%self154916170963%_
                               '1
                               '#f
                               'copy))
                             (_%method170972170977%_
                              (##unchecked-structure-ref
                               _%self154916170963%_
                               '3
                               '#f
                               'copy)))
                         (_%method170972170977%_ _%object170971170976%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp172574))
              (let ()
                (declare (not safe))
                (let ((_%object170978170983%_
                       (##unchecked-structure-ref
                        _%self154916170963%_
                        '1
                        '#f
                        'copy))
                      (_%method170979170984%_
                       (##unchecked-structure-ref
                        _%self154916170963%_
                        '3
                        '#f
                        'copy)))
                  (_%method170979170984%_ _%object170978170983%_)))))))
    (define __HashTable-delete!
      (lambda (_%self155159170941%_ _%key170942%_)
        (let ((_%self155159170944%_ _%self155159170941%_))
          (declare (not safe))
          (let ((_%object170951170956%_
                 (##unchecked-structure-ref
                  _%self155159170944%_
                  '1
                  '#f
                  'delete!))
                (_%method170952170957%_
                 (##unchecked-structure-ref
                  _%self155159170944%_
                  '4
                  '#f
                  'delete!)))
            (_%method170952170957%_ _%object170951170956%_ _%key170942%_)))))
    (define ::HashTable-delete!
      (lambda (_%self155160170913%_ _%key170914%_)
        (let* ((_%self155160170916%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155160170913%_)))
               (_%self155160170918%_ _%self155160170916%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170926170931%_
                       (##unchecked-structure-ref
                        _%self155160170918%_
                        '1
                        '#f
                        'delete!))
                      (_%method170927170932%_
                       (##unchecked-structure-ref
                        _%self155160170918%_
                        '4
                        '#f
                        'delete!)))
                  (_%method170927170932%_
                   _%object170926170931%_
                   _%key170914%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170933170938%_
                       (##unchecked-structure-ref
                        _%self155160170918%_
                        '1
                        '#f
                        'delete!))
                      (_%method170934170939%_
                       (##unchecked-structure-ref
                        _%self155160170918%_
                        '4
                        '#f
                        'delete!)))
                  (_%method170934170939%_
                   _%object170933170938%_
                   _%key170914%_)))))))
    (define __HashTable-for-each
      (lambda (_%self155403170887%_ _%proc170888%_)
        (let* ((_%self155403170890%_ _%self155403170887%_)
               (_%proc170897%_ _%proc170888%_))
          (declare (not safe))
          (let ((_%object170905170910%_
                 (##unchecked-structure-ref
                  _%self155403170890%_
                  '1
                  '#f
                  'for-each))
                (_%method170906170911%_
                 (##unchecked-structure-ref
                  _%self155403170890%_
                  '5
                  '#f
                  'for-each)))
            (_%method170906170911%_ _%object170905170910%_ _%proc170897%_)))))
    (define ::HashTable-for-each
      (lambda (_%self155404170849%_ _%proc170850%_)
        (let* ((_%self155404170852%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155404170849%_)))
               (_%self155404170854%_ _%self155404170852%_))
          (if (procedure? _%proc170850%_)
              (let ((_%proc170863%_ _%proc170850%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object170872170877%_
                             (##unchecked-structure-ref
                              _%self155404170854%_
                              '1
                              '#f
                              'for-each))
                            (_%method170873170878%_
                             (##unchecked-structure-ref
                              _%self155404170854%_
                              '5
                              '#f
                              'for-each)))
                        (_%method170873170878%_
                         _%object170872170877%_
                         _%proc170863%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170879170884%_
                             (##unchecked-structure-ref
                              _%self155404170854%_
                              '1
                              '#f
                              'for-each))
                            (_%method170880170885%_
                             (##unchecked-structure-ref
                              _%self155404170854%_
                              '5
                              '#f
                              'for-each)))
                        (_%method170880170885%_
                         _%object170879170884%_
                         _%proc170863%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc170850%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self155647170832%_)
        (let ((_%self155647170834%_ _%self155647170832%_))
          (declare (not safe))
          (let ((_%object170841170846%_
                 (##unchecked-structure-ref
                  _%self155647170834%_
                  '1
                  '#f
                  'length))
                (_%method170842170847%_
                 (##unchecked-structure-ref
                  _%self155647170834%_
                  '6
                  '#f
                  'length)))
            (_%method170842170847%_ _%object170841170846%_)))))
    (define ::HashTable-length
      (lambda (_%self155648170802%_)
        (let* ((_%self155648170804%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155648170802%_)))
               (_%self155648170806%_ _%self155648170804%_))
          (if __DEBUG
              (let ((_%val170822%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object170814170819%_
                              (##unchecked-structure-ref
                               _%self155648170806%_
                               '1
                               '#f
                               'length))
                             (_%method170815170820%_
                              (##unchecked-structure-ref
                               _%self155648170806%_
                               '6
                               '#f
                               'length)))
                         (_%method170815170820%_ _%object170814170819%_)))))
                (if (fixnum? _%val170822%_)
                    _%val170822%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val170822%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object170824170829%_
                       (##unchecked-structure-ref
                        _%self155648170806%_
                        '1
                        '#f
                        'length))
                      (_%method170825170830%_
                       (##unchecked-structure-ref
                        _%self155648170806%_
                        '6
                        '#f
                        'length)))
                  (_%method170825170830%_ _%object170824170829%_)))))))
    (define __HashTable-new__%
      (lambda (_%self155891170766%_ _%size-hint170767%_)
        (let* ((_%self155891170769%_ _%self155891170766%_)
               (_%size-hint170776%_ _%size-hint170767%_))
          (declare (not safe))
          (let ((_%object170784170789%_
                 (##unchecked-structure-ref _%self155891170769%_ '1 '#f 'new))
                (_%method170785170790%_
                 (##unchecked-structure-ref _%self155891170769%_ '7 '#f 'new)))
            (_%method170785170790%_
             _%object170784170789%_
             _%size-hint170776%_)))))
    (define __HashTable-new__0
      (lambda (_%self155891170795%_)
        (let ((_%size-hint170797%_ '#f))
          (__HashTable-new__% _%self155891170795%_ _%size-hint170797%_))))
    (define __HashTable-new
      (lambda _g172575_
        (let ((_g172576_ (let () (declare (not safe)) (##length _g172575_))))
          (cond ((let () (declare (not safe)) (##fx= _g172576_ 1))
                 (apply __HashTable-new__0 _g172575_))
                ((let () (declare (not safe)) (##fx= _g172576_ 2))
                 (apply __HashTable-new__% _g172575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g172575_))))))
    (define ::HashTable-new__%
      (lambda (_%self155892170711%_ _%size-hint170712%_)
        (let* ((_%self155892170714%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155892170711%_)))
               (_%self155892170716%_ _%self155892170714%_))
          (if (or (not _%size-hint170712%_) (fixnum? _%size-hint170712%_))
              (let ((_%size-hint170731%_ _%size-hint170712%_))
                (if __DEBUG
                    (let ((__tmp172577
                           (let ()
                             (declare (not safe))
                             (let ((_%object170740170745%_
                                    (##unchecked-structure-ref
                                     _%self155892170716%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method170741170746%_
                                    (##unchecked-structure-ref
                                     _%self155892170716%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method170741170746%_
                                _%object170740170745%_
                                _%size-hint170731%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp172577))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170747170752%_
                             (##unchecked-structure-ref
                              _%self155892170716%_
                              '1
                              '#f
                              'new))
                            (_%method170748170753%_
                             (##unchecked-structure-ref
                              _%self155892170716%_
                              '7
                              '#f
                              'new)))
                        (_%method170748170753%_
                         _%object170747170752%_
                         _%size-hint170731%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint170712%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self155892170758%_)
        (let ((_%size-hint170760%_ '#f))
          (::HashTable-new__% _%self155892170758%_ _%size-hint170760%_))))
    (define ::HashTable-new
      (lambda _g172578_
        (let ((_g172579_ (let () (declare (not safe)) (##length _g172578_))))
          (cond ((let () (declare (not safe)) (##fx= _g172579_ 1))
                 (apply ::HashTable-new__0 _g172578_))
                ((let () (declare (not safe)) (##fx= _g172579_ 2))
                 (apply ::HashTable-new__% _g172578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g172578_))))))
    (define __HashTable-ref
      (lambda (_%self156135170691%_ _%key170692%_ _%default170693%_)
        (let ((_%self156135170695%_ _%self156135170691%_))
          (declare (not safe))
          (let ((_%object170702170707%_
                 (##unchecked-structure-ref _%self156135170695%_ '1 '#f 'ref))
                (_%method170703170708%_
                 (##unchecked-structure-ref _%self156135170695%_ '8 '#f 'ref)))
            (_%method170703170708%_
             _%object170702170707%_
             _%key170692%_
             _%default170693%_)))))
    (define ::HashTable-ref
      (lambda (_%self156136170662%_ _%key170663%_ _%default170664%_)
        (let* ((_%self156136170666%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self156136170662%_)))
               (_%self156136170668%_ _%self156136170666%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170676170681%_
                       (##unchecked-structure-ref
                        _%self156136170668%_
                        '1
                        '#f
                        'ref))
                      (_%method170677170682%_
                       (##unchecked-structure-ref
                        _%self156136170668%_
                        '8
                        '#f
                        'ref)))
                  (_%method170677170682%_
                   _%object170676170681%_
                   _%key170663%_
                   _%default170664%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170683170688%_
                       (##unchecked-structure-ref
                        _%self156136170668%_
                        '1
                        '#f
                        'ref))
                      (_%method170684170689%_
                       (##unchecked-structure-ref
                        _%self156136170668%_
                        '8
                        '#f
                        'ref)))
                  (_%method170684170689%_
                   _%object170683170688%_
                   _%key170663%_
                   _%default170664%_)))))))
    (define __HashTable-set!
      (lambda (_%self156379170643%_ _%key170644%_ _%value170645%_)
        (let ((_%self156379170647%_ _%self156379170643%_))
          (declare (not safe))
          (let ((_%object170654170659%_
                 (##unchecked-structure-ref _%self156379170647%_ '1 '#f 'set!))
                (_%method170655170660%_
                 (##unchecked-structure-ref
                  _%self156379170647%_
                  '9
                  '#f
                  'set!)))
            (_%method170655170660%_
             _%object170654170659%_
             _%key170644%_
             _%value170645%_)))))
    (define ::HashTable-set!
      (lambda (_%self156380170614%_ _%key170615%_ _%value170616%_)
        (let* ((_%self156380170618%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self156380170614%_)))
               (_%self156380170620%_ _%self156380170618%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170628170633%_
                       (##unchecked-structure-ref
                        _%self156380170620%_
                        '1
                        '#f
                        'set!))
                      (_%method170629170634%_
                       (##unchecked-structure-ref
                        _%self156380170620%_
                        '9
                        '#f
                        'set!)))
                  (_%method170629170634%_
                   _%object170628170633%_
                   _%key170615%_
                   _%value170616%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170635170640%_
                       (##unchecked-structure-ref
                        _%self156380170620%_
                        '1
                        '#f
                        'set!))
                      (_%method170636170641%_
                       (##unchecked-structure-ref
                        _%self156380170620%_
                        '9
                        '#f
                        'set!)))
                  (_%method170636170641%_
                   _%object170635170640%_
                   _%key170615%_
                   _%value170616%_)))))))
    (define __HashTable-update!
      (lambda (_%self156623170586%_
               _%key170587%_
               _%proc170588%_
               _%default170589%_)
        (let* ((_%self156623170591%_ _%self156623170586%_)
               (_%proc170598%_ _%proc170588%_))
          (declare (not safe))
          (let ((_%object170606170611%_
                 (##unchecked-structure-ref
                  _%self156623170591%_
                  '1
                  '#f
                  'update!))
                (_%method170607170612%_
                 (##unchecked-structure-ref
                  _%self156623170591%_
                  '10
                  '#f
                  'update!)))
            (_%method170607170612%_
             _%object170606170611%_
             _%key170587%_
             _%proc170598%_
             _%default170589%_)))))
    (define ::HashTable-update!
      (lambda (_%self156624170546%_
               _%key170547%_
               _%proc170548%_
               _%default170549%_)
        (let* ((_%self156624170551%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self156624170546%_)))
               (_%self156624170553%_ _%self156624170551%_))
          (if (procedure? _%proc170548%_)
              (let ((_%proc170562%_ _%proc170548%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object170571170576%_
                             (##unchecked-structure-ref
                              _%self156624170553%_
                              '1
                              '#f
                              'update!))
                            (_%method170572170577%_
                             (##unchecked-structure-ref
                              _%self156624170553%_
                              '10
                              '#f
                              'update!)))
                        (_%method170572170577%_
                         _%object170571170576%_
                         _%key170547%_
                         _%proc170562%_
                         _%default170549%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170578170583%_
                             (##unchecked-structure-ref
                              _%self156624170553%_
                              '1
                              '#f
                              'update!))
                            (_%method170579170584%_
                             (##unchecked-structure-ref
                              _%self156624170553%_
                              '10
                              '#f
                              'update!)))
                        (_%method170579170584%_
                         _%object170578170583%_
                         _%key170547%_
                         _%proc170562%_
                         _%default170549%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc170548%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp172580 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'Locker::t
         'Locker
         __tmp172580
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj172566
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj172566
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj172566))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj170544%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj170544%_))))
    (define try-Locker
      (lambda (_%obj170542%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj170542%_))))
    (define Locker?
      (lambda (_%obj170540%_)
        (let ((__tmp172581
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj170540%_ __tmp172581))))
    (define is-Locker?
      (lambda (_%obj170537%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj170537%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self156867170520%_)
        (let ((_%self156867170522%_ _%self156867170520%_))
          (declare (not safe))
          (let ((_%object170529170534%_
                 (##unchecked-structure-ref
                  _%self156867170522%_
                  '1
                  '#f
                  'read-lock!))
                (_%method170530170535%_
                 (##unchecked-structure-ref
                  _%self156867170522%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method170530170535%_ _%object170529170534%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self156868170493%_)
        (let* ((_%self156868170495%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self156868170493%_)))
               (_%self156868170497%_ _%self156868170495%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170505170510%_
                       (##unchecked-structure-ref
                        _%self156868170497%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method170506170511%_
                       (##unchecked-structure-ref
                        _%self156868170497%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method170506170511%_ _%object170505170510%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170512170517%_
                       (##unchecked-structure-ref
                        _%self156868170497%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method170513170518%_
                       (##unchecked-structure-ref
                        _%self156868170497%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method170513170518%_ _%object170512170517%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self157111170476%_)
        (let ((_%self157111170478%_ _%self157111170476%_))
          (declare (not safe))
          (let ((_%object170485170490%_
                 (##unchecked-structure-ref
                  _%self157111170478%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method170486170491%_
                 (##unchecked-structure-ref
                  _%self157111170478%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method170486170491%_ _%object170485170490%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self157112170449%_)
        (let* ((_%self157112170451%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self157112170449%_)))
               (_%self157112170453%_ _%self157112170451%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170461170466%_
                       (##unchecked-structure-ref
                        _%self157112170453%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method170462170467%_
                       (##unchecked-structure-ref
                        _%self157112170453%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method170462170467%_ _%object170461170466%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170468170473%_
                       (##unchecked-structure-ref
                        _%self157112170453%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method170469170474%_
                       (##unchecked-structure-ref
                        _%self157112170453%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method170469170474%_ _%object170468170473%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self157355170432%_)
        (let ((_%self157355170434%_ _%self157355170432%_))
          (declare (not safe))
          (let ((_%object170441170446%_
                 (##unchecked-structure-ref
                  _%self157355170434%_
                  '1
                  '#f
                  'write-lock!))
                (_%method170442170447%_
                 (##unchecked-structure-ref
                  _%self157355170434%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method170442170447%_ _%object170441170446%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self157356170405%_)
        (let* ((_%self157356170407%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self157356170405%_)))
               (_%self157356170409%_ _%self157356170407%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170417170422%_
                       (##unchecked-structure-ref
                        _%self157356170409%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method170418170423%_
                       (##unchecked-structure-ref
                        _%self157356170409%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method170418170423%_ _%object170417170422%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170424170429%_
                       (##unchecked-structure-ref
                        _%self157356170409%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method170425170430%_
                       (##unchecked-structure-ref
                        _%self157356170409%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method170425170430%_ _%object170424170429%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self157599170388%_)
        (let ((_%self157599170390%_ _%self157599170388%_))
          (declare (not safe))
          (let ((_%object170397170402%_
                 (##unchecked-structure-ref
                  _%self157599170390%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method170398170403%_
                 (##unchecked-structure-ref
                  _%self157599170390%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method170398170403%_ _%object170397170402%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self157600170361%_)
        (let* ((_%self157600170363%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self157600170361%_)))
               (_%self157600170365%_ _%self157600170363%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170373170378%_
                       (##unchecked-structure-ref
                        _%self157600170365%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method170374170379%_
                       (##unchecked-structure-ref
                        _%self157600170365%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method170374170379%_ _%object170373170378%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170380170385%_
                       (##unchecked-structure-ref
                        _%self157600170365%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method170381170386%_
                       (##unchecked-structure-ref
                        _%self157600170365%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method170381170386%_ _%object170380170385%_)))))))
    (define __wrap-hash
      (lambda (_%proc170347%_)
        (let ((_%proc170350%_ _%proc170347%_))
          (lambda (_%self170359%_)
            (let ((__tmp172582
                   (let ()
                     (declare (not safe))
                     (_%proc170350%_ _%self170359%_))))
              (declare (not safe))
              (cast HashTable::interface __tmp172582))))))
    (define wrap-hash
      (lambda (_%proc170333%_)
        (if (procedure? _%proc170333%_)
            (let ((_%proc170337%_ _%proc170333%_))
              (__wrap-hash _%proc170337%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@42.18-42.22"
               'contract:
               'procedure?
               'value:
               _%proc170333%_)
              '#!void))))
    (define __wrap-hash-new
      (lambda (_%proc170307%_)
        (let* ((_%proc170310%_ _%proc170307%_)
               (_%$%opt-lambda170318170323%_
                (lambda (_%self170320%_ _%size-hint170321%_)
                  (let ((__tmp172583
                         (let ()
                           (declare (not safe))
                           (_%proc170310%_
                            _%self170320%_
                            _%size-hint170321%_))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp172583)))))
          (lambda _g172584_
            (let ((_g172585_
                   (let () (declare (not safe)) (##length _g172584_))))
              (cond ((let () (declare (not safe)) (##fx= _g172585_ 1))
                     (apply (lambda (_%self170326%_)
                              (let ((_%size-hint170328%_ '#f))
                                (_%$%opt-lambda170318170323%_
                                 _%self170326%_
                                 _%size-hint170328%_)))
                            _g172584_))
                    ((let () (declare (not safe)) (##fx= _g172585_ 2))
                     (apply _%$%opt-lambda170318170323%_ _g172584_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g172584_))))))))
    (define wrap-hash-new
      (lambda (_%proc170293%_)
        (if (procedure? _%proc170293%_)
            (let ((_%proc170297%_ _%proc170293%_))
              (__wrap-hash-new _%proc170297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@46.22-46.26"
               'contract:
               'procedure?
               'value:
               _%proc170293%_)
              '#!void))))
    (let* ((_%klass170256%_ __table::t)
           (_%id170259%_ 'HashTable::ref)
           (_%proc170262%_ raw-table-ref)
           (_%rebind?170265%_ '#f)
           (_%id170270%_ _%id170259%_)
           (_%proc170283%_ _%proc170262%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170256%_
       _%id170270%_
       _%proc170283%_
       _%rebind?170265%_))
    (let* ((_%klass170219%_ __table::t)
           (_%id170222%_ 'HashTable::set!)
           (_%proc170225%_ raw-table-set!)
           (_%rebind?170228%_ '#f)
           (_%id170233%_ _%id170222%_)
           (_%proc170246%_ _%proc170225%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170219%_
       _%id170233%_
       _%proc170246%_
       _%rebind?170228%_))
    (let* ((_%klass170182%_ __table::t)
           (_%id170185%_ 'HashTable::update!)
           (_%proc170188%_ raw-table-update!)
           (_%rebind?170191%_ '#f)
           (_%id170196%_ _%id170185%_)
           (_%proc170209%_ _%proc170188%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170182%_
       _%id170196%_
       _%proc170209%_
       _%rebind?170191%_))
    (let* ((_%klass170145%_ __table::t)
           (_%id170148%_ 'HashTable::delete!)
           (_%proc170151%_ raw-table-delete!)
           (_%rebind?170154%_ '#f)
           (_%id170159%_ _%id170148%_)
           (_%proc170172%_ _%proc170151%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170145%_
       _%id170159%_
       _%proc170172%_
       _%rebind?170154%_))
    (let* ((_%klass170108%_ __table::t)
           (_%id170111%_ 'HashTable::for-each)
           (_%proc170114%_ raw-table-for-each)
           (_%rebind?170117%_ '#f)
           (_%id170122%_ _%id170111%_)
           (_%proc170135%_ _%proc170114%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170108%_
       _%id170122%_
       _%proc170135%_
       _%rebind?170117%_))
    (let* ((_%klass170071%_ __table::t)
           (_%id170074%_ 'HashTable::length)
           (_%proc170077%_ &raw-table-count)
           (_%rebind?170080%_ '#f)
           (_%id170085%_ _%id170074%_)
           (_%proc170098%_ _%proc170077%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170071%_
       _%id170085%_
       _%proc170098%_
       _%rebind?170080%_))
    (let* ((_%klass170019%_ __table::t)
           (_%id170022%_ 'HashTable::copy)
           (_%proc170042%_
            (let* ((_%proc170025%_ raw-table-copy)
                   (_%proc170030%_ _%proc170025%_))
              (__wrap-hash _%proc170030%_)))
           (_%rebind?170045%_ '#f)
           (_%id170050%_ _%id170022%_))
      (if (procedure? _%proc170042%_)
          (let ((_%proc170061%_ _%proc170042%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass170019%_
             _%id170050%_
             _%proc170061%_
             _%rebind?170045%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc170042%_)
            '#!void)))
    (let* ((_%klass169967%_ __table::t)
           (_%id169970%_ 'HashTable::new)
           (_%proc169990%_
            (let* ((_%proc169973%_ raw-table-new)
                   (_%proc169978%_ _%proc169973%_))
              (__wrap-hash-new _%proc169978%_)))
           (_%rebind?169993%_ '#f)
           (_%id169998%_ _%id169970%_))
      (if (procedure? _%proc169990%_)
          (let ((_%proc170009%_ _%proc169990%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169967%_
             _%id169998%_
             _%proc170009%_
             _%rebind?169993%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169990%_)
            '#!void)))
    (let* ((_%klass169930%_ __table::t)
           (_%id169933%_ 'HashTable::clear!)
           (_%proc169936%_ raw-table-clear!)
           (_%rebind?169939%_ '#f)
           (_%id169944%_ _%id169933%_)
           (_%proc169957%_ _%proc169936%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169930%_
       _%id169944%_
       _%proc169957%_
       _%rebind?169939%_))
    (let* ((_%klass169893%_ __gc-table::t)
           (_%id169896%_ 'HashTable::ref)
           (_%proc169899%_ gc-table-ref)
           (_%rebind?169902%_ '#f)
           (_%id169907%_ _%id169896%_)
           (_%proc169920%_ _%proc169899%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169893%_
       _%id169907%_
       _%proc169920%_
       _%rebind?169902%_))
    (let* ((_%klass169856%_ __gc-table::t)
           (_%id169859%_ 'HashTable::set!)
           (_%proc169862%_ gc-table-set!)
           (_%rebind?169865%_ '#f)
           (_%id169870%_ _%id169859%_)
           (_%proc169883%_ _%proc169862%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169856%_
       _%id169870%_
       _%proc169883%_
       _%rebind?169865%_))
    (let* ((_%klass169819%_ __gc-table::t)
           (_%id169822%_ 'HashTable::update!)
           (_%proc169825%_ gc-table-update!)
           (_%rebind?169828%_ '#f)
           (_%id169833%_ _%id169822%_)
           (_%proc169846%_ _%proc169825%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169819%_
       _%id169833%_
       _%proc169846%_
       _%rebind?169828%_))
    (let* ((_%klass169782%_ __gc-table::t)
           (_%id169785%_ 'HashTable::delete!)
           (_%proc169788%_ gc-table-delete!)
           (_%rebind?169791%_ '#f)
           (_%id169796%_ _%id169785%_)
           (_%proc169809%_ _%proc169788%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169782%_
       _%id169796%_
       _%proc169809%_
       _%rebind?169791%_))
    (let* ((_%klass169745%_ __gc-table::t)
           (_%id169748%_ 'HashTable::for-each)
           (_%proc169751%_ gc-table-for-each)
           (_%rebind?169754%_ '#f)
           (_%id169759%_ _%id169748%_)
           (_%proc169772%_ _%proc169751%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169745%_
       _%id169759%_
       _%proc169772%_
       _%rebind?169754%_))
    (let* ((_%klass169708%_ __gc-table::t)
           (_%id169711%_ 'HashTable::length)
           (_%proc169714%_ gc-table-length)
           (_%rebind?169717%_ '#f)
           (_%id169722%_ _%id169711%_)
           (_%proc169735%_ _%proc169714%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169708%_
       _%id169722%_
       _%proc169735%_
       _%rebind?169717%_))
    (let* ((_%klass169656%_ __gc-table::t)
           (_%id169659%_ 'HashTable::copy)
           (_%proc169679%_
            (let* ((_%proc169662%_ gc-table-copy)
                   (_%proc169667%_ _%proc169662%_))
              (__wrap-hash _%proc169667%_)))
           (_%rebind?169682%_ '#f)
           (_%id169687%_ _%id169659%_))
      (if (procedure? _%proc169679%_)
          (let ((_%proc169698%_ _%proc169679%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169656%_
             _%id169687%_
             _%proc169698%_
             _%rebind?169682%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169679%_)
            '#!void)))
    (let* ((_%klass169604%_ __gc-table::t)
           (_%id169607%_ 'HashTable::new)
           (_%proc169627%_
            (let* ((_%proc169610%_ gc-table-new)
                   (_%proc169615%_ _%proc169610%_))
              (__wrap-hash-new _%proc169615%_)))
           (_%rebind?169630%_ '#f)
           (_%id169635%_ _%id169607%_))
      (if (procedure? _%proc169627%_)
          (let ((_%proc169646%_ _%proc169627%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169604%_
             _%id169635%_
             _%proc169646%_
             _%rebind?169630%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169627%_)
            '#!void)))
    (let* ((_%klass169567%_ __gc-table::t)
           (_%id169570%_ 'HashTable::clear!)
           (_%proc169573%_ gc-table-clear!)
           (_%rebind?169576%_ '#f)
           (_%id169581%_ _%id169570%_)
           (_%proc169594%_ _%proc169573%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169567%_
       _%id169581%_
       _%proc169594%_
       _%rebind?169576%_))
    (define gambit-table-update!
      (lambda (_%table169560%_
               _%key169561%_
               _%update169562%_
               _%default169563%_)
        (let ((_%result169565%_
               (table-ref _%table169560%_ _%key169561%_ _%default169563%_)))
          (table-set!
           _%table169560%_
           _%key169561%_
           (_%update169562%_ _%result169565%_)))))
    (define gambit-table-for-each
      (lambda (_%table169557%_ _%proc169558%_)
        (table-for-each _%proc169558%_ _%table169557%_)))
    (define gambit-table-clear!
      (lambda (_%table169555%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table169555%_ '0 '5 '#f '#f))))
    (let* ((_%klass169518%_ (macro-type-table))
           (_%id169521%_ 'HashTable::ref)
           (_%proc169524%_ table-ref)
           (_%rebind?169527%_ '#f)
           (_%id169532%_ _%id169521%_)
           (_%proc169545%_ _%proc169524%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169518%_
       _%id169532%_
       _%proc169545%_
       _%rebind?169527%_))
    (let* ((_%klass169481%_ (macro-type-table))
           (_%id169484%_ 'HashTable::set!)
           (_%proc169487%_ table-set!)
           (_%rebind?169490%_ '#f)
           (_%id169495%_ _%id169484%_)
           (_%proc169508%_ _%proc169487%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169481%_
       _%id169495%_
       _%proc169508%_
       _%rebind?169490%_))
    (let* ((_%klass169444%_ (macro-type-table))
           (_%id169447%_ 'HashTable::update!)
           (_%proc169450%_ gambit-table-update!)
           (_%rebind?169453%_ '#f)
           (_%id169458%_ _%id169447%_)
           (_%proc169471%_ _%proc169450%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169444%_
       _%id169458%_
       _%proc169471%_
       _%rebind?169453%_))
    (let* ((_%klass169407%_ (macro-type-table))
           (_%id169410%_ 'HashTable::delete!)
           (_%proc169413%_ table-set!)
           (_%rebind?169416%_ '#f)
           (_%id169421%_ _%id169410%_)
           (_%proc169434%_ _%proc169413%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169407%_
       _%id169421%_
       _%proc169434%_
       _%rebind?169416%_))
    (let* ((_%klass169370%_ (macro-type-table))
           (_%id169373%_ 'HashTable::for-each)
           (_%proc169376%_ gambit-table-for-each)
           (_%rebind?169379%_ '#f)
           (_%id169384%_ _%id169373%_)
           (_%proc169397%_ _%proc169376%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169370%_
       _%id169384%_
       _%proc169397%_
       _%rebind?169379%_))
    (let* ((_%klass169333%_ (macro-type-table))
           (_%id169336%_ 'HashTable::length)
           (_%proc169339%_ table-length)
           (_%rebind?169342%_ '#f)
           (_%id169347%_ _%id169336%_)
           (_%proc169360%_ _%proc169339%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169333%_
       _%id169347%_
       _%proc169360%_
       _%rebind?169342%_))
    (let* ((_%klass169281%_ (macro-type-table))
           (_%id169284%_ 'HashTable::copy)
           (_%proc169304%_
            (let* ((_%proc169287%_ table-copy) (_%proc169292%_ _%proc169287%_))
              (__wrap-hash _%proc169292%_)))
           (_%rebind?169307%_ '#f)
           (_%id169312%_ _%id169284%_))
      (if (procedure? _%proc169304%_)
          (let ((_%proc169323%_ _%proc169304%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169281%_
             _%id169312%_
             _%proc169323%_
             _%rebind?169307%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169304%_)
            '#!void)))
    (let* ((_%klass169229%_ (macro-type-table))
           (_%id169232%_ 'HashTable::new)
           (_%proc169252%_
            (let* ((_%proc169235%_ table-new) (_%proc169240%_ _%proc169235%_))
              (__wrap-hash-new _%proc169240%_)))
           (_%rebind?169255%_ '#f)
           (_%id169260%_ _%id169232%_))
      (if (procedure? _%proc169252%_)
          (let ((_%proc169271%_ _%proc169252%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169229%_
             _%id169260%_
             _%proc169271%_
             _%rebind?169255%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169252%_)
            '#!void)))
    (let* ((_%klass169192%_ (macro-type-table))
           (_%id169195%_ 'HashTable::clear!)
           (_%proc169198%_ gambit-table-clear!)
           (_%rebind?169201%_ '#f)
           (_%id169206%_ _%id169195%_)
           (_%proc169219%_ _%proc169198%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169192%_
       _%id169206%_
       _%proc169219%_
       _%rebind?169201%_))
    (define hash-table::t
      (let* ((_%slots169155%_ '(table count free hash test seed lock))
             (_%slot-vector169157%_ (list->vector (cons '#f _%slots169155%_)))
             (_%slot-table169183%_
              (let ((_%slot-table169159%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp172588
                       (lambda (_%slot169161%_ _%field169162%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table169159%_
                            _%slot169161%_
                            _%field169162%_))
                         (let ((__tmp172589
                                (let ((_%sym169164%_ _%slot169161%_))
                                  (if (symbol? _%sym169164%_)
                                      (let ((_%sym169169%_ _%sym169164%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym169169%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym169164%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table169159%_
                            __tmp172589
                            _%field169162%_))))
                      (__tmp172586
                       (let ((__tmp172587
                              (let ()
                                (declare (not safe))
                                (##length _%slots169155%_))))
                         (declare (not safe))
                         (##iota __tmp172587 '1))))
                  (declare (not safe))
                  (##for-each __tmp172588 _%slots169155%_ __tmp172586))
                _%slot-table169159%_))
             (_%flags169185%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields169187%_ '#())
             (_%properties169189%_
              (cons (cons 'direct-slots: _%slots169155%_) '((struct: . #t))))
             (__tmp172590 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags169185%_
         __table::t
         _%fields169187%_
         __tmp172590
         _%slot-vector169157%_
         _%slot-table169183%_
         _%properties169189%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots169118%_ '(gcht immediate))
             (_%slot-vector169120%_ (list->vector (cons '#f _%slots169118%_)))
             (_%slot-table169146%_
              (let ((_%slot-table169122%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp172593
                       (lambda (_%slot169124%_ _%field169125%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table169122%_
                            _%slot169124%_
                            _%field169125%_))
                         (let ((__tmp172594
                                (let ((_%sym169127%_ _%slot169124%_))
                                  (if (symbol? _%sym169127%_)
                                      (let ((_%sym169132%_ _%sym169127%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym169132%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym169127%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table169122%_
                            __tmp172594
                            _%field169125%_))))
                      (__tmp172591
                       (let ((__tmp172592
                              (let ()
                                (declare (not safe))
                                (##length _%slots169118%_))))
                         (declare (not safe))
                         (##iota __tmp172592 '1))))
                  (declare (not safe))
                  (##for-each __tmp172593 _%slots169118%_ __tmp172591))
                _%slot-table169122%_))
             (_%flags169148%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields169150%_ '#())
             (_%properties169152%_
              (cons (cons 'direct-slots: _%slots169118%_) '((struct: . #t))))
             (__tmp172595 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags169148%_
         __gc-table::t
         _%fields169150%_
         __tmp172595
         _%slot-vector169120%_
         _%slot-table169146%_
         _%properties169152%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp172597 (list))
            (__tmp172596
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp172597
         '(table lock)
         __tmp172596
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args169115%_
        (apply make-instance locked-hash-table::t _%$args169115%_)))
    (define locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'table)))
    (define locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor locked-hash-table::t 'lock)))
    (define locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'table)))
    (define locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator locked-hash-table::t 'lock)))
    (define &locked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'table)))
    (define &locked-hash-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor locked-hash-table::t 'lock)))
    (define &locked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'table)))
    (define &locked-hash-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator locked-hash-table::t 'lock)))
    (define checked-hash-table::t
      (let ((__tmp172599 (list))
            (__tmp172598
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp172599
         '(table key-check)
         __tmp172598
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args169112%_
        (apply make-instance checked-hash-table::t _%$args169112%_)))
    (define checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'table)))
    (define checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor checked-hash-table::t 'key-check)))
    (define checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'table)))
    (define checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator checked-hash-table::t 'key-check)))
    (define &checked-hash-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         checked-hash-table::t
         'key-check)))
    (define &checked-hash-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator checked-hash-table::t 'table)))
    (define &checked-hash-table-key-check-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         checked-hash-table::t
         'key-check)))
    (define eq-hash-table::t
      (let ((__tmp172601 (list hash-table::t))
            (__tmp172600 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp172601
         '()
         __tmp172600
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args169109%_
        (apply make-instance eq-hash-table::t _%$args169109%_)))
    (define eqv-hash-table::t
      (let ((__tmp172603 (list hash-table::t))
            (__tmp172602 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp172603
         '()
         __tmp172602
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args169106%_
        (apply make-instance eqv-hash-table::t _%$args169106%_)))
    (define symbol-hash-table::t
      (let ((__tmp172605 (list hash-table::t))
            (__tmp172604 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp172605
         '()
         __tmp172604
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args169103%_
        (apply make-instance symbol-hash-table::t _%$args169103%_)))
    (define string-hash-table::t
      (let ((__tmp172607 (list hash-table::t))
            (__tmp172606 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp172607
         '()
         __tmp172606
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args169100%_
        (apply make-instance string-hash-table::t _%$args169100%_)))
    (define immediate-hash-table::t
      (let ((__tmp172609 (list hash-table::t))
            (__tmp172608 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp172609
         '()
         __tmp172608
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args169097%_
        (apply make-instance immediate-hash-table::t _%$args169097%_)))
    (let* ((_%klass169060%_ hash-table::t)
           (_%id169063%_ 'HashTable::ref)
           (_%proc169066%_ raw-table-ref)
           (_%rebind?169069%_ '#f)
           (_%id169074%_ _%id169063%_)
           (_%proc169087%_ _%proc169066%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169060%_
       _%id169074%_
       _%proc169087%_
       _%rebind?169069%_))
    (let* ((_%klass169023%_ hash-table::t)
           (_%id169026%_ 'HashTable::set!)
           (_%proc169029%_ raw-table-set!)
           (_%rebind?169032%_ '#f)
           (_%id169037%_ _%id169026%_)
           (_%proc169050%_ _%proc169029%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169023%_
       _%id169037%_
       _%proc169050%_
       _%rebind?169032%_))
    (let* ((_%klass168986%_ hash-table::t)
           (_%id168989%_ 'HashTable::update!)
           (_%proc168992%_ raw-table-update!)
           (_%rebind?168995%_ '#f)
           (_%id169000%_ _%id168989%_)
           (_%proc169013%_ _%proc168992%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168986%_
       _%id169000%_
       _%proc169013%_
       _%rebind?168995%_))
    (let* ((_%klass168949%_ hash-table::t)
           (_%id168952%_ 'HashTable::delete!)
           (_%proc168955%_ raw-table-delete!)
           (_%rebind?168958%_ '#f)
           (_%id168963%_ _%id168952%_)
           (_%proc168976%_ _%proc168955%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168949%_
       _%id168963%_
       _%proc168976%_
       _%rebind?168958%_))
    (let* ((_%klass168912%_ hash-table::t)
           (_%id168915%_ 'HashTable::for-each)
           (_%proc168918%_ raw-table-for-each)
           (_%rebind?168921%_ '#f)
           (_%id168926%_ _%id168915%_)
           (_%proc168939%_ _%proc168918%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168912%_
       _%id168926%_
       _%proc168939%_
       _%rebind?168921%_))
    (let* ((_%klass168875%_ hash-table::t)
           (_%id168878%_ 'HashTable::length)
           (_%proc168881%_ &raw-table-count)
           (_%rebind?168884%_ '#f)
           (_%id168889%_ _%id168878%_)
           (_%proc168902%_ _%proc168881%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168875%_
       _%id168889%_
       _%proc168902%_
       _%rebind?168884%_))
    (let* ((_%klass168823%_ hash-table::t)
           (_%id168826%_ 'HashTable::copy)
           (_%proc168846%_
            (let* ((_%proc168829%_ raw-table-copy)
                   (_%proc168834%_ _%proc168829%_))
              (__wrap-hash _%proc168834%_)))
           (_%rebind?168849%_ '#f)
           (_%id168854%_ _%id168826%_))
      (if (procedure? _%proc168846%_)
          (let ((_%proc168865%_ _%proc168846%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass168823%_
             _%id168854%_
             _%proc168865%_
             _%rebind?168849%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc168846%_)
            '#!void)))
    (let* ((_%klass168771%_ hash-table::t)
           (_%id168774%_ 'HashTable::new)
           (_%proc168794%_
            (let* ((_%proc168777%_ raw-table-new)
                   (_%proc168782%_ _%proc168777%_))
              (__wrap-hash-new _%proc168782%_)))
           (_%rebind?168797%_ '#f)
           (_%id168802%_ _%id168774%_))
      (if (procedure? _%proc168794%_)
          (let ((_%proc168813%_ _%proc168794%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass168771%_
             _%id168802%_
             _%proc168813%_
             _%rebind?168797%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc168794%_)
            '#!void)))
    (let* ((_%klass168734%_ hash-table::t)
           (_%id168737%_ 'HashTable::clear!)
           (_%proc168740%_ raw-table-clear!)
           (_%rebind?168743%_ '#f)
           (_%id168748%_ _%id168737%_)
           (_%proc168761%_ _%proc168740%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168734%_
       _%id168748%_
       _%proc168761%_
       _%rebind?168743%_))
    (let* ((_%klass168697%_ eq-hash-table::t)
           (_%id168700%_ 'HashTable::ref)
           (_%proc168703%_ eq-table-ref)
           (_%rebind?168706%_ '#f)
           (_%id168711%_ _%id168700%_)
           (_%proc168724%_ _%proc168703%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168697%_
       _%id168711%_
       _%proc168724%_
       _%rebind?168706%_))
    (let* ((_%klass168660%_ eq-hash-table::t)
           (_%id168663%_ 'HashTable::set!)
           (_%proc168666%_ eq-table-set!)
           (_%rebind?168669%_ '#f)
           (_%id168674%_ _%id168663%_)
           (_%proc168687%_ _%proc168666%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168660%_
       _%id168674%_
       _%proc168687%_
       _%rebind?168669%_))
    (let* ((_%klass168623%_ eq-hash-table::t)
           (_%id168626%_ 'HashTable::update!)
           (_%proc168629%_ eq-table-update!)
           (_%rebind?168632%_ '#f)
           (_%id168637%_ _%id168626%_)
           (_%proc168650%_ _%proc168629%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168623%_
       _%id168637%_
       _%proc168650%_
       _%rebind?168632%_))
    (let* ((_%klass168586%_ eq-hash-table::t)
           (_%id168589%_ 'HashTable::delete!)
           (_%proc168592%_ eq-table-delete!)
           (_%rebind?168595%_ '#f)
           (_%id168600%_ _%id168589%_)
           (_%proc168613%_ _%proc168592%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168586%_
       _%id168600%_
       _%proc168613%_
       _%rebind?168595%_))
    (let* ((_%klass168549%_ eqv-hash-table::t)
           (_%id168552%_ 'HashTable::ref)
           (_%proc168555%_ eqv-table-ref)
           (_%rebind?168558%_ '#f)
           (_%id168563%_ _%id168552%_)
           (_%proc168576%_ _%proc168555%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168549%_
       _%id168563%_
       _%proc168576%_
       _%rebind?168558%_))
    (let* ((_%klass168512%_ eqv-hash-table::t)
           (_%id168515%_ 'HashTable::set!)
           (_%proc168518%_ eqv-table-set!)
           (_%rebind?168521%_ '#f)
           (_%id168526%_ _%id168515%_)
           (_%proc168539%_ _%proc168518%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168512%_
       _%id168526%_
       _%proc168539%_
       _%rebind?168521%_))
    (let* ((_%klass168475%_ eqv-hash-table::t)
           (_%id168478%_ 'HashTable::update!)
           (_%proc168481%_ eqv-table-update!)
           (_%rebind?168484%_ '#f)
           (_%id168489%_ _%id168478%_)
           (_%proc168502%_ _%proc168481%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168475%_
       _%id168489%_
       _%proc168502%_
       _%rebind?168484%_))
    (let* ((_%klass168438%_ eqv-hash-table::t)
           (_%id168441%_ 'HashTable::delete!)
           (_%proc168444%_ eqv-table-delete!)
           (_%rebind?168447%_ '#f)
           (_%id168452%_ _%id168441%_)
           (_%proc168465%_ _%proc168444%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168438%_
       _%id168452%_
       _%proc168465%_
       _%rebind?168447%_))
    (let* ((_%klass168401%_ symbol-hash-table::t)
           (_%id168404%_ 'HashTable::ref)
           (_%proc168407%_ symbolic-table-ref)
           (_%rebind?168410%_ '#f)
           (_%id168415%_ _%id168404%_)
           (_%proc168428%_ _%proc168407%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168401%_
       _%id168415%_
       _%proc168428%_
       _%rebind?168410%_))
    (let* ((_%klass168364%_ symbol-hash-table::t)
           (_%id168367%_ 'HashTable::set!)
           (_%proc168370%_ symbolic-table-set!)
           (_%rebind?168373%_ '#f)
           (_%id168378%_ _%id168367%_)
           (_%proc168391%_ _%proc168370%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168364%_
       _%id168378%_
       _%proc168391%_
       _%rebind?168373%_))
    (let* ((_%klass168327%_ symbol-hash-table::t)
           (_%id168330%_ 'HashTable::update!)
           (_%proc168333%_ symbolic-table-update!)
           (_%rebind?168336%_ '#f)
           (_%id168341%_ _%id168330%_)
           (_%proc168354%_ _%proc168333%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168327%_
       _%id168341%_
       _%proc168354%_
       _%rebind?168336%_))
    (let* ((_%klass168290%_ symbol-hash-table::t)
           (_%id168293%_ 'HashTable::delete!)
           (_%proc168296%_ symbolic-table-delete!)
           (_%rebind?168299%_ '#f)
           (_%id168304%_ _%id168293%_)
           (_%proc168317%_ _%proc168296%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168290%_
       _%id168304%_
       _%proc168317%_
       _%rebind?168299%_))
    (let* ((_%klass168253%_ string-hash-table::t)
           (_%id168256%_ 'HashTable::ref)
           (_%proc168259%_ string-table-ref)
           (_%rebind?168262%_ '#f)
           (_%id168267%_ _%id168256%_)
           (_%proc168280%_ _%proc168259%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168253%_
       _%id168267%_
       _%proc168280%_
       _%rebind?168262%_))
    (let* ((_%klass168216%_ string-hash-table::t)
           (_%id168219%_ 'HashTable::set!)
           (_%proc168222%_ string-table-set!)
           (_%rebind?168225%_ '#f)
           (_%id168230%_ _%id168219%_)
           (_%proc168243%_ _%proc168222%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168216%_
       _%id168230%_
       _%proc168243%_
       _%rebind?168225%_))
    (let* ((_%klass168179%_ string-hash-table::t)
           (_%id168182%_ 'HashTable::update!)
           (_%proc168185%_ string-table-update!)
           (_%rebind?168188%_ '#f)
           (_%id168193%_ _%id168182%_)
           (_%proc168206%_ _%proc168185%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168179%_
       _%id168193%_
       _%proc168206%_
       _%rebind?168188%_))
    (let* ((_%klass168142%_ string-hash-table::t)
           (_%id168145%_ 'HashTable::delete!)
           (_%proc168148%_ string-table-delete!)
           (_%rebind?168151%_ '#f)
           (_%id168156%_ _%id168145%_)
           (_%proc168169%_ _%proc168148%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168142%_
       _%id168156%_
       _%proc168169%_
       _%rebind?168151%_))
    (let* ((_%klass168105%_ immediate-hash-table::t)
           (_%id168108%_ 'HashTable::ref)
           (_%proc168111%_ immediate-table-ref)
           (_%rebind?168114%_ '#f)
           (_%id168119%_ _%id168108%_)
           (_%proc168132%_ _%proc168111%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168105%_
       _%id168119%_
       _%proc168132%_
       _%rebind?168114%_))
    (let* ((_%klass168068%_ immediate-hash-table::t)
           (_%id168071%_ 'HashTable::set!)
           (_%proc168074%_ immediate-table-set!)
           (_%rebind?168077%_ '#f)
           (_%id168082%_ _%id168071%_)
           (_%proc168095%_ _%proc168074%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168068%_
       _%id168082%_
       _%proc168095%_
       _%rebind?168077%_))
    (let* ((_%klass168031%_ immediate-hash-table::t)
           (_%id168034%_ 'HashTable::update!)
           (_%proc168037%_ immediate-table-update!)
           (_%rebind?168040%_ '#f)
           (_%id168045%_ _%id168034%_)
           (_%proc168058%_ _%proc168037%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168031%_
       _%id168045%_
       _%proc168058%_
       _%rebind?168040%_))
    (let* ((_%klass167994%_ immediate-hash-table::t)
           (_%id167997%_ 'HashTable::delete!)
           (_%proc168000%_ immediate-table-delete!)
           (_%rebind?168003%_ '#f)
           (_%id168008%_ _%id167997%_)
           (_%proc168021%_ _%proc168000%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167994%_
       _%id168008%_
       _%proc168021%_
       _%rebind?168003%_))
    (let* ((_%klass167957%_ gc-hash-table::t)
           (_%id167960%_ 'HashTable::ref)
           (_%proc167963%_ gc-table-ref)
           (_%rebind?167966%_ '#f)
           (_%id167971%_ _%id167960%_)
           (_%proc167984%_ _%proc167963%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167957%_
       _%id167971%_
       _%proc167984%_
       _%rebind?167966%_))
    (let* ((_%klass167920%_ gc-hash-table::t)
           (_%id167923%_ 'HashTable::set!)
           (_%proc167926%_ gc-table-set!)
           (_%rebind?167929%_ '#f)
           (_%id167934%_ _%id167923%_)
           (_%proc167947%_ _%proc167926%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167920%_
       _%id167934%_
       _%proc167947%_
       _%rebind?167929%_))
    (let* ((_%klass167883%_ gc-hash-table::t)
           (_%id167886%_ 'HashTable::update!)
           (_%proc167889%_ gc-table-update!)
           (_%rebind?167892%_ '#f)
           (_%id167897%_ _%id167886%_)
           (_%proc167910%_ _%proc167889%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167883%_
       _%id167897%_
       _%proc167910%_
       _%rebind?167892%_))
    (let* ((_%klass167846%_ gc-hash-table::t)
           (_%id167849%_ 'HashTable::delete!)
           (_%proc167852%_ gc-table-delete!)
           (_%rebind?167855%_ '#f)
           (_%id167860%_ _%id167849%_)
           (_%proc167873%_ _%proc167852%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167846%_
       _%id167860%_
       _%proc167873%_
       _%rebind?167855%_))
    (let* ((_%klass167809%_ gc-hash-table::t)
           (_%id167812%_ 'HashTable::for-each)
           (_%proc167815%_ gc-table-for-each)
           (_%rebind?167818%_ '#f)
           (_%id167823%_ _%id167812%_)
           (_%proc167836%_ _%proc167815%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167809%_
       _%id167823%_
       _%proc167836%_
       _%rebind?167818%_))
    (let* ((_%klass167772%_ gc-hash-table::t)
           (_%id167775%_ 'HashTable::length)
           (_%proc167778%_ gc-table-length)
           (_%rebind?167781%_ '#f)
           (_%id167786%_ _%id167775%_)
           (_%proc167799%_ _%proc167778%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167772%_
       _%id167786%_
       _%proc167799%_
       _%rebind?167781%_))
    (let* ((_%klass167720%_ gc-hash-table::t)
           (_%id167723%_ 'HashTable::copy)
           (_%proc167743%_
            (let* ((_%proc167726%_ gc-table-copy)
                   (_%proc167731%_ _%proc167726%_))
              (__wrap-hash _%proc167731%_)))
           (_%rebind?167746%_ '#f)
           (_%id167751%_ _%id167723%_))
      (if (procedure? _%proc167743%_)
          (let ((_%proc167762%_ _%proc167743%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167720%_
             _%id167751%_
             _%proc167762%_
             _%rebind?167746%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167743%_)
            '#!void)))
    (let* ((_%klass167668%_ gc-hash-table::t)
           (_%id167671%_ 'HashTable::new)
           (_%proc167691%_
            (let* ((_%proc167674%_ gc-table-new)
                   (_%proc167679%_ _%proc167674%_))
              (__wrap-hash-new _%proc167679%_)))
           (_%rebind?167694%_ '#f)
           (_%id167699%_ _%id167671%_))
      (if (procedure? _%proc167691%_)
          (let ((_%proc167710%_ _%proc167691%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167668%_
             _%id167699%_
             _%proc167710%_
             _%rebind?167694%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167691%_)
            '#!void)))
    (let* ((_%klass167631%_ gc-hash-table::t)
           (_%id167634%_ 'HashTable::clear!)
           (_%proc167637%_ gc-table-clear!)
           (_%rebind?167640%_ '#f)
           (_%id167645%_ _%id167634%_)
           (_%proc167658%_ _%proc167637%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167631%_
       _%id167645%_
       _%proc167658%_
       _%rebind?167640%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref158465%_
      (lambda (_%self167552%_ _%key167554%_ _%default167555%_)
        (let* ((_%self167558%_ _%self167552%_)
               (_%key167567%_ _%key167554%_)
               (_%default167575%_ _%default167555%_))
          (let ((_%h167584%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167558%_ '1 '#f '#f)))
                (_%l167586%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167558%_ '2 '#f '#f))))
            (let ((__tmp172612
                   (lambda ()
                     (let ((_%self156865167590%_ _%l167586%_))
                       (declare (not safe))
                       (let ((_%object167593167598%_
                              (##unchecked-structure-ref
                               _%self156865167590%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method167594167599%_
                              (##unchecked-structure-ref
                               _%self156865167590%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method167594167599%_ _%object167593167598%_)))))
                  (__tmp172611
                   (lambda ()
                     (let* ((_%self156133167602%_ _%h167584%_)
                            (_%key167605%_ _%key167567%_)
                            (_%default167608%_ _%default167575%_))
                       (declare (not safe))
                       (let ((_%object167611167616%_
                              (##unchecked-structure-ref
                               _%self156133167602%_
                               '1
                               '#f
                               'ref))
                             (_%method167612167617%_
                              (##unchecked-structure-ref
                               _%self156133167602%_
                               '8
                               '#f
                               'ref)))
                         (_%method167612167617%_
                          _%object167611167616%_
                          _%key167605%_
                          _%default167608%_)))))
                  (__tmp172610
                   (lambda ()
                     (let ((_%self157109167620%_ _%l167586%_))
                       (declare (not safe))
                       (let ((_%object167623167628%_
                              (##unchecked-structure-ref
                               _%self157109167620%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method167624167629%_
                              (##unchecked-structure-ref
                               _%self157109167620%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method167624167629%_ _%object167623167628%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172612 __tmp172611 __tmp172610))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref158465%_
       '#f))
    (define _%locked-hash-table::HashTable::set!158467%_
      (lambda (_%self167350%_ _%key167352%_ _%value167353%_)
        (let* ((_%self167356%_ _%self167350%_)
               (_%key167365%_ _%key167352%_)
               (_%value167373%_ _%value167353%_))
          (let ((_%h167382%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167356%_ '1 '#f '#f)))
                (_%l167384%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167356%_ '2 '#f '#f))))
            (let ((__tmp172615
                   (lambda ()
                     (let ((_%self157353167388%_ _%l167384%_))
                       (declare (not safe))
                       (let ((_%object167391167396%_
                              (##unchecked-structure-ref
                               _%self157353167388%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method167392167397%_
                              (##unchecked-structure-ref
                               _%self157353167388%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method167392167397%_ _%object167391167396%_)))))
                  (__tmp172614
                   (lambda ()
                     (let* ((_%self156377167400%_ _%h167382%_)
                            (_%key167403%_ _%key167365%_)
                            (_%value167406%_ _%value167373%_))
                       (declare (not safe))
                       (let ((_%object167409167414%_
                              (##unchecked-structure-ref
                               _%self156377167400%_
                               '1
                               '#f
                               'set!))
                             (_%method167410167415%_
                              (##unchecked-structure-ref
                               _%self156377167400%_
                               '9
                               '#f
                               'set!)))
                         (_%method167410167415%_
                          _%object167409167414%_
                          _%key167403%_
                          _%value167406%_)))))
                  (__tmp172613
                   (lambda ()
                     (let ((_%self157597167418%_ _%l167384%_))
                       (declare (not safe))
                       (let ((_%object167421167426%_
                              (##unchecked-structure-ref
                               _%self157597167418%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method167422167427%_
                              (##unchecked-structure-ref
                               _%self157597167418%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method167422167427%_ _%object167421167426%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172615 __tmp172614 __tmp172613))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!158467%_
       '#f))
    (define _%locked-hash-table::HashTable::update!158469%_
      (lambda (_%self167136%_ _%key167138%_ _%update167139%_ _%default167140%_)
        (let* ((_%self167143%_ _%self167136%_)
               (_%key167152%_ _%key167138%_)
               (_%update167160%_ _%update167139%_)
               (_%default167168%_ _%default167140%_))
          (let ((_%h167177%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167143%_ '1 '#f '#f)))
                (_%l167179%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167143%_ '2 '#f '#f))))
            (let ((__tmp172618
                   (lambda ()
                     (let ((_%self157353167183%_ _%l167179%_))
                       (declare (not safe))
                       (let ((_%object167186167191%_
                              (##unchecked-structure-ref
                               _%self157353167183%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method167187167192%_
                              (##unchecked-structure-ref
                               _%self157353167183%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method167187167192%_ _%object167186167191%_)))))
                  (__tmp172617
                   (lambda ()
                     (let* ((_%self156621167195%_ _%h167177%_)
                            (_%key167198%_ _%key167152%_)
                            (_%proc167201%_ _%update167160%_)
                            (_%default167204%_ _%default167168%_))
                       (declare (not safe))
                       (let ((_%object167207167212%_
                              (##unchecked-structure-ref
                               _%self156621167195%_
                               '1
                               '#f
                               'update!))
                             (_%method167208167213%_
                              (##unchecked-structure-ref
                               _%self156621167195%_
                               '10
                               '#f
                               'update!)))
                         (_%method167208167213%_
                          _%object167207167212%_
                          _%key167198%_
                          _%proc167201%_
                          _%default167204%_)))))
                  (__tmp172616
                   (lambda ()
                     (let ((_%self157597167216%_ _%l167179%_))
                       (declare (not safe))
                       (let ((_%object167219167224%_
                              (##unchecked-structure-ref
                               _%self157597167216%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method167220167225%_
                              (##unchecked-structure-ref
                               _%self157597167216%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method167220167225%_ _%object167219167224%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172618 __tmp172617 __tmp172616))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!158469%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!158471%_
      (lambda (_%self166946%_ _%key166948%_)
        (let* ((_%self166951%_ _%self166946%_) (_%key166960%_ _%key166948%_))
          (let ((_%h166969%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166951%_ '1 '#f '#f)))
                (_%l166971%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166951%_ '2 '#f '#f))))
            (let ((__tmp172621
                   (lambda ()
                     (let ((_%self157353166975%_ _%l166971%_))
                       (declare (not safe))
                       (let ((_%object166978166983%_
                              (##unchecked-structure-ref
                               _%self157353166975%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method166979166984%_
                              (##unchecked-structure-ref
                               _%self157353166975%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method166979166984%_ _%object166978166983%_)))))
                  (__tmp172620
                   (lambda ()
                     (let* ((_%self155157166987%_ _%h166969%_)
                            (_%key166990%_ _%key166960%_))
                       (declare (not safe))
                       (let ((_%object166993166998%_
                              (##unchecked-structure-ref
                               _%self155157166987%_
                               '1
                               '#f
                               'delete!))
                             (_%method166994166999%_
                              (##unchecked-structure-ref
                               _%self155157166987%_
                               '4
                               '#f
                               'delete!)))
                         (_%method166994166999%_
                          _%object166993166998%_
                          _%key166990%_)))))
                  (__tmp172619
                   (lambda ()
                     (let ((_%self157597167002%_ _%l166971%_))
                       (declare (not safe))
                       (let ((_%object167005167010%_
                              (##unchecked-structure-ref
                               _%self157597167002%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method167006167011%_
                              (##unchecked-structure-ref
                               _%self157597167002%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method167006167011%_ _%object167005167010%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172621 __tmp172620 __tmp172619))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!158471%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each158473%_
      (lambda (_%self166756%_ _%proc166758%_)
        (let* ((_%self166761%_ _%self166756%_) (_%proc166770%_ _%proc166758%_))
          (let ((_%h166779%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166761%_ '1 '#f '#f)))
                (_%l166781%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166761%_ '2 '#f '#f))))
            (let ((__tmp172624
                   (lambda ()
                     (let ((_%self156865166785%_ _%l166781%_))
                       (declare (not safe))
                       (let ((_%object166788166793%_
                              (##unchecked-structure-ref
                               _%self156865166785%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method166789166794%_
                              (##unchecked-structure-ref
                               _%self156865166785%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method166789166794%_ _%object166788166793%_)))))
                  (__tmp172623
                   (lambda ()
                     (let* ((_%self155401166797%_ _%h166779%_)
                            (_%proc166800%_ _%proc166770%_))
                       (declare (not safe))
                       (let ((_%object166803166808%_
                              (##unchecked-structure-ref
                               _%self155401166797%_
                               '1
                               '#f
                               'for-each))
                             (_%method166804166809%_
                              (##unchecked-structure-ref
                               _%self155401166797%_
                               '5
                               '#f
                               'for-each)))
                         (_%method166804166809%_
                          _%object166803166808%_
                          _%proc166800%_)))))
                  (__tmp172622
                   (lambda ()
                     (let ((_%self157109166812%_ _%l166781%_))
                       (declare (not safe))
                       (let ((_%object166815166820%_
                              (##unchecked-structure-ref
                               _%self157109166812%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method166816166821%_
                              (##unchecked-structure-ref
                               _%self157109166812%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method166816166821%_ _%object166815166820%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172624 __tmp172623 __tmp172622))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each158473%_
       '#f))
    (define _%locked-hash-table::HashTable::length158475%_
      (lambda (_%self166571%_)
        (let ((_%self166575%_ _%self166571%_))
          (let ((_%h166585%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166575%_ '1 '#f '#f)))
                (_%l166587%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166575%_ '2 '#f '#f))))
            (let* ((_%$%g166589166591%_
                    (let ((__tmp172627
                           (lambda ()
                             (let ((_%self156865166598%_ _%l166587%_))
                               (declare (not safe))
                               (let ((_%object166601166606%_
                                      (##unchecked-structure-ref
                                       _%self156865166598%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method166602166607%_
                                      (##unchecked-structure-ref
                                       _%self156865166598%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method166602166607%_
                                  _%object166601166606%_)))))
                          (__tmp172626
                           (lambda ()
                             (let ((_%self155645166610%_ _%h166585%_))
                               (declare (not safe))
                               (let ((_%object166613166618%_
                                      (##unchecked-structure-ref
                                       _%self155645166610%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method166614166619%_
                                      (##unchecked-structure-ref
                                       _%self155645166610%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method166614166619%_
                                  _%object166613166618%_)))))
                          (__tmp172625
                           (lambda ()
                             (let ((_%self157109166622%_ _%l166587%_))
                               (declare (not safe))
                               (let ((_%object166625166630%_
                                      (##unchecked-structure-ref
                                       _%self157109166622%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method166626166631%_
                                      (##unchecked-structure-ref
                                       _%self157109166622%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method166626166631%_
                                  _%object166625166630%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp172627 __tmp172626 __tmp172625)))
                   (_%val166594%_ _%$%g166589166591%_))
              (if (fixnum? _%val166594%_)
                  _%val166594%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val166594%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length158475%_
       '#f))
    (define _%locked-hash-table::HashTable::copy158477%_
      (lambda (_%self166393%_)
        (let ((_%self166397%_ _%self166393%_))
          (let ((_%h166407%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166397%_ '1 '#f '#f)))
                (_%l166409%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166397%_ '2 '#f '#f))))
            (let ((__tmp172628
                   (let ((__tmp172631
                          (lambda ()
                            (let ((_%self156865166413%_ _%l166409%_))
                              (declare (not safe))
                              (let ((_%object166416166421%_
                                     (##unchecked-structure-ref
                                      _%self156865166413%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method166417166422%_
                                     (##unchecked-structure-ref
                                      _%self156865166413%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method166417166422%_
                                 _%object166416166421%_)))))
                         (__tmp172630
                          (lambda ()
                            (let ((_%self154913166425%_ _%h166407%_))
                              (declare (not safe))
                              (let ((_%object166428166433%_
                                     (##unchecked-structure-ref
                                      _%self154913166425%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method166429166434%_
                                     (##unchecked-structure-ref
                                      _%self154913166425%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method166429166434%_
                                 _%object166428166433%_)))))
                         (__tmp172629
                          (lambda ()
                            (let ((_%self157109166437%_ _%l166409%_))
                              (declare (not safe))
                              (let ((_%object166440166445%_
                                     (##unchecked-structure-ref
                                      _%self157109166437%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method166441166446%_
                                     (##unchecked-structure-ref
                                      _%self157109166437%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method166441166446%_
                                 _%object166440166445%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp172631 __tmp172630 __tmp172629))))
              (declare (not safe))
              (cast HashTable::interface __tmp172628))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy158477%_
       '#f))
    (define _%locked-hash-table::HashTable::new158479%_
      (lambda (_%self166195%_ _%size-hint166197%_)
        (let ((_%self166200%_ _%self166195%_))
          (if (or (not _%size-hint166197%_) (fixnum? _%size-hint166197%_))
              (let ((_%size-hint166216%_ _%size-hint166197%_))
                (let ((_%h166226%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self166200%_
                          '1
                          '#f
                          '#f)))
                      (_%l166228%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self166200%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp172632
                         (let ((__tmp172635
                                (lambda ()
                                  (let ((_%self156865166232%_ _%l166228%_))
                                    (declare (not safe))
                                    (let ((_%object166235166240%_
                                           (##unchecked-structure-ref
                                            _%self156865166232%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method166236166241%_
                                           (##unchecked-structure-ref
                                            _%self156865166232%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method166236166241%_
                                       _%object166235166240%_)))))
                               (__tmp172634
                                (lambda ()
                                  (let* ((_%self155889166244%_ _%h166226%_)
                                         (_%size-hint166247%_
                                          _%size-hint166216%_))
                                    (declare (not safe))
                                    (let ((_%object166250166255%_
                                           (##unchecked-structure-ref
                                            _%self155889166244%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method166251166256%_
                                           (##unchecked-structure-ref
                                            _%self155889166244%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method166251166256%_
                                       _%object166250166255%_
                                       _%size-hint166247%_)))))
                               (__tmp172633
                                (lambda ()
                                  (let ((_%self157109166259%_ _%l166228%_))
                                    (declare (not safe))
                                    (let ((_%object166262166267%_
                                           (##unchecked-structure-ref
                                            _%self157109166259%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method166263166268%_
                                           (##unchecked-structure-ref
                                            _%self157109166259%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method166263166268%_
                                       _%object166262166267%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp172635
                            __tmp172634
                            __tmp172633))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp172632))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@317.29-317.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint166197%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new158479%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!158481%_
      (lambda (_%self166017%_)
        (let ((_%self166021%_ _%self166017%_))
          (let ((_%h166031%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166021%_ '1 '#f '#f)))
                (_%l166033%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166021%_ '2 '#f '#f))))
            (let ((__tmp172638
                   (lambda ()
                     (let ((_%self157353166037%_ _%l166033%_))
                       (declare (not safe))
                       (let ((_%object166040166045%_
                              (##unchecked-structure-ref
                               _%self157353166037%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method166041166046%_
                              (##unchecked-structure-ref
                               _%self157353166037%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method166041166046%_ _%object166040166045%_)))))
                  (__tmp172637
                   (lambda ()
                     (let ((_%self154668166049%_ _%h166031%_))
                       (declare (not safe))
                       (let ((_%object166052166057%_
                              (##unchecked-structure-ref
                               _%self154668166049%_
                               '1
                               '#f
                               'clear!))
                             (_%method166053166058%_
                              (##unchecked-structure-ref
                               _%self154668166049%_
                               '2
                               '#f
                               'clear!)))
                         (_%method166053166058%_ _%object166052166057%_)))))
                  (__tmp172636
                   (lambda ()
                     (let ((_%self157597166061%_ _%l166033%_))
                       (declare (not safe))
                       (let ((_%object166064166069%_
                              (##unchecked-structure-ref
                               _%self157597166061%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method166065166070%_
                              (##unchecked-structure-ref
                               _%self157597166061%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method166065166070%_ _%object166064166069%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172638 __tmp172637 __tmp172636))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!158481%_
       '#f))
    (let* ((_%klass165857%_ (macro-type-mutex))
           (_%id165860%_ 'Locker::read-lock!)
           (_%proc165863%_ mutex-lock!)
           (_%rebind?165866%_ '#f)
           (_%id165871%_ _%id165860%_)
           (_%proc165884%_ _%proc165863%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165857%_
       _%id165871%_
       _%proc165884%_
       _%rebind?165866%_))
    (let* ((_%klass165820%_ (macro-type-mutex))
           (_%id165823%_ 'Locker::read-unlock!)
           (_%proc165826%_ mutex-unlock!)
           (_%rebind?165829%_ '#f)
           (_%id165834%_ _%id165823%_)
           (_%proc165847%_ _%proc165826%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165820%_
       _%id165834%_
       _%proc165847%_
       _%rebind?165829%_))
    (let* ((_%klass165783%_ (macro-type-mutex))
           (_%id165786%_ 'Locker::write-lock!)
           (_%proc165789%_ mutex-lock!)
           (_%rebind?165792%_ '#f)
           (_%id165797%_ _%id165786%_)
           (_%proc165810%_ _%proc165789%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165783%_
       _%id165797%_
       _%proc165810%_
       _%rebind?165792%_))
    (let* ((_%klass165746%_ (macro-type-mutex))
           (_%id165749%_ 'Locker::write-unlock!)
           (_%proc165752%_ mutex-unlock!)
           (_%rebind?165755%_ '#f)
           (_%id165760%_ _%id165749%_)
           (_%proc165773%_ _%proc165752%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165746%_
       _%id165760%_
       _%proc165773%_
       _%rebind?165755%_))
    (define _%checked-hash-table::HashTable::ref158692%_
      (lambda (_%self165687%_ _%key165688%_ _%default165689%_)
        (let* ((_%self165692%_ _%self165687%_)
               (_%key165701%_ _%key165688%_)
               (_%default165709%_ _%default165689%_))
          (declare (not safe))
          (let ((_%h165720%_
                 (##unchecked-structure-ref _%self165692%_ '1 '#f '#f))
                (_%key?165722%_
                 (##unchecked-structure-ref _%self165692%_ '2 '#f '#f)))
            (if (_%key?165722%_ _%key165701%_)
                (let* ((_%self156133165729%_ _%h165720%_)
                       (_%key165732%_ _%key165701%_)
                       (_%default165735%_ _%default165709%_))
                  (declare (not safe))
                  (let ((_%object165738165743%_
                         (##unchecked-structure-ref
                          _%self156133165729%_
                          '1
                          '#f
                          'ref))
                        (_%method165739165744%_
                         (##unchecked-structure-ref
                          _%self156133165729%_
                          '8
                          '#f
                          'ref)))
                    (_%method165739165744%_
                     _%object165738165743%_
                     _%key165732%_
                     _%default165735%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key165701%_ (cons _%default165709%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref158692%_
       '#f))
    (define _%checked-hash-table::HashTable::set!158694%_
      (lambda (_%self165505%_ _%key165506%_ _%value165507%_)
        (let* ((_%self165510%_ _%self165505%_)
               (_%key165519%_ _%key165506%_)
               (_%value165527%_ _%value165507%_))
          (declare (not safe))
          (let ((_%h165538%_
                 (##unchecked-structure-ref _%self165510%_ '1 '#f '#f))
                (_%key?165540%_
                 (##unchecked-structure-ref _%self165510%_ '2 '#f '#f)))
            (if (_%key?165540%_ _%key165519%_)
                (let* ((_%self156377165547%_ _%h165538%_)
                       (_%key165550%_ _%key165519%_)
                       (_%value165553%_ _%value165527%_))
                  (declare (not safe))
                  (let ((_%object165556165561%_
                         (##unchecked-structure-ref
                          _%self156377165547%_
                          '1
                          '#f
                          'set!))
                        (_%method165557165562%_
                         (##unchecked-structure-ref
                          _%self156377165547%_
                          '9
                          '#f
                          'set!)))
                    (_%method165557165562%_
                     _%object165556165561%_
                     _%key165550%_
                     _%value165553%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key165519%_ (cons _%value165527%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!158694%_
       '#f))
    (define _%checked-hash-table::HashTable::update!158696%_
      (lambda (_%self165310%_ _%key165311%_ _%update165312%_ _%default165313%_)
        (let* ((_%self165316%_ _%self165310%_)
               (_%key165325%_ _%key165311%_)
               (_%update165333%_ _%update165312%_)
               (_%default165341%_ _%default165313%_))
          (declare (not safe))
          (let ((_%h165352%_
                 (##unchecked-structure-ref _%self165316%_ '1 '#f '#f))
                (_%key?165354%_
                 (##unchecked-structure-ref _%self165316%_ '2 '#f '#f)))
            (if (_%key?165354%_ _%key165325%_)
                (let* ((_%self156621165362%_ _%h165352%_)
                       (_%key165365%_ _%key165325%_)
                       (_%proc165368%_ _%update165333%_)
                       (_%default165371%_ _%default165341%_))
                  (declare (not safe))
                  (let ((_%object165374165379%_
                         (##unchecked-structure-ref
                          _%self156621165362%_
                          '1
                          '#f
                          'update!))
                        (_%method165375165380%_
                         (##unchecked-structure-ref
                          _%self156621165362%_
                          '10
                          '#f
                          'update!)))
                    (_%method165375165380%_
                     _%object165374165379%_
                     _%key165365%_
                     _%proc165368%_
                     _%default165371%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key165325%_
                         (cons _%update165333%_ (cons _%default165341%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!158696%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!158698%_
      (lambda (_%self165141%_ _%key165142%_)
        (let* ((_%self165145%_ _%self165141%_) (_%key165154%_ _%key165142%_))
          (declare (not safe))
          (let ((_%h165165%_
                 (##unchecked-structure-ref _%self165145%_ '1 '#f '#f))
                (_%key?165167%_
                 (##unchecked-structure-ref _%self165145%_ '2 '#f '#f)))
            (if (_%key?165167%_ _%key165154%_)
                (let* ((_%self155157165173%_ _%h165165%_)
                       (_%key165176%_ _%key165154%_))
                  (declare (not safe))
                  (let ((_%object165179165184%_
                         (##unchecked-structure-ref
                          _%self155157165173%_
                          '1
                          '#f
                          'delete!))
                        (_%method165180165185%_
                         (##unchecked-structure-ref
                          _%self155157165173%_
                          '4
                          '#f
                          'delete!)))
                    (_%method165180165185%_
                     _%object165179165184%_
                     _%key165176%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key165154%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!158698%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each158700%_
      (lambda (_%self164972%_ _%proc164973%_)
        (let* ((_%self164976%_ _%self164972%_) (_%proc164985%_ _%proc164973%_))
          (declare (not safe))
          (let ((_%h164996%_
                 (##unchecked-structure-ref _%self164976%_ '1 '#f '#f))
                (_%key?164998%_
                 (##unchecked-structure-ref _%self164976%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self155401165004%_ _%h164996%_)
                       (_%proc165007%_ _%proc164985%_))
                  (declare (not safe))
                  (let ((_%object165010165015%_
                         (##unchecked-structure-ref
                          _%self155401165004%_
                          '1
                          '#f
                          'for-each))
                        (_%method165011165016%_
                         (##unchecked-structure-ref
                          _%self155401165004%_
                          '5
                          '#f
                          'for-each)))
                    (_%method165011165016%_
                     _%object165010165015%_
                     _%proc165007%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc164985%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each158700%_
       '#f))
    (define _%checked-hash-table::HashTable::length158702%_
      (lambda (_%self164818%_)
        (let ((_%self164821%_ _%self164818%_))
          (declare (not safe))
          (let ((_%h164833%_
                 (##unchecked-structure-ref _%self164821%_ '1 '#f '#f))
                (_%key?164835%_
                 (##unchecked-structure-ref _%self164821%_ '2 '#f '#f)))
            (let ((_%self155645164838%_ _%h164833%_))
              (declare (not safe))
              (let ((_%object164841164846%_
                     (##unchecked-structure-ref
                      _%self155645164838%_
                      '1
                      '#f
                      'length))
                    (_%method164842164847%_
                     (##unchecked-structure-ref
                      _%self155645164838%_
                      '6
                      '#f
                      'length)))
                (_%method164842164847%_ _%object164841164846%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::length
       _%checked-hash-table::HashTable::length158702%_
       '#f))
    (define _%checked-hash-table::HashTable::copy158704%_
      (lambda (_%self164664%_)
        (let ((_%self164667%_ _%self164664%_))
          (declare (not safe))
          (let ((_%h164679%_
                 (##unchecked-structure-ref _%self164667%_ '1 '#f '#f))
                (_%key?164681%_
                 (##unchecked-structure-ref _%self164667%_ '2 '#f '#f)))
            (let ((_%self154913164684%_ _%h164679%_))
              (declare (not safe))
              (let ((_%object164687164692%_
                     (##unchecked-structure-ref
                      _%self154913164684%_
                      '1
                      '#f
                      'copy))
                    (_%method164688164693%_
                     (##unchecked-structure-ref
                      _%self154913164684%_
                      '3
                      '#f
                      'copy)))
                (_%method164688164693%_ _%object164687164692%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::copy
       _%checked-hash-table::HashTable::copy158704%_
       '#f))
    (define _%checked-hash-table::HashTable::new158706%_
      (lambda (_%self164490%_ _%size-hint164491%_)
        (let ((_%self164494%_ _%self164490%_))
          (if (or (not _%size-hint164491%_) (fixnum? _%size-hint164491%_))
              (let ((_%size-hint164510%_ _%size-hint164491%_))
                (declare (not safe))
                (let ((_%h164522%_
                       (##unchecked-structure-ref _%self164494%_ '1 '#f '#f))
                      (_%key?164524%_
                       (##unchecked-structure-ref _%self164494%_ '2 '#f '#f)))
                  (let* ((_%self155889164527%_ _%h164522%_)
                         (_%size-hint164530%_ _%size-hint164510%_))
                    (declare (not safe))
                    (let ((_%object164533164538%_
                           (##unchecked-structure-ref
                            _%self155889164527%_
                            '1
                            '#f
                            'new))
                          (_%method164534164539%_
                           (##unchecked-structure-ref
                            _%self155889164527%_
                            '7
                            '#f
                            'new)))
                      (_%method164534164539%_
                       _%object164533164538%_
                       _%size-hint164530%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@376.35-376.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint164491%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new158706%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!158708%_
      (lambda (_%self164336%_)
        (let ((_%self164339%_ _%self164336%_))
          (declare (not safe))
          (let ((_%h164351%_
                 (##unchecked-structure-ref _%self164339%_ '1 '#f '#f))
                (_%key?164353%_
                 (##unchecked-structure-ref _%self164339%_ '2 '#f '#f)))
            (let ((_%self154668164356%_ _%h164351%_))
              (declare (not safe))
              (let ((_%object164359164364%_
                     (##unchecked-structure-ref
                      _%self154668164356%_
                      '1
                      '#f
                      'clear!))
                    (_%method164360164365%_
                     (##unchecked-structure-ref
                      _%self154668164356%_
                      '2
                      '#f
                      'clear!)))
                (_%method164360164365%_ _%object164359164364%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::clear!
       _%checked-hash-table::HashTable::clear!158708%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table164185%_
               _%count164186%_
               _%free164187%_
               _%hash164188%_
               _%test164189%_
               _%seed164190%_
               _%lock164191%_)
        (let ((__tmp172639
               (let () (declare (not safe)) (ensure-lock _%lock164191%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table164185%_
           _%count164186%_
           _%free164187%_
           _%hash164188%_
           _%test164189%_
           _%seed164190%_
           __tmp172639))))
    (define make-generic-hash-table__0
      (lambda (_%table164196%_
               _%count164197%_
               _%free164198%_
               _%hash164199%_
               _%test164200%_
               _%seed164201%_)
        (let ((_%lock164203%_ '#f))
          (make-generic-hash-table__%
           _%table164196%_
           _%count164197%_
           _%free164198%_
           _%hash164199%_
           _%test164200%_
           _%seed164201%_
           _%lock164203%_))))
    (define make-generic-hash-table
      (lambda _g172640_
        (let ((_g172641_ (let () (declare (not safe)) (##length _g172640_))))
          (cond ((let () (declare (not safe)) (##fx= _g172641_ 6))
                 (apply make-generic-hash-table__0 _g172640_))
                ((let () (declare (not safe)) (##fx= _g172641_ 7))
                 (apply make-generic-hash-table__% _g172640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g172640_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords163612%_
               _%$%size-hint163602163613%_
               _%$%seed163603163614%_
               _%$%test163604163615%_
               _%$%hash163605163616%_
               _%$%lock163606163617%_
               _%$%check163607163618%_
               _%$%weak-keys163608163619%_
               _%$%weak-values163609163620%_)
        (let* ((_%size-hint163622%_
                (if (eq? _%$%size-hint163602163613%_ absent-value)
                    '#f
                    _%$%size-hint163602163613%_))
               (_%seed163624%_
                (if (eq? _%$%seed163603163614%_ absent-value)
                    '#f
                    _%$%seed163603163614%_))
               (_%test163626%_
                (if (eq? _%$%test163604163615%_ absent-value)
                    equal?
                    _%$%test163604163615%_))
               (_%hash163628%_
                (if (eq? _%$%hash163605163616%_ absent-value)
                    '#f
                    _%$%hash163605163616%_))
               (_%lock163630%_
                (if (eq? _%$%lock163606163617%_ absent-value)
                    '#f
                    _%$%lock163606163617%_))
               (_%check163632%_
                (if (eq? _%$%check163607163618%_ absent-value)
                    '#f
                    _%$%check163607163618%_))
               (_%weak-keys163634%_
                (if (eq? _%$%weak-keys163608163619%_ absent-value)
                    '#f
                    _%$%weak-keys163608163619%_))
               (_%weak-values163636%_
                (if (eq? _%$%weak-values163609163620%_ absent-value)
                    '#f
                    _%$%weak-values163609163620%_)))
          (letrec ((_%table-seed163639%_
                    (lambda ()
                      (if (fixnum? _%seed163624%_)
                          _%seed163624%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock163783%_
                    (lambda (_%ht164158%_)
                      (let ((_%ht164161%_ _%ht164158%_))
                        (if _%lock163630%_
                            (let ((__tmp172642
                                   (let ((__tmp172643
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock163630%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht164161%_
                                      __tmp172643))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp172642))
                            _%ht164161%_))))
                   (_%wrap-lock163784%_
                    (lambda (_%ht164146%_)
                      (let ((_%ht164149%_ _%ht164146%_))
                        (_%__wrap-lock163783%_ _%ht164149%_))))
                   (_%__wrap-checked163906%_
                    (lambda (_%ht164133%_ _%implicit164134%_)
                      (let ((_%ht164137%_ _%ht164133%_))
                        (if _%check163632%_
                            (let ((__tmp172644
                                   (let ((__tmp172645
                                          (if (procedure? _%check163632%_)
                                              _%check163632%_
                                              _%implicit164134%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht164137%_
                                      __tmp172645))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp172644))
                            _%ht164137%_))))
                   (_%wrap-checked163907%_
                    (lambda (_%ht164120%_ _%implicit164121%_)
                      (let ((_%ht164124%_ _%ht164120%_))
                        (_%__wrap-checked163906%_
                         _%ht164124%_
                         _%implicit164121%_))))
                   (_%make163908%_
                    (lambda (_%kons164071%_
                             _%key?164072%_
                             _%hash164073%_
                             _%test164074%_)
                      (let* ((_%size164077%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint163622%_)))
                             (_%table164079%_
                              (let ((__tmp172646 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size164077%_ __tmp172646)))
                             (_%ht164081%_
                              (let ((__tmp172647
                                     (_%kons164071%_
                                      _%table164079%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size164077%_ '2))
                                      _%hash164073%_
                                      _%test164074%_
                                      (_%table-seed163639%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172647)))
                             (_%ht164103%_
                              (let* ((_%ht164084%_ _%ht164081%_)
                                     (_%ht164088%_ _%ht164084%_))
                                (_%__wrap-lock163783%_ _%ht164088%_)))
                             (_%implicit164106%_ _%key?164072%_)
                             (_%ht164110%_ _%ht164103%_))
                        (_%__wrap-checked163906%_
                         _%ht164110%_
                         _%implicit164106%_))))
                   (_%make-gc-hash-table163909%_
                    (lambda ()
                      (let* ((_%ht164036%_
                              (let ((__tmp172648
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint163622%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172648)))
                             (_%ht164054%_
                              (let* ((_%ht164038%_ _%ht164036%_)
                                     (_%ht164042%_ _%ht164038%_))
                                (_%__wrap-lock163783%_ _%ht164042%_)))
                             (_%implicit164057%_ true)
                             (_%ht164061%_ _%ht164054%_))
                        (_%__wrap-checked163906%_
                         _%ht164061%_
                         _%implicit164057%_))))
                   (_%make-gambit-table163910%_
                    (lambda ()
                      (let* ((_%size163979%_
                              (let ((_%$e163976%_ _%size-hint163622%_))
                                (if _%$e163976%_
                                    _%$e163976%_
                                    (macro-absent-obj))))
                             (_%test163984%_
                              (let ((_%$e163981%_ _%test163626%_))
                                (if _%$e163981%_ _%$e163981%_ equal?)))
                             (_%hash163992%_
                              (let ((_%$e163986%_ _%hash163628%_))
                                (if _%$e163986%_
                                    _%$e163986%_
                                    (if (eq? _%test163984%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test163984%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht163994%_
                              (let ((__tmp172649
                                     (make-table
                                      'size:
                                      _%size163979%_
                                      'test:
                                      _%test163984%_
                                      'hash:
                                      _%hash163992%_
                                      'weak-keys:
                                      _%weak-keys163634%_
                                      'weak-values:
                                      _%weak-values163636%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172649)))
                             (_%ht164017%_
                              (let* ((_%ht163997%_ _%ht163994%_)
                                     (_%ht164001%_ _%ht163997%_))
                                (_%__wrap-lock163783%_ _%ht164001%_)))
                             (_%implicit164020%_ true)
                             (_%ht164024%_ _%ht164017%_))
                        (_%__wrap-checked163906%_
                         _%ht164024%_
                         _%implicit164020%_)))))
            (if (or _%weak-keys163634%_ _%weak-values163636%_)
                (_%make-gambit-table163910%_)
                (if (and (or (eq? _%test163626%_ eq?)
                             (eq? _%test163626%_ ##eq?))
                         (or (not _%hash163628%_)
                             (eq? _%hash163628%_ eq?-hash)
                             (eq? _%hash163628%_ eq-hash))
                         (not _%seed163624%_))
                    (_%make-gc-hash-table163909%_)
                    (if (and (or (eq? _%test163626%_ eq?)
                                 (eq? _%test163626%_ ##eq?))
                             (or (not _%hash163628%_)
                                 (eq? _%hash163628%_ eq?-hash)
                                 (eq? _%hash163628%_ eq-hash)))
                        (_%make163908%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test163626%_ eqv?)
                                     (eq? _%test163626%_ ##eqv?))
                                 (or (not _%hash163628%_)
                                     (eq? _%hash163628%_ eqv?-hash)
                                     (eq? _%hash163628%_ eqv-hash)))
                            (_%make163908%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test163626%_ eq?)
                                         (eq? _%test163626%_ ##eq?))
                                     (or (eq? _%hash163628%_ symbolic-hash)
                                         (eq? _%hash163628%_ ##symbol-hash)))
                                (_%make163908%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test163626%_ eq?)
                                             (eq? _%test163626%_ ##eq?))
                                         (eq? _%hash163628%_ immediate-hash))
                                    (_%make163908%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test163626%_ equal?)
                                                 (eq? _%test163626%_ ##equal?)
                                                 (eq? _%test163626%_ string=?)
                                                 (eq? _%test163626%_
                                                      ##string=?))
                                             (or (eq? _%hash163628%_
                                                      string-hash)
                                                 (eq? _%hash163628%_
                                                      ##string=?-hash)))
                                        (_%make163908%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test163626%_ equal?)
                                                 (not _%hash163628%_))
                                            (_%make163908%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test163626%_)
                                                (if (procedure? _%hash163628%_)
                                                    (_%make163908%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash163628%_
                                                     _%test163626%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash163628%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test163626%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords164174%_ . _%args164175%_)
        (apply make-hash-table__%
               _%@@keywords164174%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164174%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164174%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164174%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164174%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164174%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164174%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164174%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164174%_
                  'weak-values:
                  absent-value))
               _%args164175%_)))
    (define make-hash-table
      (lambda _%$%args163610164181%_
        (apply keyword-dispatch
               '#(#f
                  #f
                  weak-values:
                  #f
                  #f
                  test:
                  #f
                  #f
                  #f
                  hash:
                  #f
                  #f
                  size:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  seed:
                  #f
                  #f
                  #f
                  weak-keys:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  check:
                  #f
                  #f
                  lock:
                  #f
                  #f
                  #f
                  #f
                  #f)
               make-hash-table__@
               _%$%args163610164181%_)))
    (define make-hash-table-eq
      (lambda _%args163599%_
        (apply make-hash-table 'test: eq? _%args163599%_)))
    (define make-hash-table-eqv
      (lambda _%args163597%_
        (apply make-hash-table 'test: eqv? _%args163597%_)))
    (define make-hash-table-symbolic
      (lambda _%args163595%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args163595%_)))
    (define make-hash-table-string
      (lambda _%args163593%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args163593%_)))
    (define make-hash-table-immediate
      (lambda _%args163591%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args163591%_)))
    (define list->hash-table
      (lambda (_%lst163588%_ . _%args163589%_)
        (list->hash-table!
         _%lst163588%_
         (apply make-hash-table
                'size:
                (length _%lst163588%_)
                _%args163589%_))))
    (define list->hash-table-eq
      (lambda (_%lst163585%_ . _%args163586%_)
        (list->hash-table!
         _%lst163585%_
         (apply make-hash-table-eq
                'size:
                (length _%lst163585%_)
                _%args163586%_))))
    (define list->hash-table-eqv
      (lambda (_%lst163582%_ . _%args163583%_)
        (list->hash-table!
         _%lst163582%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst163582%_)
                _%args163583%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst163579%_ . _%args163580%_)
        (list->hash-table!
         _%lst163579%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst163579%_)
                _%args163580%_))))
    (define list->hash-table-string
      (lambda (_%lst163576%_ . _%args163577%_)
        (list->hash-table!
         _%lst163576%_
         (apply make-hash-table-string
                'size:
                (length _%lst163576%_)
                _%args163577%_))))
    (define list->hash-table-immediate
      (lambda (_%lst163573%_ . _%args163574%_)
        (list->hash-table!
         _%lst163573%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst163573%_)
                _%args163574%_))))
    (define list->hash-table!
      (lambda (_%lst163524%_ _%h163525%_)
        (for-each
         (lambda (_%el163527%_)
           (let* ((_%$%el163528163535%_ _%el163527%_)
                  (_%$%E163530163538%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el163528163535%_
                              '([k . v])))
                     '#!void))
                  (_%$%K163531163561%_
                   (lambda (_%v163541%_ _%k163542%_)
                     (let* ((_%self156377163544%_ _%h163525%_)
                            (_%key163547%_ _%k163542%_)
                            (_%value163550%_ _%v163541%_))
                       (declare (not safe))
                       (let ((_%object163553163558%_
                              (##unchecked-structure-ref
                               _%self156377163544%_
                               '1
                               '#f
                               'set!))
                             (_%method163554163559%_
                              (##unchecked-structure-ref
                               _%self156377163544%_
                               '9
                               '#f
                               'set!)))
                         (_%method163554163559%_
                          _%object163553163558%_
                          _%key163547%_
                          _%value163550%_))))))
             (if (pair? _%$%el163528163535%_)
                 (let ((_%$%hd163532163564%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el163528163535%_)))
                       (_%$%tl163533163566%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el163528163535%_))))
                   (let* ((_%k163569%_ _%$%hd163532163564%_)
                          (_%v163571%_ _%$%tl163533163566%_))
                     (_%$%K163531163561%_ _%v163571%_ _%k163569%_)))
                 (_%$%E163530163538%_))))
         _%lst163524%_)
        _%h163525%_))
    (define plist->hash-table
      (lambda (_%lst163521%_ . _%args163522%_)
        (plist->hash-table!
         _%lst163521%_
         (apply make-hash-table
                'size:
                (length _%lst163521%_)
                _%args163522%_))))
    (define plist->hash-table-eq
      (lambda (_%lst163518%_ . _%args163519%_)
        (plist->hash-table!
         _%lst163518%_
         (apply make-hash-table-eq
                'size:
                (length _%lst163518%_)
                _%args163519%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst163515%_ . _%args163516%_)
        (plist->hash-table!
         _%lst163515%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst163515%_)
                _%args163516%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst163512%_ . _%args163513%_)
        (plist->hash-table!
         _%lst163512%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst163512%_)
                _%args163513%_))))
    (define plist->hash-table-string
      (lambda (_%lst163509%_ . _%args163510%_)
        (plist->hash-table!
         _%lst163509%_
         (apply make-hash-table-string
                'size:
                (length _%lst163509%_)
                _%args163510%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst163506%_ . _%args163507%_)
        (plist->hash-table!
         _%lst163506%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst163506%_)
                _%args163507%_))))
    (define plist->hash-table!
      (lambda (_%lst163429%_ _%h163430%_)
        (let _%loop163432%_ ((_%rest163434%_ _%lst163429%_))
          (let* ((_%$%rest163435163447%_ _%rest163434%_)
                 (_%$%else163438163455%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst163429%_)))))
            (let ((_%$%K163441163487%_
                   (lambda (_%rest163466%_ _%val163467%_ _%key163468%_)
                     (let* ((_%self156377163470%_ _%h163430%_)
                            (_%key163473%_ _%key163468%_)
                            (_%value163476%_ _%val163467%_))
                       (declare (not safe))
                       (let ((_%object163479163484%_
                              (##unchecked-structure-ref
                               _%self156377163470%_
                               '1
                               '#f
                               'set!))
                             (_%method163480163485%_
                              (##unchecked-structure-ref
                               _%self156377163470%_
                               '9
                               '#f
                               'set!)))
                         (_%method163480163485%_
                          _%object163479163484%_
                          _%key163473%_
                          _%value163476%_)))
                     (_%loop163432%_ _%rest163466%_)))
                  (_%$%K163440163460%_ (lambda () _%h163430%_)))
              (let ((_%$%try-match163437163463%_
                     (lambda ()
                       (if (null? _%$%rest163435163447%_)
                           (_%$%K163440163460%_)
                           (_%$%else163438163455%_)))))
                (if (pair? _%$%rest163435163447%_)
                    (let ((_%$%tl163443163492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest163435163447%_)))
                          (_%$%hd163442163490%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest163435163447%_))))
                      (if (pair? _%$%tl163443163492%_)
                          (let ((_%$%tl163445163499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl163443163492%_)))
                                (_%$%hd163444163497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl163443163492%_))))
                            (let ((_%key163495%_ _%$%hd163442163490%_)
                                  (_%val163502%_ _%$%hd163444163497%_)
                                  (_%rest163504%_ _%$%tl163445163499%_))
                              (_%$%K163441163487%_
                               _%rest163504%_
                               _%val163502%_
                               _%key163495%_)))
                          (_%$%else163438163455%_)))
                    (_%$%try-match163437163463%_))))))))
    (define __hash-length
      (lambda (_%h163381%_)
        (let* ((_%h163384%_ _%h163381%_)
               (_%self155646163393%_ _%h163384%_)
               (_%self155646163397%_ _%self155646163393%_)
               (_%self155646163399%_ _%self155646163397%_))
          (if __DEBUG
              (let ((_%val163419%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object163411163416%_
                              (##unchecked-structure-ref
                               _%self155646163399%_
                               '1
                               '#f
                               'length))
                             (_%method163412163417%_
                              (##unchecked-structure-ref
                               _%self155646163399%_
                               '6
                               '#f
                               'length)))
                         (_%method163412163417%_ _%object163411163416%_)))))
                (if (fixnum? _%val163419%_)
                    _%val163419%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val163419%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object163421163426%_
                       (##unchecked-structure-ref
                        _%self155646163399%_
                        '1
                        '#f
                        'length))
                      (_%method163422163427%_
                       (##unchecked-structure-ref
                        _%self155646163399%_
                        '6
                        '#f
                        'length)))
                  (_%method163422163427%_ _%object163421163426%_)))))))
    (define hash-length
      (lambda (_%h163366%_)
        (let* ((_%h163369%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163366%_)))
               (_%h163371%_ _%h163369%_))
          (__hash-length _%h163371%_))))
    (define __hash-ref__%
      (lambda (_%h163297%_ _%key163298%_ _%default163299%_)
        (let* ((_%h163302%_ _%h163297%_)
               (_%result163352%_
                (let* ((_%self156134163311%_ _%h163302%_)
                       (_%key163314%_ _%key163298%_)
                       (_%default163317%_ _%default163299%_)
                       (_%self156134163321%_ _%self156134163311%_)
                       (_%self156134163323%_ _%self156134163321%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object163337163342%_
                               (##unchecked-structure-ref
                                _%self156134163323%_
                                '1
                                '#f
                                'ref))
                              (_%method163338163343%_
                               (##unchecked-structure-ref
                                _%self156134163323%_
                                '8
                                '#f
                                'ref)))
                          (_%method163338163343%_
                           _%object163337163342%_
                           _%key163314%_
                           _%default163317%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object163344163349%_
                               (##unchecked-structure-ref
                                _%self156134163323%_
                                '1
                                '#f
                                'ref))
                              (_%method163345163350%_
                               (##unchecked-structure-ref
                                _%self156134163323%_
                                '8
                                '#f
                                'ref)))
                          (_%method163345163350%_
                           _%object163344163349%_
                           _%key163314%_
                           _%default163317%_)))))))
          (if (eq? _%result163352%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h163302%_
               'key:
               _%key163298%_)
              _%result163352%_))))
    (define __hash-ref__0
      (lambda (_%h163357%_ _%key163358%_)
        (let ((_%default163360%_ absent-obj))
          (__hash-ref__% _%h163357%_ _%key163358%_ _%default163360%_))))
    (define __hash-ref
      (lambda _g172650_
        (let ((_g172651_ (let () (declare (not safe)) (##length _g172650_))))
          (cond ((let () (declare (not safe)) (##fx= _g172651_ 2))
                 (apply __hash-ref__0 _g172650_))
                ((let () (declare (not safe)) (##fx= _g172651_ 3))
                 (apply __hash-ref__% _g172650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g172650_))))))
    (define hash-ref__%
      (lambda (_%h163267%_ _%key163268%_ _%default163269%_)
        (let* ((_%h163272%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163267%_)))
               (_%h163274%_ _%h163272%_))
          (__hash-ref__% _%h163274%_ _%key163268%_ _%default163269%_))))
    (define hash-ref__0
      (lambda (_%h163287%_ _%key163288%_)
        (let ((_%default163290%_ absent-obj))
          (hash-ref__% _%h163287%_ _%key163288%_ _%default163290%_))))
    (define hash-ref
      (lambda _g172652_
        (let ((_g172653_ (let () (declare (not safe)) (##length _g172652_))))
          (cond ((let () (declare (not safe)) (##fx= _g172653_ 2))
                 (apply hash-ref__0 _g172652_))
                ((let () (declare (not safe)) (##fx= _g172653_ 3))
                 (apply hash-ref__% _g172652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g172652_))))))
    (define __hash-get
      (lambda (_%h163212%_ _%key163213%_)
        (let* ((_%h163216%_ _%h163212%_)
               (_%self156134163225%_ _%h163216%_)
               (_%key163228%_ _%key163213%_)
               (_%default163231%_ '#f)
               (_%self156134163235%_ _%self156134163225%_)
               (_%self156134163237%_ _%self156134163235%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163251163256%_
                       (##unchecked-structure-ref
                        _%self156134163237%_
                        '1
                        '#f
                        'ref))
                      (_%method163252163257%_
                       (##unchecked-structure-ref
                        _%self156134163237%_
                        '8
                        '#f
                        'ref)))
                  (_%method163252163257%_
                   _%object163251163256%_
                   _%key163228%_
                   _%default163231%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163258163263%_
                       (##unchecked-structure-ref
                        _%self156134163237%_
                        '1
                        '#f
                        'ref))
                      (_%method163259163264%_
                       (##unchecked-structure-ref
                        _%self156134163237%_
                        '8
                        '#f
                        'ref)))
                  (_%method163259163264%_
                   _%object163258163263%_
                   _%key163228%_
                   _%default163231%_)))))))
    (define hash-get
      (lambda (_%h163196%_ _%key163197%_)
        (let* ((_%h163200%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163196%_)))
               (_%h163202%_ _%h163200%_))
          (__hash-get _%h163202%_ _%key163197%_))))
    (define __hash-put!
      (lambda (_%h163141%_ _%key163142%_ _%value163143%_)
        (let* ((_%h163146%_ _%h163141%_)
               (_%self156378163155%_ _%h163146%_)
               (_%key163158%_ _%key163142%_)
               (_%value163161%_ _%value163143%_)
               (_%self156378163165%_ _%self156378163155%_)
               (_%self156378163167%_ _%self156378163165%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163181163186%_
                       (##unchecked-structure-ref
                        _%self156378163167%_
                        '1
                        '#f
                        'set!))
                      (_%method163182163187%_
                       (##unchecked-structure-ref
                        _%self156378163167%_
                        '9
                        '#f
                        'set!)))
                  (_%method163182163187%_
                   _%object163181163186%_
                   _%key163158%_
                   _%value163161%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163188163193%_
                       (##unchecked-structure-ref
                        _%self156378163167%_
                        '1
                        '#f
                        'set!))
                      (_%method163189163194%_
                       (##unchecked-structure-ref
                        _%self156378163167%_
                        '9
                        '#f
                        'set!)))
                  (_%method163189163194%_
                   _%object163188163193%_
                   _%key163158%_
                   _%value163161%_)))))))
    (define hash-put!
      (lambda (_%h163124%_ _%key163125%_ _%value163126%_)
        (let* ((_%h163129%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163124%_)))
               (_%h163131%_ _%h163129%_))
          (__hash-put! _%h163131%_ _%key163125%_ _%value163126%_))))
    (define __hash-update!__%
      (lambda (_%h163040%_ _%key163041%_ _%update163042%_ _%default163043%_)
        (let* ((_%h163046%_ _%h163040%_)
               (_%self156622163055%_ _%h163046%_)
               (_%key163058%_ _%key163041%_)
               (_%proc163061%_ _%update163042%_)
               (_%default163064%_ _%default163043%_)
               (_%self156622163068%_ _%self156622163055%_)
               (_%self156622163070%_ _%self156622163068%_))
          (if (procedure? _%proc163061%_)
              (let ((_%proc163086%_ _%proc163061%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object163095163100%_
                             (##unchecked-structure-ref
                              _%self156622163070%_
                              '1
                              '#f
                              'update!))
                            (_%method163096163101%_
                             (##unchecked-structure-ref
                              _%self156622163070%_
                              '10
                              '#f
                              'update!)))
                        (_%method163096163101%_
                         _%object163095163100%_
                         _%key163058%_
                         _%proc163086%_
                         _%default163064%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object163102163107%_
                             (##unchecked-structure-ref
                              _%self156622163070%_
                              '1
                              '#f
                              'update!))
                            (_%method163103163108%_
                             (##unchecked-structure-ref
                              _%self156622163070%_
                              '10
                              '#f
                              'update!)))
                        (_%method163103163108%_
                         _%object163102163107%_
                         _%key163058%_
                         _%proc163086%_
                         _%default163064%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc163061%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h163113%_ _%key163114%_ _%update163115%_)
        (let ((_%default163117%_ '#!void))
          (__hash-update!__%
           _%h163113%_
           _%key163114%_
           _%update163115%_
           _%default163117%_))))
    (define __hash-update!
      (lambda _g172654_
        (let ((_g172655_ (let () (declare (not safe)) (##length _g172654_))))
          (cond ((let () (declare (not safe)) (##fx= _g172655_ 3))
                 (apply __hash-update!__0 _g172654_))
                ((let () (declare (not safe)) (##fx= _g172655_ 4))
                 (apply __hash-update!__% _g172654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g172654_))))))
    (define hash-update!__%
      (lambda (_%h163007%_ _%key163008%_ _%update163009%_ _%default163010%_)
        (let* ((_%h163013%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163007%_)))
               (_%h163015%_ _%h163013%_))
          (__hash-update!__%
           _%h163015%_
           _%key163008%_
           _%update163009%_
           _%default163010%_))))
    (define hash-update!__0
      (lambda (_%h163028%_ _%key163029%_ _%update163030%_)
        (let ((_%default163032%_ '#!void))
          (hash-update!__%
           _%h163028%_
           _%key163029%_
           _%update163030%_
           _%default163032%_))))
    (define hash-update!
      (lambda _g172656_
        (let ((_g172657_ (let () (declare (not safe)) (##length _g172656_))))
          (cond ((let () (declare (not safe)) (##fx= _g172657_ 3))
                 (apply hash-update!__0 _g172656_))
                ((let () (declare (not safe)) (##fx= _g172657_ 4))
                 (apply hash-update!__% _g172656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g172656_))))))
    (define __hash-remove!
      (lambda (_%h162956%_ _%key162957%_)
        (let* ((_%h162960%_ _%h162956%_)
               (_%self155158162969%_ _%h162960%_)
               (_%key162972%_ _%key162957%_)
               (_%self155158162976%_ _%self155158162969%_)
               (_%self155158162978%_ _%self155158162976%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162991162996%_
                       (##unchecked-structure-ref
                        _%self155158162978%_
                        '1
                        '#f
                        'delete!))
                      (_%method162992162997%_
                       (##unchecked-structure-ref
                        _%self155158162978%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162992162997%_
                   _%object162991162996%_
                   _%key162972%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162998163003%_
                       (##unchecked-structure-ref
                        _%self155158162978%_
                        '1
                        '#f
                        'delete!))
                      (_%method162999163004%_
                       (##unchecked-structure-ref
                        _%self155158162978%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162999163004%_
                   _%object162998163003%_
                   _%key162972%_)))))))
    (define hash-remove!
      (lambda (_%h162940%_ _%key162941%_)
        (let* ((_%h162944%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162940%_)))
               (_%h162946%_ _%h162944%_))
          (__hash-remove! _%h162946%_ _%key162941%_))))
    (define __hash-key?
      (lambda (_%h162886%_ _%k162887%_)
        (let ((_%h162890%_ _%h162886%_))
          (not (eq? (let* ((_%self156134162899%_ _%h162890%_)
                           (_%key162902%_ _%k162887%_)
                           (_%default162905%_ absent-value)
                           (_%self156134162909%_ _%self156134162899%_)
                           (_%self156134162911%_ _%self156134162909%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object162925162930%_
                                   (##unchecked-structure-ref
                                    _%self156134162911%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162926162931%_
                                   (##unchecked-structure-ref
                                    _%self156134162911%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method162926162931%_
                               _%object162925162930%_
                               _%key162902%_
                               _%default162905%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object162932162937%_
                                   (##unchecked-structure-ref
                                    _%self156134162911%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162933162938%_
                                   (##unchecked-structure-ref
                                    _%self156134162911%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method162933162938%_
                               _%object162932162937%_
                               _%key162902%_
                               _%default162905%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h162870%_ _%k162871%_)
        (let* ((_%h162874%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162870%_)))
               (_%h162876%_ _%h162874%_))
          (__hash-key? _%h162876%_ _%k162871%_))))
    (define __hash->list
      (lambda (_%h162805%_)
        (let* ((_%h162808%_ _%h162805%_) (_%lst162817%_ '()))
          (let* ((_%self155402162819%_ _%h162808%_)
                 (_%proc162825%_
                  (lambda (_%k162822%_ _%v162823%_)
                    (set! _%lst162817%_
                          (cons (cons _%k162822%_ _%v162823%_)
                                _%lst162817%_))))
                 (_%self155402162829%_ _%self155402162819%_)
                 (_%self155402162831%_ _%self155402162829%_)
                 (_%proc162846%_ _%proc162825%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162855162860%_
                         (##unchecked-structure-ref
                          _%self155402162831%_
                          '1
                          '#f
                          'for-each))
                        (_%method162856162861%_
                         (##unchecked-structure-ref
                          _%self155402162831%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162856162861%_
                     _%object162855162860%_
                     _%proc162846%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162862162867%_
                         (##unchecked-structure-ref
                          _%self155402162831%_
                          '1
                          '#f
                          'for-each))
                        (_%method162863162868%_
                         (##unchecked-structure-ref
                          _%self155402162831%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162863162868%_
                     _%object162862162867%_
                     _%proc162846%_)))))
          _%lst162817%_)))
    (define hash->list
      (lambda (_%h162790%_)
        (let* ((_%h162793%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162790%_)))
               (_%h162795%_ _%h162793%_))
          (__hash->list _%h162795%_))))
    (define __hash->plist
      (lambda (_%h162725%_)
        (let* ((_%h162728%_ _%h162725%_) (_%lst162737%_ '()))
          (let* ((_%self155402162739%_ _%h162728%_)
                 (_%proc162745%_
                  (lambda (_%k162742%_ _%v162743%_)
                    (set! _%lst162737%_
                          (cons _%k162742%_
                                (cons _%v162743%_ _%lst162737%_)))))
                 (_%self155402162749%_ _%self155402162739%_)
                 (_%self155402162751%_ _%self155402162749%_)
                 (_%proc162766%_ _%proc162745%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162775162780%_
                         (##unchecked-structure-ref
                          _%self155402162751%_
                          '1
                          '#f
                          'for-each))
                        (_%method162776162781%_
                         (##unchecked-structure-ref
                          _%self155402162751%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162776162781%_
                     _%object162775162780%_
                     _%proc162766%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162782162787%_
                         (##unchecked-structure-ref
                          _%self155402162751%_
                          '1
                          '#f
                          'for-each))
                        (_%method162783162788%_
                         (##unchecked-structure-ref
                          _%self155402162751%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162783162788%_
                     _%object162782162787%_
                     _%proc162766%_)))))
          _%lst162737%_)))
    (define hash->plist
      (lambda (_%h162710%_)
        (let* ((_%h162713%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162710%_)))
               (_%h162715%_ _%h162713%_))
          (__hash->plist _%h162715%_))))
    (define __hash-for-each
      (lambda (_%proc162642%_ _%h162643%_)
        (let* ((_%proc162646%_ _%proc162642%_)
               (_%h162654%_ _%h162643%_)
               (_%self155402162663%_ _%h162654%_)
               (_%proc162666%_ _%proc162646%_)
               (_%self155402162670%_ _%self155402162663%_)
               (_%self155402162672%_ _%self155402162670%_)
               (_%proc162686%_ _%proc162666%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162695162700%_
                       (##unchecked-structure-ref
                        _%self155402162672%_
                        '1
                        '#f
                        'for-each))
                      (_%method162696162701%_
                       (##unchecked-structure-ref
                        _%self155402162672%_
                        '5
                        '#f
                        'for-each)))
                  (_%method162696162701%_
                   _%object162695162700%_
                   _%proc162686%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162702162707%_
                       (##unchecked-structure-ref
                        _%self155402162672%_
                        '1
                        '#f
                        'for-each))
                      (_%method162703162708%_
                       (##unchecked-structure-ref
                        _%self155402162672%_
                        '5
                        '#f
                        'for-each)))
                  (_%method162703162708%_
                   _%object162702162707%_
                   _%proc162686%_)))))))
    (define hash-for-each
      (lambda (_%proc162616%_ _%h162617%_)
        (if (procedure? _%proc162616%_)
            (let* ((_%proc162621%_ _%proc162616%_)
                   (_%h162630%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162617%_)))
                   (_%h162632%_ _%h162630%_))
              (__hash-for-each _%proc162621%_ _%h162632%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@602.22-602.26"
               'contract:
               'procedure?
               'value:
               _%proc162616%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc162542%_ _%h162543%_)
        (let* ((_%proc162546%_ _%proc162542%_)
               (_%h162554%_ _%h162543%_)
               (_%result162563%_ '()))
          (let* ((_%self155402162565%_ _%h162554%_)
                 (_%proc162571%_
                  (lambda (_%k162568%_ _%v162569%_)
                    (set! _%result162563%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc162546%_ _%k162568%_ _%v162569%_))
                                _%result162563%_))))
                 (_%self155402162575%_ _%self155402162565%_)
                 (_%self155402162577%_ _%self155402162575%_)
                 (_%proc162592%_ _%proc162571%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162601162606%_
                         (##unchecked-structure-ref
                          _%self155402162577%_
                          '1
                          '#f
                          'for-each))
                        (_%method162602162607%_
                         (##unchecked-structure-ref
                          _%self155402162577%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162602162607%_
                     _%object162601162606%_
                     _%proc162592%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162608162613%_
                         (##unchecked-structure-ref
                          _%self155402162577%_
                          '1
                          '#f
                          'for-each))
                        (_%method162609162614%_
                         (##unchecked-structure-ref
                          _%self155402162577%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162609162614%_
                     _%object162608162613%_
                     _%proc162592%_)))))
          _%result162563%_)))
    (define hash-map
      (lambda (_%proc162516%_ _%h162517%_)
        (if (procedure? _%proc162516%_)
            (let* ((_%proc162521%_ _%proc162516%_)
                   (_%h162530%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162517%_)))
                   (_%h162532%_ _%h162530%_))
              (__hash-map _%proc162521%_ _%h162532%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@605.17-605.21"
               'contract:
               'procedure?
               'value:
               _%proc162516%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc162441%_ _%iv162442%_ _%h162443%_)
        (let* ((_%proc162446%_ _%proc162441%_)
               (_%h162454%_ _%h162443%_)
               (_%result162463%_ _%iv162442%_))
          (let* ((_%self155402162465%_ _%h162454%_)
                 (_%proc162471%_
                  (lambda (_%k162468%_ _%v162469%_)
                    (set! _%result162463%_
                          (let ()
                            (declare (not safe))
                            (_%proc162446%_
                             _%k162468%_
                             _%v162469%_
                             _%result162463%_)))))
                 (_%self155402162475%_ _%self155402162465%_)
                 (_%self155402162477%_ _%self155402162475%_)
                 (_%proc162492%_ _%proc162471%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162501162506%_
                         (##unchecked-structure-ref
                          _%self155402162477%_
                          '1
                          '#f
                          'for-each))
                        (_%method162502162507%_
                         (##unchecked-structure-ref
                          _%self155402162477%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162502162507%_
                     _%object162501162506%_
                     _%proc162492%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162508162513%_
                         (##unchecked-structure-ref
                          _%self155402162477%_
                          '1
                          '#f
                          'for-each))
                        (_%method162509162514%_
                         (##unchecked-structure-ref
                          _%self155402162477%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162509162514%_
                     _%object162508162513%_
                     _%proc162492%_)))))
          _%result162463%_)))
    (define hash-fold
      (lambda (_%proc162414%_ _%iv162415%_ _%h162416%_)
        (if (procedure? _%proc162414%_)
            (let* ((_%proc162420%_ _%proc162414%_)
                   (_%h162429%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162416%_)))
                   (_%h162431%_ _%h162429%_))
              (__hash-fold _%proc162420%_ _%iv162415%_ _%h162431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@611.18-611.22"
               'contract:
               'procedure?
               'value:
               _%proc162414%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc162324%_ _%h162325%_ _%default-value162326%_)
        (let* ((_%proc162329%_ _%proc162324%_)
               (_%h162337%_ _%h162325%_)
               (__tmp172658
                (lambda (_%return162346%_)
                  (let* ((_%self155402162348%_ _%h162337%_)
                         (_%proc162357%_
                          (lambda (_%k162351%_ _%v162352%_)
                            (let ((_%$e162354%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc162329%_
                                      _%k162351%_
                                      _%v162352%_))))
                              (if _%$e162354%_
                                  (_%return162346%_ _%$e162354%_)
                                  '#!void))))
                         (_%self155402162361%_ _%self155402162348%_)
                         (_%self155402162363%_ _%self155402162361%_)
                         (_%proc162378%_ _%proc162357%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object162387162392%_
                                 (##unchecked-structure-ref
                                  _%self155402162363%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method162388162393%_
                                 (##unchecked-structure-ref
                                  _%self155402162363%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method162388162393%_
                             _%object162387162392%_
                             _%proc162378%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object162394162399%_
                                 (##unchecked-structure-ref
                                  _%self155402162363%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method162395162400%_
                                 (##unchecked-structure-ref
                                  _%self155402162363%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method162395162400%_
                             _%object162394162399%_
                             _%proc162378%_)))))
                  _%default-value162326%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp172658))))
    (define __hash-find__0
      (lambda (_%proc162405%_ _%h162406%_)
        (let ((_%default-value162408%_ '#f))
          (__hash-find__%
           _%proc162405%_
           _%h162406%_
           _%default-value162408%_))))
    (define __hash-find
      (lambda _g172659_
        (let ((_g172660_ (let () (declare (not safe)) (##length _g172659_))))
          (cond ((let () (declare (not safe)) (##fx= _g172660_ 2))
                 (apply __hash-find__0 _g172659_))
                ((let () (declare (not safe)) (##fx= _g172660_ 3))
                 (apply __hash-find__% _g172659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g172659_))))))
    (define hash-find__%
      (lambda (_%proc162284%_ _%h162285%_ _%default-value162286%_)
        (if (procedure? _%proc162284%_)
            (let* ((_%proc162290%_ _%proc162284%_)
                   (_%h162299%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162285%_)))
                   (_%h162301%_ _%h162299%_))
              (__hash-find__%
               _%proc162290%_
               _%h162301%_
               _%default-value162286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@616.18-616.22"
               'contract:
               'procedure?
               'value:
               _%proc162284%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc162314%_ _%h162315%_)
        (let ((_%default-value162317%_ '#f))
          (hash-find__% _%proc162314%_ _%h162315%_ _%default-value162317%_))))
    (define hash-find
      (lambda _g172661_
        (let ((_g172662_ (let () (declare (not safe)) (##length _g172661_))))
          (cond ((let () (declare (not safe)) (##fx= _g172662_ 2))
                 (apply hash-find__0 _g172661_))
                ((let () (declare (not safe)) (##fx= _g172662_ 3))
                 (apply hash-find__% _g172661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g172661_))))))
    (define __hash-keys
      (lambda (_%h162218%_)
        (let* ((_%h162221%_ _%h162218%_) (_%result162230%_ '()))
          (let* ((_%self155402162232%_ _%h162221%_)
                 (_%proc162238%_
                  (lambda (_%k162235%_ _%v162236%_)
                    (set! _%result162230%_
                          (cons _%k162235%_ _%result162230%_))))
                 (_%self155402162242%_ _%self155402162232%_)
                 (_%self155402162244%_ _%self155402162242%_)
                 (_%proc162259%_ _%proc162238%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162268162273%_
                         (##unchecked-structure-ref
                          _%self155402162244%_
                          '1
                          '#f
                          'for-each))
                        (_%method162269162274%_
                         (##unchecked-structure-ref
                          _%self155402162244%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162269162274%_
                     _%object162268162273%_
                     _%proc162259%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162275162280%_
                         (##unchecked-structure-ref
                          _%self155402162244%_
                          '1
                          '#f
                          'for-each))
                        (_%method162276162281%_
                         (##unchecked-structure-ref
                          _%self155402162244%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162276162281%_
                     _%object162275162280%_
                     _%proc162259%_)))))
          _%result162230%_)))
    (define hash-keys
      (lambda (_%h162203%_)
        (let* ((_%h162206%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162203%_)))
               (_%h162208%_ _%h162206%_))
          (__hash-keys _%h162208%_))))
    (define __hash-values
      (lambda (_%h162138%_)
        (let* ((_%h162141%_ _%h162138%_) (_%result162150%_ '()))
          (let* ((_%self155402162152%_ _%h162141%_)
                 (_%proc162158%_
                  (lambda (_%k162155%_ _%v162156%_)
                    (set! _%result162150%_
                          (cons _%v162156%_ _%result162150%_))))
                 (_%self155402162162%_ _%self155402162152%_)
                 (_%self155402162164%_ _%self155402162162%_)
                 (_%proc162179%_ _%proc162158%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162188162193%_
                         (##unchecked-structure-ref
                          _%self155402162164%_
                          '1
                          '#f
                          'for-each))
                        (_%method162189162194%_
                         (##unchecked-structure-ref
                          _%self155402162164%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162189162194%_
                     _%object162188162193%_
                     _%proc162179%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162195162200%_
                         (##unchecked-structure-ref
                          _%self155402162164%_
                          '1
                          '#f
                          'for-each))
                        (_%method162196162201%_
                         (##unchecked-structure-ref
                          _%self155402162164%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162196162201%_
                     _%object162195162200%_
                     _%proc162179%_)))))
          _%result162150%_)))
    (define hash-values
      (lambda (_%h162123%_)
        (let* ((_%h162126%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162123%_)))
               (_%h162128%_ _%h162126%_))
          (__hash-values _%h162128%_))))
    (define __hash-copy
      (lambda (_%h162078%_)
        (let* ((_%h162081%_ _%h162078%_)
               (_%self154914162090%_ _%h162081%_)
               (_%self154914162094%_ _%self154914162090%_)
               (_%self154914162096%_ _%self154914162094%_))
          (if __DEBUG
              (let ((__tmp172663
                     (let ()
                       (declare (not safe))
                       (let ((_%object162108162113%_
                              (##unchecked-structure-ref
                               _%self154914162096%_
                               '1
                               '#f
                               'copy))
                             (_%method162109162114%_
                              (##unchecked-structure-ref
                               _%self154914162096%_
                               '3
                               '#f
                               'copy)))
                         (_%method162109162114%_ _%object162108162113%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp172663))
              (let ()
                (declare (not safe))
                (let ((_%object162115162120%_
                       (##unchecked-structure-ref
                        _%self154914162096%_
                        '1
                        '#f
                        'copy))
                      (_%method162116162121%_
                       (##unchecked-structure-ref
                        _%self154914162096%_
                        '3
                        '#f
                        'copy)))
                  (_%method162116162121%_ _%object162115162120%_)))))))
    (define hash-copy
      (lambda (_%h162063%_)
        (let* ((_%h162066%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162063%_)))
               (_%h162068%_ _%h162066%_))
          (__hash-copy _%h162068%_))))
    (define __hash-new
      (lambda (_%h161998%_)
        (let* ((_%h162001%_ _%h161998%_)
               (_%self155890162010%_ _%h162001%_)
               (_%size-hint162013%_ '#f)
               (_%self155890162017%_ _%self155890162010%_)
               (_%self155890162019%_ _%self155890162017%_))
          (if (let ((_%$e162035%_ '#t)) (and _%$e162035%_ _%$e162035%_))
              (let ((_%size-hint162039%_ _%size-hint162013%_))
                (if __DEBUG
                    (let ((__tmp172664
                           (let ()
                             (declare (not safe))
                             (let ((_%object162048162053%_
                                    (##unchecked-structure-ref
                                     _%self155890162019%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method162049162054%_
                                    (##unchecked-structure-ref
                                     _%self155890162019%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method162049162054%_
                                _%object162048162053%_
                                _%size-hint162039%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp172664))
                    (let ()
                      (declare (not safe))
                      (let ((_%object162055162060%_
                             (##unchecked-structure-ref
                              _%self155890162019%_
                              '1
                              '#f
                              'new))
                            (_%method162056162061%_
                             (##unchecked-structure-ref
                              _%self155890162019%_
                              '7
                              '#f
                              'new)))
                        (_%method162056162061%_
                         _%object162055162060%_
                         _%size-hint162039%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162013%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h161983%_)
        (let* ((_%h161986%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161983%_)))
               (_%h161988%_ _%h161986%_))
          (__hash-new _%h161988%_))))
    (define __hash-clear!
      (lambda (_%h161938%_)
        (let* ((_%h161941%_ _%h161938%_)
               (_%self154669161950%_ _%h161941%_)
               (_%self154669161954%_ _%self154669161950%_)
               (_%self154669161956%_ _%self154669161954%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161968161973%_
                       (##unchecked-structure-ref
                        _%self154669161956%_
                        '1
                        '#f
                        'clear!))
                      (_%method161969161974%_
                       (##unchecked-structure-ref
                        _%self154669161956%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161969161974%_ _%object161968161973%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161975161980%_
                       (##unchecked-structure-ref
                        _%self154669161956%_
                        '1
                        '#f
                        'clear!))
                      (_%method161976161981%_
                       (##unchecked-structure-ref
                        _%self154669161956%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161976161981%_ _%object161975161980%_)))))))
    (define hash-clear!
      (lambda (_%h161923%_)
        (let* ((_%h161926%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161923%_)))
               (_%h161928%_ _%h161926%_))
          (__hash-clear! _%h161928%_))))
    (define __hash-merge
      (lambda (_%h161875%_ . _%rest161876%_)
        (let* ((_%h161879%_ _%h161875%_)
               (_%copy161921%_
                (let* ((_%self154914161888%_ _%h161879%_)
                       (_%self154914161892%_ _%self154914161888%_)
                       (_%self154914161894%_ _%self154914161892%_))
                  (if __DEBUG
                      (let ((__tmp172665
                             (let ()
                               (declare (not safe))
                               (let ((_%object161906161911%_
                                      (##unchecked-structure-ref
                                       _%self154914161894%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161907161912%_
                                      (##unchecked-structure-ref
                                       _%self154914161894%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161907161912%_
                                  _%object161906161911%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp172665))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161913161918%_
                               (##unchecked-structure-ref
                                _%self154914161894%_
                                '1
                                '#f
                                'copy))
                              (_%method161914161919%_
                               (##unchecked-structure-ref
                                _%self154914161894%_
                                '3
                                '#f
                                'copy)))
                          (_%method161914161919%_ _%object161913161918%_)))))))
          (apply hash-merge! _%copy161921%_ _%rest161876%_)
          _%copy161921%_)))
    (define hash-merge
      (lambda (_%h161859%_ . _%rest161860%_)
        (let* ((_%h161863%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161859%_)))
               (_%h161865%_ _%h161863%_))
          (declare (not safe))
          (##apply __hash-merge _%h161865%_ _%rest161860%_))))
    (define __hash-merge-right
      (lambda (_%h161811%_ . _%rest161812%_)
        (let* ((_%h161815%_ _%h161811%_)
               (_%copy161857%_
                (let* ((_%self154914161824%_ _%h161815%_)
                       (_%self154914161828%_ _%self154914161824%_)
                       (_%self154914161830%_ _%self154914161828%_))
                  (if __DEBUG
                      (let ((__tmp172666
                             (let ()
                               (declare (not safe))
                               (let ((_%object161842161847%_
                                      (##unchecked-structure-ref
                                       _%self154914161830%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161843161848%_
                                      (##unchecked-structure-ref
                                       _%self154914161830%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161843161848%_
                                  _%object161842161847%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp172666))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161849161854%_
                               (##unchecked-structure-ref
                                _%self154914161830%_
                                '1
                                '#f
                                'copy))
                              (_%method161850161855%_
                               (##unchecked-structure-ref
                                _%self154914161830%_
                                '3
                                '#f
                                'copy)))
                          (_%method161850161855%_ _%object161849161854%_)))))))
          (apply hash-merge-right! _%copy161857%_ _%rest161812%_)
          _%copy161857%_)))
    (define hash-merge-right
      (lambda (_%h161795%_ . _%rest161796%_)
        (let* ((_%h161799%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161795%_)))
               (_%h161801%_ _%h161799%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h161801%_ _%rest161796%_))))
    (define __hash-merge!
      (lambda (_%h161655%_ . _%rest161656%_)
        (let ((_%h161659%_ _%h161655%_))
          (let ((__tmp172667
                 (lambda (_%hr161668%_)
                   (let* ((_%hr161671%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr161668%_)))
                          (_%hr161673%_ _%hr161671%_)
                          (_%self155402161686%_ _%hr161673%_)
                          (_%proc161755%_
                           (lambda (_%k161689%_ _%v161690%_)
                             (if (let* ((_%h161692%_ _%h161659%_)
                                        (_%k161695%_ _%k161689%_)
                                        (_%h161699%_ _%h161692%_)
                                        (_%h161701%_ _%h161699%_))
                                   (__hash-key? _%h161701%_ _%k161695%_))
                                 '#!void
                                 (let* ((_%self156378161717%_ _%h161659%_)
                                        (_%key161720%_ _%k161689%_)
                                        (_%value161723%_ _%v161690%_)
                                        (_%self156378161727%_
                                         _%self156378161717%_)
                                        (_%self156378161729%_
                                         _%self156378161727%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161740161745%_
                                                (##unchecked-structure-ref
                                                 _%self156378161729%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161741161746%_
                                                (##unchecked-structure-ref
                                                 _%self156378161729%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method161741161746%_
                                            _%object161740161745%_
                                            _%key161720%_
                                            _%value161723%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161747161752%_
                                                (##unchecked-structure-ref
                                                 _%self156378161729%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161748161753%_
                                                (##unchecked-structure-ref
                                                 _%self156378161729%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method161748161753%_
                                            _%object161747161752%_
                                            _%key161720%_
                                            _%value161723%_))))))))
                          (_%self155402161759%_ _%self155402161686%_)
                          (_%self155402161761%_ _%self155402161759%_)
                          (_%proc161771%_ _%proc161755%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161780161785%_
                                  (##unchecked-structure-ref
                                   _%self155402161761%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161781161786%_
                                  (##unchecked-structure-ref
                                   _%self155402161761%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161781161786%_
                              _%object161780161785%_
                              _%proc161771%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161787161792%_
                                  (##unchecked-structure-ref
                                   _%self155402161761%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161788161793%_
                                  (##unchecked-structure-ref
                                   _%self155402161761%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161788161793%_
                              _%object161787161792%_
                              _%proc161771%_))))))))
            (declare (not safe))
            (##for-each __tmp172667 _%rest161656%_))
          _%h161659%_)))
    (define hash-merge!
      (lambda (_%h161639%_ . _%rest161640%_)
        (let* ((_%h161643%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161639%_)))
               (_%h161645%_ _%h161643%_))
          (declare (not safe))
          (##apply __hash-merge! _%h161645%_ _%rest161640%_))))
    (define __hash-merge-right!
      (lambda (_%h161519%_ . _%rest161520%_)
        (let ((_%h161523%_ _%h161519%_))
          (let ((__tmp172668
                 (lambda (_%hr161532%_)
                   (let* ((_%hr161535%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr161532%_)))
                          (_%hr161537%_ _%hr161535%_)
                          (_%self155402161550%_ _%hr161537%_)
                          (_%proc161599%_
                           (lambda (_%k161553%_ _%v161554%_)
                             (let* ((_%self156378161556%_ _%h161523%_)
                                    (_%key161559%_ _%k161553%_)
                                    (_%value161562%_ _%v161554%_)
                                    (_%self156378161566%_ _%self156378161556%_)
                                    (_%self156378161568%_
                                     _%self156378161566%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161584161589%_
                                            (##unchecked-structure-ref
                                             _%self156378161568%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161585161590%_
                                            (##unchecked-structure-ref
                                             _%self156378161568%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method161585161590%_
                                        _%object161584161589%_
                                        _%key161559%_
                                        _%value161562%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161591161596%_
                                            (##unchecked-structure-ref
                                             _%self156378161568%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161592161597%_
                                            (##unchecked-structure-ref
                                             _%self156378161568%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method161592161597%_
                                        _%object161591161596%_
                                        _%key161559%_
                                        _%value161562%_)))))))
                          (_%self155402161603%_ _%self155402161550%_)
                          (_%self155402161605%_ _%self155402161603%_)
                          (_%proc161615%_ _%proc161599%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161624161629%_
                                  (##unchecked-structure-ref
                                   _%self155402161605%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161625161630%_
                                  (##unchecked-structure-ref
                                   _%self155402161605%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161625161630%_
                              _%object161624161629%_
                              _%proc161615%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161631161636%_
                                  (##unchecked-structure-ref
                                   _%self155402161605%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161632161637%_
                                  (##unchecked-structure-ref
                                   _%self155402161605%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161632161637%_
                              _%object161631161636%_
                              _%proc161615%_))))))))
            (declare (not safe))
            (##for-each __tmp172668 _%rest161520%_))
          _%h161523%_)))
    (define hash-merge-right!
      (lambda (_%h161503%_ . _%rest161504%_)
        (let* ((_%h161507%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161503%_)))
               (_%h161509%_ _%h161507%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h161509%_ _%rest161504%_))))))
