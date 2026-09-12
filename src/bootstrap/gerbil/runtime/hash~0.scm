(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1789188906)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170381 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp170381
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args168993%_
        (apply make-instance UnboundKeyError::t _%$args168993%_)))
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
      (lambda (_%where168867%_ _%message168868%_ . _%irritants168869%_)
        (let ((__tmp170382
               (let ((__obj170373
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj170373
                    _%message168868%_
                    'where:
                    _%where168867%_
                    'irritants:
                    _%irritants168869%_))
                 __obj170373)))
          (declare (not safe))
          (raise __tmp170382))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170383 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp170383
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170375
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170375
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
        __obj170375))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj168865%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168865%_))))
    (define try-HashTable
      (lambda (_%obj168863%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168863%_))))
    (define HashTable?
      (lambda (_%obj168861%_)
        (let ((__tmp170384
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168861%_ __tmp170384))))
    (define is-HashTable?
      (lambda (_%obj168858%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168858%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self152481168841%_)
        (let ((_%self152481168843%_ _%self152481168841%_))
          (declare (not safe))
          (let ((_%object168850168855%_
                 (##unchecked-structure-ref
                  _%self152481168843%_
                  '1
                  '#f
                  'clear!))
                (_%method168851168856%_
                 (##unchecked-structure-ref
                  _%self152481168843%_
                  '2
                  '#f
                  'clear!)))
            (_%method168851168856%_ _%object168850168855%_)))))
    (define ::HashTable-clear!
      (lambda (_%self152482168814%_)
        (let* ((_%self152482168816%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152482168814%_)))
               (_%self152482168818%_ _%self152482168816%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168826168831%_
                       (##unchecked-structure-ref
                        _%self152482168818%_
                        '1
                        '#f
                        'clear!))
                      (_%method168827168832%_
                       (##unchecked-structure-ref
                        _%self152482168818%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168827168832%_ _%object168826168831%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168833168838%_
                       (##unchecked-structure-ref
                        _%self152482168818%_
                        '1
                        '#f
                        'clear!))
                      (_%method168834168839%_
                       (##unchecked-structure-ref
                        _%self152482168818%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168834168839%_ _%object168833168838%_)))))))
    (define __HashTable-copy
      (lambda (_%self152726168797%_)
        (let ((_%self152726168799%_ _%self152726168797%_))
          (declare (not safe))
          (let ((_%object168806168811%_
                 (##unchecked-structure-ref _%self152726168799%_ '1 '#f 'copy))
                (_%method168807168812%_
                 (##unchecked-structure-ref
                  _%self152726168799%_
                  '3
                  '#f
                  'copy)))
            (_%method168807168812%_ _%object168806168811%_)))))
    (define ::HashTable-copy
      (lambda (_%self152727168770%_)
        (let* ((_%self152727168772%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152727168770%_)))
               (_%self152727168774%_ _%self152727168772%_))
          (if __DEBUG
              (let ((__tmp170385
                     (let ()
                       (declare (not safe))
                       (let ((_%object168782168787%_
                              (##unchecked-structure-ref
                               _%self152727168774%_
                               '1
                               '#f
                               'copy))
                             (_%method168783168788%_
                              (##unchecked-structure-ref
                               _%self152727168774%_
                               '3
                               '#f
                               'copy)))
                         (_%method168783168788%_ _%object168782168787%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170385))
              (let ()
                (declare (not safe))
                (let ((_%object168789168794%_
                       (##unchecked-structure-ref
                        _%self152727168774%_
                        '1
                        '#f
                        'copy))
                      (_%method168790168795%_
                       (##unchecked-structure-ref
                        _%self152727168774%_
                        '3
                        '#f
                        'copy)))
                  (_%method168790168795%_ _%object168789168794%_)))))))
    (define __HashTable-delete!
      (lambda (_%self152970168752%_ _%key168753%_)
        (let ((_%self152970168755%_ _%self152970168752%_))
          (declare (not safe))
          (let ((_%object168762168767%_
                 (##unchecked-structure-ref
                  _%self152970168755%_
                  '1
                  '#f
                  'delete!))
                (_%method168763168768%_
                 (##unchecked-structure-ref
                  _%self152970168755%_
                  '4
                  '#f
                  'delete!)))
            (_%method168763168768%_ _%object168762168767%_ _%key168753%_)))))
    (define ::HashTable-delete!
      (lambda (_%self152971168724%_ _%key168725%_)
        (let* ((_%self152971168727%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152971168724%_)))
               (_%self152971168729%_ _%self152971168727%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168737168742%_
                       (##unchecked-structure-ref
                        _%self152971168729%_
                        '1
                        '#f
                        'delete!))
                      (_%method168738168743%_
                       (##unchecked-structure-ref
                        _%self152971168729%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168738168743%_
                   _%object168737168742%_
                   _%key168725%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168744168749%_
                       (##unchecked-structure-ref
                        _%self152971168729%_
                        '1
                        '#f
                        'delete!))
                      (_%method168745168750%_
                       (##unchecked-structure-ref
                        _%self152971168729%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168745168750%_
                   _%object168744168749%_
                   _%key168725%_)))))))
    (define __HashTable-for-each
      (lambda (_%self153214168698%_ _%proc168699%_)
        (let* ((_%self153214168701%_ _%self153214168698%_)
               (_%proc168708%_ _%proc168699%_))
          (declare (not safe))
          (let ((_%object168716168721%_
                 (##unchecked-structure-ref
                  _%self153214168701%_
                  '1
                  '#f
                  'for-each))
                (_%method168717168722%_
                 (##unchecked-structure-ref
                  _%self153214168701%_
                  '5
                  '#f
                  'for-each)))
            (_%method168717168722%_ _%object168716168721%_ _%proc168708%_)))))
    (define ::HashTable-for-each
      (lambda (_%self153215168660%_ _%proc168661%_)
        (let* ((_%self153215168663%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153215168660%_)))
               (_%self153215168665%_ _%self153215168663%_))
          (if (procedure? _%proc168661%_)
              (let ((_%proc168674%_ _%proc168661%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168683168688%_
                             (##unchecked-structure-ref
                              _%self153215168665%_
                              '1
                              '#f
                              'for-each))
                            (_%method168684168689%_
                             (##unchecked-structure-ref
                              _%self153215168665%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168684168689%_
                         _%object168683168688%_
                         _%proc168674%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168690168695%_
                             (##unchecked-structure-ref
                              _%self153215168665%_
                              '1
                              '#f
                              'for-each))
                            (_%method168691168696%_
                             (##unchecked-structure-ref
                              _%self153215168665%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168691168696%_
                         _%object168690168695%_
                         _%proc168674%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168661%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self153458168643%_)
        (let ((_%self153458168645%_ _%self153458168643%_))
          (declare (not safe))
          (let ((_%object168652168657%_
                 (##unchecked-structure-ref
                  _%self153458168645%_
                  '1
                  '#f
                  'length))
                (_%method168653168658%_
                 (##unchecked-structure-ref
                  _%self153458168645%_
                  '6
                  '#f
                  'length)))
            (_%method168653168658%_ _%object168652168657%_)))))
    (define ::HashTable-length
      (lambda (_%self153459168613%_)
        (let* ((_%self153459168615%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153459168613%_)))
               (_%self153459168617%_ _%self153459168615%_))
          (if __DEBUG
              (let ((_%val168633%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168625168630%_
                              (##unchecked-structure-ref
                               _%self153459168617%_
                               '1
                               '#f
                               'length))
                             (_%method168626168631%_
                              (##unchecked-structure-ref
                               _%self153459168617%_
                               '6
                               '#f
                               'length)))
                         (_%method168626168631%_ _%object168625168630%_)))))
                (if (fixnum? _%val168633%_)
                    _%val168633%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val168633%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object168635168640%_
                       (##unchecked-structure-ref
                        _%self153459168617%_
                        '1
                        '#f
                        'length))
                      (_%method168636168641%_
                       (##unchecked-structure-ref
                        _%self153459168617%_
                        '6
                        '#f
                        'length)))
                  (_%method168636168641%_ _%object168635168640%_)))))))
    (define __HashTable-new__%
      (lambda (_%self153702168577%_ _%size-hint168578%_)
        (let* ((_%self153702168580%_ _%self153702168577%_)
               (_%size-hint168587%_ _%size-hint168578%_))
          (declare (not safe))
          (let ((_%object168595168600%_
                 (##unchecked-structure-ref _%self153702168580%_ '1 '#f 'new))
                (_%method168596168601%_
                 (##unchecked-structure-ref _%self153702168580%_ '7 '#f 'new)))
            (_%method168596168601%_
             _%object168595168600%_
             _%size-hint168587%_)))))
    (define __HashTable-new__0
      (lambda (_%self153702168606%_)
        (let ((_%size-hint168608%_ '#f))
          (__HashTable-new__% _%self153702168606%_ _%size-hint168608%_))))
    (define __HashTable-new
      (lambda _g170386_
        (let ((_g170387_ (let () (declare (not safe)) (##length _g170386_))))
          (cond ((let () (declare (not safe)) (##fx= _g170387_ 1))
                 (apply __HashTable-new__0 _g170386_))
                ((let () (declare (not safe)) (##fx= _g170387_ 2))
                 (apply __HashTable-new__% _g170386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g170386_))))))
    (define ::HashTable-new__%
      (lambda (_%self153703168522%_ _%size-hint168523%_)
        (let* ((_%self153703168525%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153703168522%_)))
               (_%self153703168527%_ _%self153703168525%_))
          (if (or (not _%size-hint168523%_) (fixnum? _%size-hint168523%_))
              (let ((_%size-hint168542%_ _%size-hint168523%_))
                (if __DEBUG
                    (let ((__tmp170388
                           (let ()
                             (declare (not safe))
                             (let ((_%object168551168556%_
                                    (##unchecked-structure-ref
                                     _%self153703168527%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method168552168557%_
                                    (##unchecked-structure-ref
                                     _%self153703168527%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method168552168557%_
                                _%object168551168556%_
                                _%size-hint168542%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170388))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168558168563%_
                             (##unchecked-structure-ref
                              _%self153703168527%_
                              '1
                              '#f
                              'new))
                            (_%method168559168564%_
                             (##unchecked-structure-ref
                              _%self153703168527%_
                              '7
                              '#f
                              'new)))
                        (_%method168559168564%_
                         _%object168558168563%_
                         _%size-hint168542%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint168523%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self153703168569%_)
        (let ((_%size-hint168571%_ '#f))
          (::HashTable-new__% _%self153703168569%_ _%size-hint168571%_))))
    (define ::HashTable-new
      (lambda _g170389_
        (let ((_g170390_ (let () (declare (not safe)) (##length _g170389_))))
          (cond ((let () (declare (not safe)) (##fx= _g170390_ 1))
                 (apply ::HashTable-new__0 _g170389_))
                ((let () (declare (not safe)) (##fx= _g170390_ 2))
                 (apply ::HashTable-new__% _g170389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g170389_))))))
    (define __HashTable-ref
      (lambda (_%self153946168502%_ _%key168503%_ _%default168504%_)
        (let ((_%self153946168506%_ _%self153946168502%_))
          (declare (not safe))
          (let ((_%object168513168518%_
                 (##unchecked-structure-ref _%self153946168506%_ '1 '#f 'ref))
                (_%method168514168519%_
                 (##unchecked-structure-ref _%self153946168506%_ '8 '#f 'ref)))
            (_%method168514168519%_
             _%object168513168518%_
             _%key168503%_
             _%default168504%_)))))
    (define ::HashTable-ref
      (lambda (_%self153947168473%_ _%key168474%_ _%default168475%_)
        (let* ((_%self153947168477%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153947168473%_)))
               (_%self153947168479%_ _%self153947168477%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168487168492%_
                       (##unchecked-structure-ref
                        _%self153947168479%_
                        '1
                        '#f
                        'ref))
                      (_%method168488168493%_
                       (##unchecked-structure-ref
                        _%self153947168479%_
                        '8
                        '#f
                        'ref)))
                  (_%method168488168493%_
                   _%object168487168492%_
                   _%key168474%_
                   _%default168475%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168494168499%_
                       (##unchecked-structure-ref
                        _%self153947168479%_
                        '1
                        '#f
                        'ref))
                      (_%method168495168500%_
                       (##unchecked-structure-ref
                        _%self153947168479%_
                        '8
                        '#f
                        'ref)))
                  (_%method168495168500%_
                   _%object168494168499%_
                   _%key168474%_
                   _%default168475%_)))))))
    (define __HashTable-set!
      (lambda (_%self154190168454%_ _%key168455%_ _%value168456%_)
        (let ((_%self154190168458%_ _%self154190168454%_))
          (declare (not safe))
          (let ((_%object168465168470%_
                 (##unchecked-structure-ref _%self154190168458%_ '1 '#f 'set!))
                (_%method168466168471%_
                 (##unchecked-structure-ref
                  _%self154190168458%_
                  '9
                  '#f
                  'set!)))
            (_%method168466168471%_
             _%object168465168470%_
             _%key168455%_
             _%value168456%_)))))
    (define ::HashTable-set!
      (lambda (_%self154191168425%_ _%key168426%_ _%value168427%_)
        (let* ((_%self154191168429%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154191168425%_)))
               (_%self154191168431%_ _%self154191168429%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168439168444%_
                       (##unchecked-structure-ref
                        _%self154191168431%_
                        '1
                        '#f
                        'set!))
                      (_%method168440168445%_
                       (##unchecked-structure-ref
                        _%self154191168431%_
                        '9
                        '#f
                        'set!)))
                  (_%method168440168445%_
                   _%object168439168444%_
                   _%key168426%_
                   _%value168427%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168446168451%_
                       (##unchecked-structure-ref
                        _%self154191168431%_
                        '1
                        '#f
                        'set!))
                      (_%method168447168452%_
                       (##unchecked-structure-ref
                        _%self154191168431%_
                        '9
                        '#f
                        'set!)))
                  (_%method168447168452%_
                   _%object168446168451%_
                   _%key168426%_
                   _%value168427%_)))))))
    (define __HashTable-update!
      (lambda (_%self154434168397%_
               _%key168398%_
               _%proc168399%_
               _%default168400%_)
        (let* ((_%self154434168402%_ _%self154434168397%_)
               (_%proc168409%_ _%proc168399%_))
          (declare (not safe))
          (let ((_%object168417168422%_
                 (##unchecked-structure-ref
                  _%self154434168402%_
                  '1
                  '#f
                  'update!))
                (_%method168418168423%_
                 (##unchecked-structure-ref
                  _%self154434168402%_
                  '10
                  '#f
                  'update!)))
            (_%method168418168423%_
             _%object168417168422%_
             _%key168398%_
             _%proc168409%_
             _%default168400%_)))))
    (define ::HashTable-update!
      (lambda (_%self154435168357%_
               _%key168358%_
               _%proc168359%_
               _%default168360%_)
        (let* ((_%self154435168362%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154435168357%_)))
               (_%self154435168364%_ _%self154435168362%_))
          (if (procedure? _%proc168359%_)
              (let ((_%proc168373%_ _%proc168359%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168382168387%_
                             (##unchecked-structure-ref
                              _%self154435168364%_
                              '1
                              '#f
                              'update!))
                            (_%method168383168388%_
                             (##unchecked-structure-ref
                              _%self154435168364%_
                              '10
                              '#f
                              'update!)))
                        (_%method168383168388%_
                         _%object168382168387%_
                         _%key168358%_
                         _%proc168373%_
                         _%default168360%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168389168394%_
                             (##unchecked-structure-ref
                              _%self154435168364%_
                              '1
                              '#f
                              'update!))
                            (_%method168390168395%_
                             (##unchecked-structure-ref
                              _%self154435168364%_
                              '10
                              '#f
                              'update!)))
                        (_%method168390168395%_
                         _%object168389168394%_
                         _%key168358%_
                         _%proc168373%_
                         _%default168360%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168359%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170391 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp170391
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170377
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170377
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170377))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj168355%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj168355%_))))
    (define try-Locker
      (lambda (_%obj168353%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj168353%_))))
    (define Locker?
      (lambda (_%obj168351%_)
        (let ((__tmp170392
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168351%_ __tmp170392))))
    (define is-Locker?
      (lambda (_%obj168348%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj168348%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self154678168331%_)
        (let ((_%self154678168333%_ _%self154678168331%_))
          (declare (not safe))
          (let ((_%object168340168345%_
                 (##unchecked-structure-ref
                  _%self154678168333%_
                  '1
                  '#f
                  'read-lock!))
                (_%method168341168346%_
                 (##unchecked-structure-ref
                  _%self154678168333%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method168341168346%_ _%object168340168345%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self154679168304%_)
        (let* ((_%self154679168306%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154679168304%_)))
               (_%self154679168308%_ _%self154679168306%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168316168321%_
                       (##unchecked-structure-ref
                        _%self154679168308%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168317168322%_
                       (##unchecked-structure-ref
                        _%self154679168308%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168317168322%_ _%object168316168321%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168323168328%_
                       (##unchecked-structure-ref
                        _%self154679168308%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168324168329%_
                       (##unchecked-structure-ref
                        _%self154679168308%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168324168329%_ _%object168323168328%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self154922168287%_)
        (let ((_%self154922168289%_ _%self154922168287%_))
          (declare (not safe))
          (let ((_%object168296168301%_
                 (##unchecked-structure-ref
                  _%self154922168289%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method168297168302%_
                 (##unchecked-structure-ref
                  _%self154922168289%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method168297168302%_ _%object168296168301%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self154923168260%_)
        (let* ((_%self154923168262%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154923168260%_)))
               (_%self154923168264%_ _%self154923168262%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168272168277%_
                       (##unchecked-structure-ref
                        _%self154923168264%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168273168278%_
                       (##unchecked-structure-ref
                        _%self154923168264%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168273168278%_ _%object168272168277%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168279168284%_
                       (##unchecked-structure-ref
                        _%self154923168264%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168280168285%_
                       (##unchecked-structure-ref
                        _%self154923168264%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168280168285%_ _%object168279168284%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self155166168243%_)
        (let ((_%self155166168245%_ _%self155166168243%_))
          (declare (not safe))
          (let ((_%object168252168257%_
                 (##unchecked-structure-ref
                  _%self155166168245%_
                  '1
                  '#f
                  'write-lock!))
                (_%method168253168258%_
                 (##unchecked-structure-ref
                  _%self155166168245%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method168253168258%_ _%object168252168257%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self155167168216%_)
        (let* ((_%self155167168218%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155167168216%_)))
               (_%self155167168220%_ _%self155167168218%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168228168233%_
                       (##unchecked-structure-ref
                        _%self155167168220%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168229168234%_
                       (##unchecked-structure-ref
                        _%self155167168220%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168229168234%_ _%object168228168233%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168235168240%_
                       (##unchecked-structure-ref
                        _%self155167168220%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168236168241%_
                       (##unchecked-structure-ref
                        _%self155167168220%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168236168241%_ _%object168235168240%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self155410168199%_)
        (let ((_%self155410168201%_ _%self155410168199%_))
          (declare (not safe))
          (let ((_%object168208168213%_
                 (##unchecked-structure-ref
                  _%self155410168201%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method168209168214%_
                 (##unchecked-structure-ref
                  _%self155410168201%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method168209168214%_ _%object168208168213%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self155411168172%_)
        (let* ((_%self155411168174%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155411168172%_)))
               (_%self155411168176%_ _%self155411168174%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168184168189%_
                       (##unchecked-structure-ref
                        _%self155411168176%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168185168190%_
                       (##unchecked-structure-ref
                        _%self155411168176%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168185168190%_ _%object168184168189%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168191168196%_
                       (##unchecked-structure-ref
                        _%self155411168176%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168192168197%_
                       (##unchecked-structure-ref
                        _%self155411168176%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168192168197%_ _%object168191168196%_)))))))
    (define __wrap-hash
      (lambda (_%proc168158%_)
        (let ((_%proc168161%_ _%proc168158%_))
          (lambda (_%self168170%_)
            (let ((__tmp170393
                   (let ()
                     (declare (not safe))
                     (_%proc168161%_ _%self168170%_))))
              (declare (not safe))
              (cast HashTable::interface __tmp170393))))))
    (define wrap-hash
      (lambda (_%proc168144%_)
        (if (procedure? _%proc168144%_)
            (let ((_%proc168148%_ _%proc168144%_))
              (__wrap-hash _%proc168148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@42.18-42.22"
               'contract:
               'procedure?
               'value:
               _%proc168144%_)
              '#!void))))
    (define __wrap-hash-new
      (lambda (_%proc168118%_)
        (let* ((_%proc168121%_ _%proc168118%_)
               (_%$%opt-lambda168129168134%_
                (lambda (_%self168131%_ _%size-hint168132%_)
                  (let ((__tmp170394
                         (let ()
                           (declare (not safe))
                           (_%proc168121%_
                            _%self168131%_
                            _%size-hint168132%_))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp170394)))))
          (lambda _g170395_
            (let ((_g170396_
                   (let () (declare (not safe)) (##length _g170395_))))
              (cond ((let () (declare (not safe)) (##fx= _g170396_ 1))
                     (apply (lambda (_%self168137%_)
                              (let ((_%size-hint168139%_ '#f))
                                (_%$%opt-lambda168129168134%_
                                 _%self168137%_
                                 _%size-hint168139%_)))
                            _g170395_))
                    ((let () (declare (not safe)) (##fx= _g170396_ 2))
                     (apply _%$%opt-lambda168129168134%_ _g170395_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g170395_))))))))
    (define wrap-hash-new
      (lambda (_%proc168104%_)
        (if (procedure? _%proc168104%_)
            (let ((_%proc168108%_ _%proc168104%_))
              (__wrap-hash-new _%proc168108%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@46.22-46.26"
               'contract:
               'procedure?
               'value:
               _%proc168104%_)
              '#!void))))
    (let* ((_%klass168067%_ __table::t)
           (_%id168070%_ 'HashTable::ref)
           (_%proc168073%_ raw-table-ref)
           (_%rebind?168076%_ '#f)
           (_%id168081%_ _%id168070%_)
           (_%proc168094%_ _%proc168073%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168067%_
       _%id168081%_
       _%proc168094%_
       _%rebind?168076%_))
    (let* ((_%klass168030%_ __table::t)
           (_%id168033%_ 'HashTable::set!)
           (_%proc168036%_ raw-table-set!)
           (_%rebind?168039%_ '#f)
           (_%id168044%_ _%id168033%_)
           (_%proc168057%_ _%proc168036%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168030%_
       _%id168044%_
       _%proc168057%_
       _%rebind?168039%_))
    (let* ((_%klass167993%_ __table::t)
           (_%id167996%_ 'HashTable::update!)
           (_%proc167999%_ raw-table-update!)
           (_%rebind?168002%_ '#f)
           (_%id168007%_ _%id167996%_)
           (_%proc168020%_ _%proc167999%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167993%_
       _%id168007%_
       _%proc168020%_
       _%rebind?168002%_))
    (let* ((_%klass167956%_ __table::t)
           (_%id167959%_ 'HashTable::delete!)
           (_%proc167962%_ raw-table-delete!)
           (_%rebind?167965%_ '#f)
           (_%id167970%_ _%id167959%_)
           (_%proc167983%_ _%proc167962%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167956%_
       _%id167970%_
       _%proc167983%_
       _%rebind?167965%_))
    (let* ((_%klass167919%_ __table::t)
           (_%id167922%_ 'HashTable::for-each)
           (_%proc167925%_ raw-table-for-each)
           (_%rebind?167928%_ '#f)
           (_%id167933%_ _%id167922%_)
           (_%proc167946%_ _%proc167925%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167919%_
       _%id167933%_
       _%proc167946%_
       _%rebind?167928%_))
    (let* ((_%klass167882%_ __table::t)
           (_%id167885%_ 'HashTable::length)
           (_%proc167888%_ &raw-table-count)
           (_%rebind?167891%_ '#f)
           (_%id167896%_ _%id167885%_)
           (_%proc167909%_ _%proc167888%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167882%_
       _%id167896%_
       _%proc167909%_
       _%rebind?167891%_))
    (let* ((_%klass167830%_ __table::t)
           (_%id167833%_ 'HashTable::copy)
           (_%proc167853%_
            (let* ((_%proc167836%_ raw-table-copy)
                   (_%proc167841%_ _%proc167836%_))
              (__wrap-hash _%proc167841%_)))
           (_%rebind?167856%_ '#f)
           (_%id167861%_ _%id167833%_))
      (if (procedure? _%proc167853%_)
          (let ((_%proc167872%_ _%proc167853%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167830%_
             _%id167861%_
             _%proc167872%_
             _%rebind?167856%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167853%_)
            '#!void)))
    (let* ((_%klass167778%_ __table::t)
           (_%id167781%_ 'HashTable::new)
           (_%proc167801%_
            (let* ((_%proc167784%_ raw-table-new)
                   (_%proc167789%_ _%proc167784%_))
              (__wrap-hash-new _%proc167789%_)))
           (_%rebind?167804%_ '#f)
           (_%id167809%_ _%id167781%_))
      (if (procedure? _%proc167801%_)
          (let ((_%proc167820%_ _%proc167801%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167778%_
             _%id167809%_
             _%proc167820%_
             _%rebind?167804%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167801%_)
            '#!void)))
    (let* ((_%klass167741%_ __table::t)
           (_%id167744%_ 'HashTable::clear!)
           (_%proc167747%_ raw-table-clear!)
           (_%rebind?167750%_ '#f)
           (_%id167755%_ _%id167744%_)
           (_%proc167768%_ _%proc167747%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167741%_
       _%id167755%_
       _%proc167768%_
       _%rebind?167750%_))
    (let* ((_%klass167704%_ __gc-table::t)
           (_%id167707%_ 'HashTable::ref)
           (_%proc167710%_ gc-table-ref)
           (_%rebind?167713%_ '#f)
           (_%id167718%_ _%id167707%_)
           (_%proc167731%_ _%proc167710%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167704%_
       _%id167718%_
       _%proc167731%_
       _%rebind?167713%_))
    (let* ((_%klass167667%_ __gc-table::t)
           (_%id167670%_ 'HashTable::set!)
           (_%proc167673%_ gc-table-set!)
           (_%rebind?167676%_ '#f)
           (_%id167681%_ _%id167670%_)
           (_%proc167694%_ _%proc167673%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167667%_
       _%id167681%_
       _%proc167694%_
       _%rebind?167676%_))
    (let* ((_%klass167630%_ __gc-table::t)
           (_%id167633%_ 'HashTable::update!)
           (_%proc167636%_ gc-table-update!)
           (_%rebind?167639%_ '#f)
           (_%id167644%_ _%id167633%_)
           (_%proc167657%_ _%proc167636%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167630%_
       _%id167644%_
       _%proc167657%_
       _%rebind?167639%_))
    (let* ((_%klass167593%_ __gc-table::t)
           (_%id167596%_ 'HashTable::delete!)
           (_%proc167599%_ gc-table-delete!)
           (_%rebind?167602%_ '#f)
           (_%id167607%_ _%id167596%_)
           (_%proc167620%_ _%proc167599%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167593%_
       _%id167607%_
       _%proc167620%_
       _%rebind?167602%_))
    (let* ((_%klass167556%_ __gc-table::t)
           (_%id167559%_ 'HashTable::for-each)
           (_%proc167562%_ gc-table-for-each)
           (_%rebind?167565%_ '#f)
           (_%id167570%_ _%id167559%_)
           (_%proc167583%_ _%proc167562%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167556%_
       _%id167570%_
       _%proc167583%_
       _%rebind?167565%_))
    (let* ((_%klass167519%_ __gc-table::t)
           (_%id167522%_ 'HashTable::length)
           (_%proc167525%_ gc-table-length)
           (_%rebind?167528%_ '#f)
           (_%id167533%_ _%id167522%_)
           (_%proc167546%_ _%proc167525%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167519%_
       _%id167533%_
       _%proc167546%_
       _%rebind?167528%_))
    (let* ((_%klass167467%_ __gc-table::t)
           (_%id167470%_ 'HashTable::copy)
           (_%proc167490%_
            (let* ((_%proc167473%_ gc-table-copy)
                   (_%proc167478%_ _%proc167473%_))
              (__wrap-hash _%proc167478%_)))
           (_%rebind?167493%_ '#f)
           (_%id167498%_ _%id167470%_))
      (if (procedure? _%proc167490%_)
          (let ((_%proc167509%_ _%proc167490%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167467%_
             _%id167498%_
             _%proc167509%_
             _%rebind?167493%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167490%_)
            '#!void)))
    (let* ((_%klass167415%_ __gc-table::t)
           (_%id167418%_ 'HashTable::new)
           (_%proc167438%_
            (let* ((_%proc167421%_ gc-table-new)
                   (_%proc167426%_ _%proc167421%_))
              (__wrap-hash-new _%proc167426%_)))
           (_%rebind?167441%_ '#f)
           (_%id167446%_ _%id167418%_))
      (if (procedure? _%proc167438%_)
          (let ((_%proc167457%_ _%proc167438%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167415%_
             _%id167446%_
             _%proc167457%_
             _%rebind?167441%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167438%_)
            '#!void)))
    (let* ((_%klass167378%_ __gc-table::t)
           (_%id167381%_ 'HashTable::clear!)
           (_%proc167384%_ gc-table-clear!)
           (_%rebind?167387%_ '#f)
           (_%id167392%_ _%id167381%_)
           (_%proc167405%_ _%proc167384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167378%_
       _%id167392%_
       _%proc167405%_
       _%rebind?167387%_))
    (define gambit-table-update!
      (lambda (_%table167371%_
               _%key167372%_
               _%update167373%_
               _%default167374%_)
        (let ((_%result167376%_
               (table-ref _%table167371%_ _%key167372%_ _%default167374%_)))
          (table-set!
           _%table167371%_
           _%key167372%_
           (_%update167373%_ _%result167376%_)))))
    (define gambit-table-for-each
      (lambda (_%table167368%_ _%proc167369%_)
        (table-for-each _%proc167369%_ _%table167368%_)))
    (define gambit-table-clear!
      (lambda (_%table167366%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table167366%_ '0 '5 '#f '#f))))
    (let* ((_%klass167329%_ (macro-type-table))
           (_%id167332%_ 'HashTable::ref)
           (_%proc167335%_ table-ref)
           (_%rebind?167338%_ '#f)
           (_%id167343%_ _%id167332%_)
           (_%proc167356%_ _%proc167335%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167329%_
       _%id167343%_
       _%proc167356%_
       _%rebind?167338%_))
    (let* ((_%klass167292%_ (macro-type-table))
           (_%id167295%_ 'HashTable::set!)
           (_%proc167298%_ table-set!)
           (_%rebind?167301%_ '#f)
           (_%id167306%_ _%id167295%_)
           (_%proc167319%_ _%proc167298%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167292%_
       _%id167306%_
       _%proc167319%_
       _%rebind?167301%_))
    (let* ((_%klass167255%_ (macro-type-table))
           (_%id167258%_ 'HashTable::update!)
           (_%proc167261%_ gambit-table-update!)
           (_%rebind?167264%_ '#f)
           (_%id167269%_ _%id167258%_)
           (_%proc167282%_ _%proc167261%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167255%_
       _%id167269%_
       _%proc167282%_
       _%rebind?167264%_))
    (let* ((_%klass167218%_ (macro-type-table))
           (_%id167221%_ 'HashTable::delete!)
           (_%proc167224%_ table-set!)
           (_%rebind?167227%_ '#f)
           (_%id167232%_ _%id167221%_)
           (_%proc167245%_ _%proc167224%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167218%_
       _%id167232%_
       _%proc167245%_
       _%rebind?167227%_))
    (let* ((_%klass167181%_ (macro-type-table))
           (_%id167184%_ 'HashTable::for-each)
           (_%proc167187%_ gambit-table-for-each)
           (_%rebind?167190%_ '#f)
           (_%id167195%_ _%id167184%_)
           (_%proc167208%_ _%proc167187%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167181%_
       _%id167195%_
       _%proc167208%_
       _%rebind?167190%_))
    (let* ((_%klass167144%_ (macro-type-table))
           (_%id167147%_ 'HashTable::length)
           (_%proc167150%_ table-length)
           (_%rebind?167153%_ '#f)
           (_%id167158%_ _%id167147%_)
           (_%proc167171%_ _%proc167150%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167144%_
       _%id167158%_
       _%proc167171%_
       _%rebind?167153%_))
    (let* ((_%klass167092%_ (macro-type-table))
           (_%id167095%_ 'HashTable::copy)
           (_%proc167115%_
            (let* ((_%proc167098%_ table-copy) (_%proc167103%_ _%proc167098%_))
              (__wrap-hash _%proc167103%_)))
           (_%rebind?167118%_ '#f)
           (_%id167123%_ _%id167095%_))
      (if (procedure? _%proc167115%_)
          (let ((_%proc167134%_ _%proc167115%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167092%_
             _%id167123%_
             _%proc167134%_
             _%rebind?167118%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167115%_)
            '#!void)))
    (let* ((_%klass167040%_ (macro-type-table))
           (_%id167043%_ 'HashTable::new)
           (_%proc167063%_
            (let* ((_%proc167046%_ table-new) (_%proc167051%_ _%proc167046%_))
              (__wrap-hash-new _%proc167051%_)))
           (_%rebind?167066%_ '#f)
           (_%id167071%_ _%id167043%_))
      (if (procedure? _%proc167063%_)
          (let ((_%proc167082%_ _%proc167063%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167040%_
             _%id167071%_
             _%proc167082%_
             _%rebind?167066%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167063%_)
            '#!void)))
    (let* ((_%klass167003%_ (macro-type-table))
           (_%id167006%_ 'HashTable::clear!)
           (_%proc167009%_ gambit-table-clear!)
           (_%rebind?167012%_ '#f)
           (_%id167017%_ _%id167006%_)
           (_%proc167030%_ _%proc167009%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167003%_
       _%id167017%_
       _%proc167030%_
       _%rebind?167012%_))
    (define hash-table::t
      (let* ((_%slots166966%_ '(table count free hash test seed lock))
             (_%slot-vector166968%_ (list->vector (cons '#f _%slots166966%_)))
             (_%slot-table166994%_
              (let ((_%slot-table166970%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170399
                       (lambda (_%slot166972%_ _%field166973%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166970%_
                            _%slot166972%_
                            _%field166973%_))
                         (let ((__tmp170400
                                (let ((_%sym166975%_ _%slot166972%_))
                                  (if (symbol? _%sym166975%_)
                                      (let ((_%sym166980%_ _%sym166975%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166980%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166975%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166970%_
                            __tmp170400
                            _%field166973%_))))
                      (__tmp170397
                       (let ((__tmp170398
                              (let ()
                                (declare (not safe))
                                (##length _%slots166966%_))))
                         (declare (not safe))
                         (##iota __tmp170398 '1))))
                  (declare (not safe))
                  (##for-each __tmp170399 _%slots166966%_ __tmp170397))
                _%slot-table166970%_))
             (_%flags166996%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166998%_ '#())
             (_%properties167000%_
              (cons (cons 'direct-slots: _%slots166966%_) '((struct: . #t))))
             (__tmp170401 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags166996%_
         __table::t
         _%fields166998%_
         __tmp170401
         _%slot-vector166968%_
         _%slot-table166994%_
         _%properties167000%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots166929%_ '(gcht immediate))
             (_%slot-vector166931%_ (list->vector (cons '#f _%slots166929%_)))
             (_%slot-table166957%_
              (let ((_%slot-table166933%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170404
                       (lambda (_%slot166935%_ _%field166936%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166933%_
                            _%slot166935%_
                            _%field166936%_))
                         (let ((__tmp170405
                                (let ((_%sym166938%_ _%slot166935%_))
                                  (if (symbol? _%sym166938%_)
                                      (let ((_%sym166943%_ _%sym166938%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166943%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166938%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166933%_
                            __tmp170405
                            _%field166936%_))))
                      (__tmp170402
                       (let ((__tmp170403
                              (let ()
                                (declare (not safe))
                                (##length _%slots166929%_))))
                         (declare (not safe))
                         (##iota __tmp170403 '1))))
                  (declare (not safe))
                  (##for-each __tmp170404 _%slots166929%_ __tmp170402))
                _%slot-table166933%_))
             (_%flags166959%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166961%_ '#())
             (_%properties166963%_
              (cons (cons 'direct-slots: _%slots166929%_) '((struct: . #t))))
             (__tmp170406 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags166959%_
         __gc-table::t
         _%fields166961%_
         __tmp170406
         _%slot-vector166931%_
         _%slot-table166957%_
         _%properties166963%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170408 (list))
            (__tmp170407
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp170408
         '(table lock)
         __tmp170407
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args166926%_
        (apply make-instance locked-hash-table::t _%$args166926%_)))
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
      (let ((__tmp170410 (list))
            (__tmp170409
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp170410
         '(table key-check)
         __tmp170409
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args166923%_
        (apply make-instance checked-hash-table::t _%$args166923%_)))
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
      (let ((__tmp170412 (list hash-table::t))
            (__tmp170411 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp170412
         '()
         __tmp170411
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args166920%_
        (apply make-instance eq-hash-table::t _%$args166920%_)))
    (define eqv-hash-table::t
      (let ((__tmp170414 (list hash-table::t))
            (__tmp170413 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp170414
         '()
         __tmp170413
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args166917%_
        (apply make-instance eqv-hash-table::t _%$args166917%_)))
    (define symbol-hash-table::t
      (let ((__tmp170416 (list hash-table::t))
            (__tmp170415 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp170416
         '()
         __tmp170415
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args166914%_
        (apply make-instance symbol-hash-table::t _%$args166914%_)))
    (define string-hash-table::t
      (let ((__tmp170418 (list hash-table::t))
            (__tmp170417 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp170418
         '()
         __tmp170417
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args166911%_
        (apply make-instance string-hash-table::t _%$args166911%_)))
    (define immediate-hash-table::t
      (let ((__tmp170420 (list hash-table::t))
            (__tmp170419 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp170420
         '()
         __tmp170419
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args166908%_
        (apply make-instance immediate-hash-table::t _%$args166908%_)))
    (let* ((_%klass166871%_ hash-table::t)
           (_%id166874%_ 'HashTable::ref)
           (_%proc166877%_ raw-table-ref)
           (_%rebind?166880%_ '#f)
           (_%id166885%_ _%id166874%_)
           (_%proc166898%_ _%proc166877%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166871%_
       _%id166885%_
       _%proc166898%_
       _%rebind?166880%_))
    (let* ((_%klass166834%_ hash-table::t)
           (_%id166837%_ 'HashTable::set!)
           (_%proc166840%_ raw-table-set!)
           (_%rebind?166843%_ '#f)
           (_%id166848%_ _%id166837%_)
           (_%proc166861%_ _%proc166840%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166834%_
       _%id166848%_
       _%proc166861%_
       _%rebind?166843%_))
    (let* ((_%klass166797%_ hash-table::t)
           (_%id166800%_ 'HashTable::update!)
           (_%proc166803%_ raw-table-update!)
           (_%rebind?166806%_ '#f)
           (_%id166811%_ _%id166800%_)
           (_%proc166824%_ _%proc166803%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166797%_
       _%id166811%_
       _%proc166824%_
       _%rebind?166806%_))
    (let* ((_%klass166760%_ hash-table::t)
           (_%id166763%_ 'HashTable::delete!)
           (_%proc166766%_ raw-table-delete!)
           (_%rebind?166769%_ '#f)
           (_%id166774%_ _%id166763%_)
           (_%proc166787%_ _%proc166766%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166760%_
       _%id166774%_
       _%proc166787%_
       _%rebind?166769%_))
    (let* ((_%klass166723%_ hash-table::t)
           (_%id166726%_ 'HashTable::for-each)
           (_%proc166729%_ raw-table-for-each)
           (_%rebind?166732%_ '#f)
           (_%id166737%_ _%id166726%_)
           (_%proc166750%_ _%proc166729%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166723%_
       _%id166737%_
       _%proc166750%_
       _%rebind?166732%_))
    (let* ((_%klass166686%_ hash-table::t)
           (_%id166689%_ 'HashTable::length)
           (_%proc166692%_ &raw-table-count)
           (_%rebind?166695%_ '#f)
           (_%id166700%_ _%id166689%_)
           (_%proc166713%_ _%proc166692%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166686%_
       _%id166700%_
       _%proc166713%_
       _%rebind?166695%_))
    (let* ((_%klass166634%_ hash-table::t)
           (_%id166637%_ 'HashTable::copy)
           (_%proc166657%_
            (let* ((_%proc166640%_ raw-table-copy)
                   (_%proc166645%_ _%proc166640%_))
              (__wrap-hash _%proc166645%_)))
           (_%rebind?166660%_ '#f)
           (_%id166665%_ _%id166637%_))
      (if (procedure? _%proc166657%_)
          (let ((_%proc166676%_ _%proc166657%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166634%_
             _%id166665%_
             _%proc166676%_
             _%rebind?166660%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166657%_)
            '#!void)))
    (let* ((_%klass166582%_ hash-table::t)
           (_%id166585%_ 'HashTable::new)
           (_%proc166605%_
            (let* ((_%proc166588%_ raw-table-new)
                   (_%proc166593%_ _%proc166588%_))
              (__wrap-hash-new _%proc166593%_)))
           (_%rebind?166608%_ '#f)
           (_%id166613%_ _%id166585%_))
      (if (procedure? _%proc166605%_)
          (let ((_%proc166624%_ _%proc166605%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166582%_
             _%id166613%_
             _%proc166624%_
             _%rebind?166608%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166605%_)
            '#!void)))
    (let* ((_%klass166545%_ hash-table::t)
           (_%id166548%_ 'HashTable::clear!)
           (_%proc166551%_ raw-table-clear!)
           (_%rebind?166554%_ '#f)
           (_%id166559%_ _%id166548%_)
           (_%proc166572%_ _%proc166551%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166545%_
       _%id166559%_
       _%proc166572%_
       _%rebind?166554%_))
    (let* ((_%klass166508%_ eq-hash-table::t)
           (_%id166511%_ 'HashTable::ref)
           (_%proc166514%_ eq-table-ref)
           (_%rebind?166517%_ '#f)
           (_%id166522%_ _%id166511%_)
           (_%proc166535%_ _%proc166514%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166508%_
       _%id166522%_
       _%proc166535%_
       _%rebind?166517%_))
    (let* ((_%klass166471%_ eq-hash-table::t)
           (_%id166474%_ 'HashTable::set!)
           (_%proc166477%_ eq-table-set!)
           (_%rebind?166480%_ '#f)
           (_%id166485%_ _%id166474%_)
           (_%proc166498%_ _%proc166477%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166471%_
       _%id166485%_
       _%proc166498%_
       _%rebind?166480%_))
    (let* ((_%klass166434%_ eq-hash-table::t)
           (_%id166437%_ 'HashTable::update!)
           (_%proc166440%_ eq-table-update!)
           (_%rebind?166443%_ '#f)
           (_%id166448%_ _%id166437%_)
           (_%proc166461%_ _%proc166440%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166434%_
       _%id166448%_
       _%proc166461%_
       _%rebind?166443%_))
    (let* ((_%klass166397%_ eq-hash-table::t)
           (_%id166400%_ 'HashTable::delete!)
           (_%proc166403%_ eq-table-delete!)
           (_%rebind?166406%_ '#f)
           (_%id166411%_ _%id166400%_)
           (_%proc166424%_ _%proc166403%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166397%_
       _%id166411%_
       _%proc166424%_
       _%rebind?166406%_))
    (let* ((_%klass166360%_ eqv-hash-table::t)
           (_%id166363%_ 'HashTable::ref)
           (_%proc166366%_ eqv-table-ref)
           (_%rebind?166369%_ '#f)
           (_%id166374%_ _%id166363%_)
           (_%proc166387%_ _%proc166366%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166360%_
       _%id166374%_
       _%proc166387%_
       _%rebind?166369%_))
    (let* ((_%klass166323%_ eqv-hash-table::t)
           (_%id166326%_ 'HashTable::set!)
           (_%proc166329%_ eqv-table-set!)
           (_%rebind?166332%_ '#f)
           (_%id166337%_ _%id166326%_)
           (_%proc166350%_ _%proc166329%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166323%_
       _%id166337%_
       _%proc166350%_
       _%rebind?166332%_))
    (let* ((_%klass166286%_ eqv-hash-table::t)
           (_%id166289%_ 'HashTable::update!)
           (_%proc166292%_ eqv-table-update!)
           (_%rebind?166295%_ '#f)
           (_%id166300%_ _%id166289%_)
           (_%proc166313%_ _%proc166292%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166286%_
       _%id166300%_
       _%proc166313%_
       _%rebind?166295%_))
    (let* ((_%klass166249%_ eqv-hash-table::t)
           (_%id166252%_ 'HashTable::delete!)
           (_%proc166255%_ eqv-table-delete!)
           (_%rebind?166258%_ '#f)
           (_%id166263%_ _%id166252%_)
           (_%proc166276%_ _%proc166255%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166249%_
       _%id166263%_
       _%proc166276%_
       _%rebind?166258%_))
    (let* ((_%klass166212%_ symbol-hash-table::t)
           (_%id166215%_ 'HashTable::ref)
           (_%proc166218%_ symbolic-table-ref)
           (_%rebind?166221%_ '#f)
           (_%id166226%_ _%id166215%_)
           (_%proc166239%_ _%proc166218%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166212%_
       _%id166226%_
       _%proc166239%_
       _%rebind?166221%_))
    (let* ((_%klass166175%_ symbol-hash-table::t)
           (_%id166178%_ 'HashTable::set!)
           (_%proc166181%_ symbolic-table-set!)
           (_%rebind?166184%_ '#f)
           (_%id166189%_ _%id166178%_)
           (_%proc166202%_ _%proc166181%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166175%_
       _%id166189%_
       _%proc166202%_
       _%rebind?166184%_))
    (let* ((_%klass166138%_ symbol-hash-table::t)
           (_%id166141%_ 'HashTable::update!)
           (_%proc166144%_ symbolic-table-update!)
           (_%rebind?166147%_ '#f)
           (_%id166152%_ _%id166141%_)
           (_%proc166165%_ _%proc166144%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166138%_
       _%id166152%_
       _%proc166165%_
       _%rebind?166147%_))
    (let* ((_%klass166101%_ symbol-hash-table::t)
           (_%id166104%_ 'HashTable::delete!)
           (_%proc166107%_ symbolic-table-delete!)
           (_%rebind?166110%_ '#f)
           (_%id166115%_ _%id166104%_)
           (_%proc166128%_ _%proc166107%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166101%_
       _%id166115%_
       _%proc166128%_
       _%rebind?166110%_))
    (let* ((_%klass166064%_ string-hash-table::t)
           (_%id166067%_ 'HashTable::ref)
           (_%proc166070%_ string-table-ref)
           (_%rebind?166073%_ '#f)
           (_%id166078%_ _%id166067%_)
           (_%proc166091%_ _%proc166070%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166064%_
       _%id166078%_
       _%proc166091%_
       _%rebind?166073%_))
    (let* ((_%klass166027%_ string-hash-table::t)
           (_%id166030%_ 'HashTable::set!)
           (_%proc166033%_ string-table-set!)
           (_%rebind?166036%_ '#f)
           (_%id166041%_ _%id166030%_)
           (_%proc166054%_ _%proc166033%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166027%_
       _%id166041%_
       _%proc166054%_
       _%rebind?166036%_))
    (let* ((_%klass165990%_ string-hash-table::t)
           (_%id165993%_ 'HashTable::update!)
           (_%proc165996%_ string-table-update!)
           (_%rebind?165999%_ '#f)
           (_%id166004%_ _%id165993%_)
           (_%proc166017%_ _%proc165996%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165990%_
       _%id166004%_
       _%proc166017%_
       _%rebind?165999%_))
    (let* ((_%klass165953%_ string-hash-table::t)
           (_%id165956%_ 'HashTable::delete!)
           (_%proc165959%_ string-table-delete!)
           (_%rebind?165962%_ '#f)
           (_%id165967%_ _%id165956%_)
           (_%proc165980%_ _%proc165959%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165953%_
       _%id165967%_
       _%proc165980%_
       _%rebind?165962%_))
    (let* ((_%klass165916%_ immediate-hash-table::t)
           (_%id165919%_ 'HashTable::ref)
           (_%proc165922%_ immediate-table-ref)
           (_%rebind?165925%_ '#f)
           (_%id165930%_ _%id165919%_)
           (_%proc165943%_ _%proc165922%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165916%_
       _%id165930%_
       _%proc165943%_
       _%rebind?165925%_))
    (let* ((_%klass165879%_ immediate-hash-table::t)
           (_%id165882%_ 'HashTable::set!)
           (_%proc165885%_ immediate-table-set!)
           (_%rebind?165888%_ '#f)
           (_%id165893%_ _%id165882%_)
           (_%proc165906%_ _%proc165885%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165879%_
       _%id165893%_
       _%proc165906%_
       _%rebind?165888%_))
    (let* ((_%klass165842%_ immediate-hash-table::t)
           (_%id165845%_ 'HashTable::update!)
           (_%proc165848%_ immediate-table-update!)
           (_%rebind?165851%_ '#f)
           (_%id165856%_ _%id165845%_)
           (_%proc165869%_ _%proc165848%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165842%_
       _%id165856%_
       _%proc165869%_
       _%rebind?165851%_))
    (let* ((_%klass165805%_ immediate-hash-table::t)
           (_%id165808%_ 'HashTable::delete!)
           (_%proc165811%_ immediate-table-delete!)
           (_%rebind?165814%_ '#f)
           (_%id165819%_ _%id165808%_)
           (_%proc165832%_ _%proc165811%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165805%_
       _%id165819%_
       _%proc165832%_
       _%rebind?165814%_))
    (let* ((_%klass165768%_ gc-hash-table::t)
           (_%id165771%_ 'HashTable::ref)
           (_%proc165774%_ gc-table-ref)
           (_%rebind?165777%_ '#f)
           (_%id165782%_ _%id165771%_)
           (_%proc165795%_ _%proc165774%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165768%_
       _%id165782%_
       _%proc165795%_
       _%rebind?165777%_))
    (let* ((_%klass165731%_ gc-hash-table::t)
           (_%id165734%_ 'HashTable::set!)
           (_%proc165737%_ gc-table-set!)
           (_%rebind?165740%_ '#f)
           (_%id165745%_ _%id165734%_)
           (_%proc165758%_ _%proc165737%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165731%_
       _%id165745%_
       _%proc165758%_
       _%rebind?165740%_))
    (let* ((_%klass165694%_ gc-hash-table::t)
           (_%id165697%_ 'HashTable::update!)
           (_%proc165700%_ gc-table-update!)
           (_%rebind?165703%_ '#f)
           (_%id165708%_ _%id165697%_)
           (_%proc165721%_ _%proc165700%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165694%_
       _%id165708%_
       _%proc165721%_
       _%rebind?165703%_))
    (let* ((_%klass165657%_ gc-hash-table::t)
           (_%id165660%_ 'HashTable::delete!)
           (_%proc165663%_ gc-table-delete!)
           (_%rebind?165666%_ '#f)
           (_%id165671%_ _%id165660%_)
           (_%proc165684%_ _%proc165663%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165657%_
       _%id165671%_
       _%proc165684%_
       _%rebind?165666%_))
    (let* ((_%klass165620%_ gc-hash-table::t)
           (_%id165623%_ 'HashTable::for-each)
           (_%proc165626%_ gc-table-for-each)
           (_%rebind?165629%_ '#f)
           (_%id165634%_ _%id165623%_)
           (_%proc165647%_ _%proc165626%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165620%_
       _%id165634%_
       _%proc165647%_
       _%rebind?165629%_))
    (let* ((_%klass165583%_ gc-hash-table::t)
           (_%id165586%_ 'HashTable::length)
           (_%proc165589%_ gc-table-length)
           (_%rebind?165592%_ '#f)
           (_%id165597%_ _%id165586%_)
           (_%proc165610%_ _%proc165589%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165583%_
       _%id165597%_
       _%proc165610%_
       _%rebind?165592%_))
    (let* ((_%klass165531%_ gc-hash-table::t)
           (_%id165534%_ 'HashTable::copy)
           (_%proc165554%_
            (let* ((_%proc165537%_ gc-table-copy)
                   (_%proc165542%_ _%proc165537%_))
              (__wrap-hash _%proc165542%_)))
           (_%rebind?165557%_ '#f)
           (_%id165562%_ _%id165534%_))
      (if (procedure? _%proc165554%_)
          (let ((_%proc165573%_ _%proc165554%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165531%_
             _%id165562%_
             _%proc165573%_
             _%rebind?165557%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165554%_)
            '#!void)))
    (let* ((_%klass165479%_ gc-hash-table::t)
           (_%id165482%_ 'HashTable::new)
           (_%proc165502%_
            (let* ((_%proc165485%_ gc-table-new)
                   (_%proc165490%_ _%proc165485%_))
              (__wrap-hash-new _%proc165490%_)))
           (_%rebind?165505%_ '#f)
           (_%id165510%_ _%id165482%_))
      (if (procedure? _%proc165502%_)
          (let ((_%proc165521%_ _%proc165502%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165479%_
             _%id165510%_
             _%proc165521%_
             _%rebind?165505%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165502%_)
            '#!void)))
    (let* ((_%klass165442%_ gc-hash-table::t)
           (_%id165445%_ 'HashTable::clear!)
           (_%proc165448%_ gc-table-clear!)
           (_%rebind?165451%_ '#f)
           (_%id165456%_ _%id165445%_)
           (_%proc165469%_ _%proc165448%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165442%_
       _%id165456%_
       _%proc165469%_
       _%rebind?165451%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref156276%_
      (lambda (_%self165363%_ _%key165365%_ _%default165366%_)
        (let* ((_%self165369%_ _%self165363%_)
               (_%key165378%_ _%key165365%_)
               (_%default165386%_ _%default165366%_))
          (let ((_%h165395%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165369%_ '1 '#f '#f)))
                (_%l165397%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165369%_ '2 '#f '#f))))
            (let ((__tmp170423
                   (lambda ()
                     (let ((_%self154676165401%_ _%l165397%_))
                       (declare (not safe))
                       (let ((_%object165404165409%_
                              (##unchecked-structure-ref
                               _%self154676165401%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165405165410%_
                              (##unchecked-structure-ref
                               _%self154676165401%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165405165410%_ _%object165404165409%_)))))
                  (__tmp170422
                   (lambda ()
                     (let* ((_%self153944165413%_ _%h165395%_)
                            (_%key165416%_ _%key165378%_)
                            (_%default165419%_ _%default165386%_))
                       (declare (not safe))
                       (let ((_%object165422165427%_
                              (##unchecked-structure-ref
                               _%self153944165413%_
                               '1
                               '#f
                               'ref))
                             (_%method165423165428%_
                              (##unchecked-structure-ref
                               _%self153944165413%_
                               '8
                               '#f
                               'ref)))
                         (_%method165423165428%_
                          _%object165422165427%_
                          _%key165416%_
                          _%default165419%_)))))
                  (__tmp170421
                   (lambda ()
                     (let ((_%self154920165431%_ _%l165397%_))
                       (declare (not safe))
                       (let ((_%object165434165439%_
                              (##unchecked-structure-ref
                               _%self154920165431%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165435165440%_
                              (##unchecked-structure-ref
                               _%self154920165431%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165435165440%_ _%object165434165439%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170423 __tmp170422 __tmp170421))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref156276%_
       '#f))
    (define _%locked-hash-table::HashTable::set!156278%_
      (lambda (_%self165161%_ _%key165163%_ _%value165164%_)
        (let* ((_%self165167%_ _%self165161%_)
               (_%key165176%_ _%key165163%_)
               (_%value165184%_ _%value165164%_))
          (let ((_%h165193%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165167%_ '1 '#f '#f)))
                (_%l165195%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165167%_ '2 '#f '#f))))
            (let ((__tmp170426
                   (lambda ()
                     (let ((_%self155164165199%_ _%l165195%_))
                       (declare (not safe))
                       (let ((_%object165202165207%_
                              (##unchecked-structure-ref
                               _%self155164165199%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165203165208%_
                              (##unchecked-structure-ref
                               _%self155164165199%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165203165208%_ _%object165202165207%_)))))
                  (__tmp170425
                   (lambda ()
                     (let* ((_%self154188165211%_ _%h165193%_)
                            (_%key165214%_ _%key165176%_)
                            (_%value165217%_ _%value165184%_))
                       (declare (not safe))
                       (let ((_%object165220165225%_
                              (##unchecked-structure-ref
                               _%self154188165211%_
                               '1
                               '#f
                               'set!))
                             (_%method165221165226%_
                              (##unchecked-structure-ref
                               _%self154188165211%_
                               '9
                               '#f
                               'set!)))
                         (_%method165221165226%_
                          _%object165220165225%_
                          _%key165214%_
                          _%value165217%_)))))
                  (__tmp170424
                   (lambda ()
                     (let ((_%self155408165229%_ _%l165195%_))
                       (declare (not safe))
                       (let ((_%object165232165237%_
                              (##unchecked-structure-ref
                               _%self155408165229%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165233165238%_
                              (##unchecked-structure-ref
                               _%self155408165229%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165233165238%_ _%object165232165237%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170426 __tmp170425 __tmp170424))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!156278%_
       '#f))
    (define _%locked-hash-table::HashTable::update!156280%_
      (lambda (_%self164947%_ _%key164949%_ _%update164950%_ _%default164951%_)
        (let* ((_%self164954%_ _%self164947%_)
               (_%key164963%_ _%key164949%_)
               (_%update164971%_ _%update164950%_)
               (_%default164979%_ _%default164951%_))
          (let ((_%h164988%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164954%_ '1 '#f '#f)))
                (_%l164990%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164954%_ '2 '#f '#f))))
            (let ((__tmp170429
                   (lambda ()
                     (let ((_%self155164164994%_ _%l164990%_))
                       (declare (not safe))
                       (let ((_%object164997165002%_
                              (##unchecked-structure-ref
                               _%self155164164994%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164998165003%_
                              (##unchecked-structure-ref
                               _%self155164164994%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164998165003%_ _%object164997165002%_)))))
                  (__tmp170428
                   (lambda ()
                     (let* ((_%self154432165006%_ _%h164988%_)
                            (_%key165009%_ _%key164963%_)
                            (_%proc165012%_ _%update164971%_)
                            (_%default165015%_ _%default164979%_))
                       (declare (not safe))
                       (let ((_%object165018165023%_
                              (##unchecked-structure-ref
                               _%self154432165006%_
                               '1
                               '#f
                               'update!))
                             (_%method165019165024%_
                              (##unchecked-structure-ref
                               _%self154432165006%_
                               '10
                               '#f
                               'update!)))
                         (_%method165019165024%_
                          _%object165018165023%_
                          _%key165009%_
                          _%proc165012%_
                          _%default165015%_)))))
                  (__tmp170427
                   (lambda ()
                     (let ((_%self155408165027%_ _%l164990%_))
                       (declare (not safe))
                       (let ((_%object165030165035%_
                              (##unchecked-structure-ref
                               _%self155408165027%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165031165036%_
                              (##unchecked-structure-ref
                               _%self155408165027%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165031165036%_ _%object165030165035%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170429 __tmp170428 __tmp170427))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!156280%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!156282%_
      (lambda (_%self164757%_ _%key164759%_)
        (let* ((_%self164762%_ _%self164757%_) (_%key164771%_ _%key164759%_))
          (let ((_%h164780%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164762%_ '1 '#f '#f)))
                (_%l164782%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164762%_ '2 '#f '#f))))
            (let ((__tmp170432
                   (lambda ()
                     (let ((_%self155164164786%_ _%l164782%_))
                       (declare (not safe))
                       (let ((_%object164789164794%_
                              (##unchecked-structure-ref
                               _%self155164164786%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164790164795%_
                              (##unchecked-structure-ref
                               _%self155164164786%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164790164795%_ _%object164789164794%_)))))
                  (__tmp170431
                   (lambda ()
                     (let* ((_%self152968164798%_ _%h164780%_)
                            (_%key164801%_ _%key164771%_))
                       (declare (not safe))
                       (let ((_%object164804164809%_
                              (##unchecked-structure-ref
                               _%self152968164798%_
                               '1
                               '#f
                               'delete!))
                             (_%method164805164810%_
                              (##unchecked-structure-ref
                               _%self152968164798%_
                               '4
                               '#f
                               'delete!)))
                         (_%method164805164810%_
                          _%object164804164809%_
                          _%key164801%_)))))
                  (__tmp170430
                   (lambda ()
                     (let ((_%self155408164813%_ _%l164782%_))
                       (declare (not safe))
                       (let ((_%object164816164821%_
                              (##unchecked-structure-ref
                               _%self155408164813%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164817164822%_
                              (##unchecked-structure-ref
                               _%self155408164813%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164817164822%_ _%object164816164821%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170432 __tmp170431 __tmp170430))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!156282%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each156284%_
      (lambda (_%self164567%_ _%proc164569%_)
        (let* ((_%self164572%_ _%self164567%_) (_%proc164581%_ _%proc164569%_))
          (let ((_%h164590%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164572%_ '1 '#f '#f)))
                (_%l164592%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164572%_ '2 '#f '#f))))
            (let ((__tmp170435
                   (lambda ()
                     (let ((_%self154676164596%_ _%l164592%_))
                       (declare (not safe))
                       (let ((_%object164599164604%_
                              (##unchecked-structure-ref
                               _%self154676164596%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method164600164605%_
                              (##unchecked-structure-ref
                               _%self154676164596%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method164600164605%_ _%object164599164604%_)))))
                  (__tmp170434
                   (lambda ()
                     (let* ((_%self153212164608%_ _%h164590%_)
                            (_%proc164611%_ _%proc164581%_))
                       (declare (not safe))
                       (let ((_%object164614164619%_
                              (##unchecked-structure-ref
                               _%self153212164608%_
                               '1
                               '#f
                               'for-each))
                             (_%method164615164620%_
                              (##unchecked-structure-ref
                               _%self153212164608%_
                               '5
                               '#f
                               'for-each)))
                         (_%method164615164620%_
                          _%object164614164619%_
                          _%proc164611%_)))))
                  (__tmp170433
                   (lambda ()
                     (let ((_%self154920164623%_ _%l164592%_))
                       (declare (not safe))
                       (let ((_%object164626164631%_
                              (##unchecked-structure-ref
                               _%self154920164623%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method164627164632%_
                              (##unchecked-structure-ref
                               _%self154920164623%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method164627164632%_ _%object164626164631%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170435 __tmp170434 __tmp170433))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each156284%_
       '#f))
    (define _%locked-hash-table::HashTable::length156286%_
      (lambda (_%self164382%_)
        (let ((_%self164386%_ _%self164382%_))
          (let ((_%h164396%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164386%_ '1 '#f '#f)))
                (_%l164398%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164386%_ '2 '#f '#f))))
            (let* ((_%$%g164400164402%_
                    (let ((__tmp170438
                           (lambda ()
                             (let ((_%self154676164409%_ _%l164398%_))
                               (declare (not safe))
                               (let ((_%object164412164417%_
                                      (##unchecked-structure-ref
                                       _%self154676164409%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method164413164418%_
                                      (##unchecked-structure-ref
                                       _%self154676164409%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method164413164418%_
                                  _%object164412164417%_)))))
                          (__tmp170437
                           (lambda ()
                             (let ((_%self153456164421%_ _%h164396%_))
                               (declare (not safe))
                               (let ((_%object164424164429%_
                                      (##unchecked-structure-ref
                                       _%self153456164421%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method164425164430%_
                                      (##unchecked-structure-ref
                                       _%self153456164421%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method164425164430%_
                                  _%object164424164429%_)))))
                          (__tmp170436
                           (lambda ()
                             (let ((_%self154920164433%_ _%l164398%_))
                               (declare (not safe))
                               (let ((_%object164436164441%_
                                      (##unchecked-structure-ref
                                       _%self154920164433%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method164437164442%_
                                      (##unchecked-structure-ref
                                       _%self154920164433%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method164437164442%_
                                  _%object164436164441%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp170438 __tmp170437 __tmp170436)))
                   (_%val164405%_ _%$%g164400164402%_))
              (if (fixnum? _%val164405%_)
                  _%val164405%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val164405%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length156286%_
       '#f))
    (define _%locked-hash-table::HashTable::copy156288%_
      (lambda (_%self164204%_)
        (let ((_%self164208%_ _%self164204%_))
          (let ((_%h164218%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164208%_ '1 '#f '#f)))
                (_%l164220%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164208%_ '2 '#f '#f))))
            (let ((__tmp170439
                   (let ((__tmp170442
                          (lambda ()
                            (let ((_%self154676164224%_ _%l164220%_))
                              (declare (not safe))
                              (let ((_%object164227164232%_
                                     (##unchecked-structure-ref
                                      _%self154676164224%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method164228164233%_
                                     (##unchecked-structure-ref
                                      _%self154676164224%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method164228164233%_
                                 _%object164227164232%_)))))
                         (__tmp170441
                          (lambda ()
                            (let ((_%self152724164236%_ _%h164218%_))
                              (declare (not safe))
                              (let ((_%object164239164244%_
                                     (##unchecked-structure-ref
                                      _%self152724164236%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method164240164245%_
                                     (##unchecked-structure-ref
                                      _%self152724164236%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method164240164245%_
                                 _%object164239164244%_)))))
                         (__tmp170440
                          (lambda ()
                            (let ((_%self154920164248%_ _%l164220%_))
                              (declare (not safe))
                              (let ((_%object164251164256%_
                                     (##unchecked-structure-ref
                                      _%self154920164248%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method164252164257%_
                                     (##unchecked-structure-ref
                                      _%self154920164248%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method164252164257%_
                                 _%object164251164256%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170442 __tmp170441 __tmp170440))))
              (declare (not safe))
              (cast HashTable::interface __tmp170439))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy156288%_
       '#f))
    (define _%locked-hash-table::HashTable::new156290%_
      (lambda (_%self164006%_ _%size-hint164008%_)
        (let ((_%self164011%_ _%self164006%_))
          (if (or (not _%size-hint164008%_) (fixnum? _%size-hint164008%_))
              (let ((_%size-hint164027%_ _%size-hint164008%_))
                (let ((_%h164037%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self164011%_
                          '1
                          '#f
                          '#f)))
                      (_%l164039%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self164011%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp170443
                         (let ((__tmp170446
                                (lambda ()
                                  (let ((_%self154676164043%_ _%l164039%_))
                                    (declare (not safe))
                                    (let ((_%object164046164051%_
                                           (##unchecked-structure-ref
                                            _%self154676164043%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method164047164052%_
                                           (##unchecked-structure-ref
                                            _%self154676164043%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method164047164052%_
                                       _%object164046164051%_)))))
                               (__tmp170445
                                (lambda ()
                                  (let* ((_%self153700164055%_ _%h164037%_)
                                         (_%size-hint164058%_
                                          _%size-hint164027%_))
                                    (declare (not safe))
                                    (let ((_%object164061164066%_
                                           (##unchecked-structure-ref
                                            _%self153700164055%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method164062164067%_
                                           (##unchecked-structure-ref
                                            _%self153700164055%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method164062164067%_
                                       _%object164061164066%_
                                       _%size-hint164058%_)))))
                               (__tmp170444
                                (lambda ()
                                  (let ((_%self154920164070%_ _%l164039%_))
                                    (declare (not safe))
                                    (let ((_%object164073164078%_
                                           (##unchecked-structure-ref
                                            _%self154920164070%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method164074164079%_
                                           (##unchecked-structure-ref
                                            _%self154920164070%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method164074164079%_
                                       _%object164073164078%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp170446
                            __tmp170445
                            __tmp170444))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp170443))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@317.29-317.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint164008%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new156290%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!156292%_
      (lambda (_%self163828%_)
        (let ((_%self163832%_ _%self163828%_))
          (let ((_%h163842%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163832%_ '1 '#f '#f)))
                (_%l163844%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163832%_ '2 '#f '#f))))
            (let ((__tmp170449
                   (lambda ()
                     (let ((_%self155164163848%_ _%l163844%_))
                       (declare (not safe))
                       (let ((_%object163851163856%_
                              (##unchecked-structure-ref
                               _%self155164163848%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method163852163857%_
                              (##unchecked-structure-ref
                               _%self155164163848%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method163852163857%_ _%object163851163856%_)))))
                  (__tmp170448
                   (lambda ()
                     (let ((_%self152479163860%_ _%h163842%_))
                       (declare (not safe))
                       (let ((_%object163863163868%_
                              (##unchecked-structure-ref
                               _%self152479163860%_
                               '1
                               '#f
                               'clear!))
                             (_%method163864163869%_
                              (##unchecked-structure-ref
                               _%self152479163860%_
                               '2
                               '#f
                               'clear!)))
                         (_%method163864163869%_ _%object163863163868%_)))))
                  (__tmp170447
                   (lambda ()
                     (let ((_%self155408163872%_ _%l163844%_))
                       (declare (not safe))
                       (let ((_%object163875163880%_
                              (##unchecked-structure-ref
                               _%self155408163872%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method163876163881%_
                              (##unchecked-structure-ref
                               _%self155408163872%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method163876163881%_ _%object163875163880%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170449 __tmp170448 __tmp170447))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!156292%_
       '#f))
    (let* ((_%klass163668%_ (macro-type-mutex))
           (_%id163671%_ 'Locker::read-lock!)
           (_%proc163674%_ mutex-lock!)
           (_%rebind?163677%_ '#f)
           (_%id163682%_ _%id163671%_)
           (_%proc163695%_ _%proc163674%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163668%_
       _%id163682%_
       _%proc163695%_
       _%rebind?163677%_))
    (let* ((_%klass163631%_ (macro-type-mutex))
           (_%id163634%_ 'Locker::read-unlock!)
           (_%proc163637%_ mutex-unlock!)
           (_%rebind?163640%_ '#f)
           (_%id163645%_ _%id163634%_)
           (_%proc163658%_ _%proc163637%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163631%_
       _%id163645%_
       _%proc163658%_
       _%rebind?163640%_))
    (let* ((_%klass163594%_ (macro-type-mutex))
           (_%id163597%_ 'Locker::write-lock!)
           (_%proc163600%_ mutex-lock!)
           (_%rebind?163603%_ '#f)
           (_%id163608%_ _%id163597%_)
           (_%proc163621%_ _%proc163600%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163594%_
       _%id163608%_
       _%proc163621%_
       _%rebind?163603%_))
    (let* ((_%klass163557%_ (macro-type-mutex))
           (_%id163560%_ 'Locker::write-unlock!)
           (_%proc163563%_ mutex-unlock!)
           (_%rebind?163566%_ '#f)
           (_%id163571%_ _%id163560%_)
           (_%proc163584%_ _%proc163563%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163557%_
       _%id163571%_
       _%proc163584%_
       _%rebind?163566%_))
    (define _%checked-hash-table::HashTable::ref156503%_
      (lambda (_%self163498%_ _%key163499%_ _%default163500%_)
        (let* ((_%self163503%_ _%self163498%_)
               (_%key163512%_ _%key163499%_)
               (_%default163520%_ _%default163500%_))
          (declare (not safe))
          (let ((_%h163531%_
                 (##unchecked-structure-ref _%self163503%_ '1 '#f '#f))
                (_%key?163533%_
                 (##unchecked-structure-ref _%self163503%_ '2 '#f '#f)))
            (if (_%key?163533%_ _%key163512%_)
                (let* ((_%self153944163540%_ _%h163531%_)
                       (_%key163543%_ _%key163512%_)
                       (_%default163546%_ _%default163520%_))
                  (declare (not safe))
                  (let ((_%object163549163554%_
                         (##unchecked-structure-ref
                          _%self153944163540%_
                          '1
                          '#f
                          'ref))
                        (_%method163550163555%_
                         (##unchecked-structure-ref
                          _%self153944163540%_
                          '8
                          '#f
                          'ref)))
                    (_%method163550163555%_
                     _%object163549163554%_
                     _%key163543%_
                     _%default163546%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key163512%_ (cons _%default163520%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref156503%_
       '#f))
    (define _%checked-hash-table::HashTable::set!156505%_
      (lambda (_%self163316%_ _%key163317%_ _%value163318%_)
        (let* ((_%self163321%_ _%self163316%_)
               (_%key163330%_ _%key163317%_)
               (_%value163338%_ _%value163318%_))
          (declare (not safe))
          (let ((_%h163349%_
                 (##unchecked-structure-ref _%self163321%_ '1 '#f '#f))
                (_%key?163351%_
                 (##unchecked-structure-ref _%self163321%_ '2 '#f '#f)))
            (if (_%key?163351%_ _%key163330%_)
                (let* ((_%self154188163358%_ _%h163349%_)
                       (_%key163361%_ _%key163330%_)
                       (_%value163364%_ _%value163338%_))
                  (declare (not safe))
                  (let ((_%object163367163372%_
                         (##unchecked-structure-ref
                          _%self154188163358%_
                          '1
                          '#f
                          'set!))
                        (_%method163368163373%_
                         (##unchecked-structure-ref
                          _%self154188163358%_
                          '9
                          '#f
                          'set!)))
                    (_%method163368163373%_
                     _%object163367163372%_
                     _%key163361%_
                     _%value163364%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key163330%_ (cons _%value163338%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!156505%_
       '#f))
    (define _%checked-hash-table::HashTable::update!156507%_
      (lambda (_%self163121%_ _%key163122%_ _%update163123%_ _%default163124%_)
        (let* ((_%self163127%_ _%self163121%_)
               (_%key163136%_ _%key163122%_)
               (_%update163144%_ _%update163123%_)
               (_%default163152%_ _%default163124%_))
          (declare (not safe))
          (let ((_%h163163%_
                 (##unchecked-structure-ref _%self163127%_ '1 '#f '#f))
                (_%key?163165%_
                 (##unchecked-structure-ref _%self163127%_ '2 '#f '#f)))
            (if (_%key?163165%_ _%key163136%_)
                (let* ((_%self154432163173%_ _%h163163%_)
                       (_%key163176%_ _%key163136%_)
                       (_%proc163179%_ _%update163144%_)
                       (_%default163182%_ _%default163152%_))
                  (declare (not safe))
                  (let ((_%object163185163190%_
                         (##unchecked-structure-ref
                          _%self154432163173%_
                          '1
                          '#f
                          'update!))
                        (_%method163186163191%_
                         (##unchecked-structure-ref
                          _%self154432163173%_
                          '10
                          '#f
                          'update!)))
                    (_%method163186163191%_
                     _%object163185163190%_
                     _%key163176%_
                     _%proc163179%_
                     _%default163182%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key163136%_
                         (cons _%update163144%_ (cons _%default163152%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!156507%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!156509%_
      (lambda (_%self162952%_ _%key162953%_)
        (let* ((_%self162956%_ _%self162952%_) (_%key162965%_ _%key162953%_))
          (declare (not safe))
          (let ((_%h162976%_
                 (##unchecked-structure-ref _%self162956%_ '1 '#f '#f))
                (_%key?162978%_
                 (##unchecked-structure-ref _%self162956%_ '2 '#f '#f)))
            (if (_%key?162978%_ _%key162965%_)
                (let* ((_%self152968162984%_ _%h162976%_)
                       (_%key162987%_ _%key162965%_))
                  (declare (not safe))
                  (let ((_%object162990162995%_
                         (##unchecked-structure-ref
                          _%self152968162984%_
                          '1
                          '#f
                          'delete!))
                        (_%method162991162996%_
                         (##unchecked-structure-ref
                          _%self152968162984%_
                          '4
                          '#f
                          'delete!)))
                    (_%method162991162996%_
                     _%object162990162995%_
                     _%key162987%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key162965%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!156509%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each156511%_
      (lambda (_%self162783%_ _%proc162784%_)
        (let* ((_%self162787%_ _%self162783%_) (_%proc162796%_ _%proc162784%_))
          (declare (not safe))
          (let ((_%h162807%_
                 (##unchecked-structure-ref _%self162787%_ '1 '#f '#f))
                (_%key?162809%_
                 (##unchecked-structure-ref _%self162787%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self153212162815%_ _%h162807%_)
                       (_%proc162818%_ _%proc162796%_))
                  (declare (not safe))
                  (let ((_%object162821162826%_
                         (##unchecked-structure-ref
                          _%self153212162815%_
                          '1
                          '#f
                          'for-each))
                        (_%method162822162827%_
                         (##unchecked-structure-ref
                          _%self153212162815%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162822162827%_
                     _%object162821162826%_
                     _%proc162818%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc162796%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each156511%_
       '#f))
    (define _%checked-hash-table::HashTable::length156513%_
      (lambda (_%self162629%_)
        (let ((_%self162632%_ _%self162629%_))
          (declare (not safe))
          (let ((_%h162644%_
                 (##unchecked-structure-ref _%self162632%_ '1 '#f '#f))
                (_%key?162646%_
                 (##unchecked-structure-ref _%self162632%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153456162649%_ _%h162644%_))
                  (declare (not safe))
                  (let ((_%object162652162657%_
                         (##unchecked-structure-ref
                          _%self153456162649%_
                          '1
                          '#f
                          'length))
                        (_%method162653162658%_
                         (##unchecked-structure-ref
                          _%self153456162649%_
                          '6
                          '#f
                          'length)))
                    (_%method162653162658%_ _%object162652162657%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-length
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::length
       _%checked-hash-table::HashTable::length156513%_
       '#f))
    (define _%checked-hash-table::HashTable::copy156515%_
      (lambda (_%self162475%_)
        (let ((_%self162478%_ _%self162475%_))
          (declare (not safe))
          (let ((_%h162490%_
                 (##unchecked-structure-ref _%self162478%_ '1 '#f '#f))
                (_%key?162492%_
                 (##unchecked-structure-ref _%self162478%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152724162495%_ _%h162490%_))
                  (declare (not safe))
                  (let ((_%object162498162503%_
                         (##unchecked-structure-ref
                          _%self152724162495%_
                          '1
                          '#f
                          'copy))
                        (_%method162499162504%_
                         (##unchecked-structure-ref
                          _%self152724162495%_
                          '3
                          '#f
                          'copy)))
                    (_%method162499162504%_ _%object162498162503%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-copy
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::copy
       _%checked-hash-table::HashTable::copy156515%_
       '#f))
    (define _%checked-hash-table::HashTable::new156517%_
      (lambda (_%self162301%_ _%size-hint162302%_)
        (let ((_%self162305%_ _%self162301%_))
          (if (or (not _%size-hint162302%_) (fixnum? _%size-hint162302%_))
              (let ((_%size-hint162321%_ _%size-hint162302%_))
                (declare (not safe))
                (let ((_%h162333%_
                       (##unchecked-structure-ref _%self162305%_ '1 '#f '#f))
                      (_%key?162335%_
                       (##unchecked-structure-ref _%self162305%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self153700162338%_ _%h162333%_)
                             (_%size-hint162341%_ _%size-hint162321%_))
                        (declare (not safe))
                        (let ((_%object162344162349%_
                               (##unchecked-structure-ref
                                _%self153700162338%_
                                '1
                                '#f
                                'new))
                              (_%method162345162350%_
                               (##unchecked-structure-ref
                                _%self153700162338%_
                                '7
                                '#f
                                'new)))
                          (_%method162345162350%_
                           _%object162344162349%_
                           _%size-hint162341%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint162321%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@376.35-376.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162302%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new156517%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!156519%_
      (lambda (_%self162147%_)
        (let ((_%self162150%_ _%self162147%_))
          (declare (not safe))
          (let ((_%h162162%_
                 (##unchecked-structure-ref _%self162150%_ '1 '#f '#f))
                (_%key?162164%_
                 (##unchecked-structure-ref _%self162150%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152479162167%_ _%h162162%_))
                  (declare (not safe))
                  (let ((_%object162170162175%_
                         (##unchecked-structure-ref
                          _%self152479162167%_
                          '1
                          '#f
                          'clear!))
                        (_%method162171162176%_
                         (##unchecked-structure-ref
                          _%self152479162167%_
                          '2
                          '#f
                          'clear!)))
                    (_%method162171162176%_ _%object162170162175%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-clear!
                   'value:
                   '())
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::clear!
       _%checked-hash-table::HashTable::clear!156519%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table161996%_
               _%count161997%_
               _%free161998%_
               _%hash161999%_
               _%test162000%_
               _%seed162001%_
               _%lock162002%_)
        (let ((__tmp170450
               (let () (declare (not safe)) (ensure-lock _%lock162002%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table161996%_
           _%count161997%_
           _%free161998%_
           _%hash161999%_
           _%test162000%_
           _%seed162001%_
           __tmp170450))))
    (define make-generic-hash-table__0
      (lambda (_%table162007%_
               _%count162008%_
               _%free162009%_
               _%hash162010%_
               _%test162011%_
               _%seed162012%_)
        (let ((_%lock162014%_ '#f))
          (make-generic-hash-table__%
           _%table162007%_
           _%count162008%_
           _%free162009%_
           _%hash162010%_
           _%test162011%_
           _%seed162012%_
           _%lock162014%_))))
    (define make-generic-hash-table
      (lambda _g170451_
        (let ((_g170452_ (let () (declare (not safe)) (##length _g170451_))))
          (cond ((let () (declare (not safe)) (##fx= _g170452_ 6))
                 (apply make-generic-hash-table__0 _g170451_))
                ((let () (declare (not safe)) (##fx= _g170452_ 7))
                 (apply make-generic-hash-table__% _g170451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g170451_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords161423%_
               _%$%size-hint161413161424%_
               _%$%seed161414161425%_
               _%$%test161415161426%_
               _%$%hash161416161427%_
               _%$%lock161417161428%_
               _%$%check161418161429%_
               _%$%weak-keys161419161430%_
               _%$%weak-values161420161431%_)
        (let* ((_%size-hint161433%_
                (if (eq? _%$%size-hint161413161424%_ absent-value)
                    '#f
                    _%$%size-hint161413161424%_))
               (_%seed161435%_
                (if (eq? _%$%seed161414161425%_ absent-value)
                    '#f
                    _%$%seed161414161425%_))
               (_%test161437%_
                (if (eq? _%$%test161415161426%_ absent-value)
                    equal?
                    _%$%test161415161426%_))
               (_%hash161439%_
                (if (eq? _%$%hash161416161427%_ absent-value)
                    '#f
                    _%$%hash161416161427%_))
               (_%lock161441%_
                (if (eq? _%$%lock161417161428%_ absent-value)
                    '#f
                    _%$%lock161417161428%_))
               (_%check161443%_
                (if (eq? _%$%check161418161429%_ absent-value)
                    '#f
                    _%$%check161418161429%_))
               (_%weak-keys161445%_
                (if (eq? _%$%weak-keys161419161430%_ absent-value)
                    '#f
                    _%$%weak-keys161419161430%_))
               (_%weak-values161447%_
                (if (eq? _%$%weak-values161420161431%_ absent-value)
                    '#f
                    _%$%weak-values161420161431%_)))
          (letrec ((_%table-seed161450%_
                    (lambda ()
                      (if (fixnum? _%seed161435%_)
                          _%seed161435%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock161594%_
                    (lambda (_%ht161969%_)
                      (let ((_%ht161972%_ _%ht161969%_))
                        (if _%lock161441%_
                            (let ((__tmp170453
                                   (let ((__tmp170454
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock161441%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht161972%_
                                      __tmp170454))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170453))
                            _%ht161972%_))))
                   (_%wrap-lock161595%_
                    (lambda (_%ht161957%_)
                      (let ((_%ht161960%_ _%ht161957%_))
                        (_%__wrap-lock161594%_ _%ht161960%_))))
                   (_%__wrap-checked161717%_
                    (lambda (_%ht161944%_ _%implicit161945%_)
                      (let ((_%ht161948%_ _%ht161944%_))
                        (if _%check161443%_
                            (let ((__tmp170455
                                   (let ((__tmp170456
                                          (if (procedure? _%check161443%_)
                                              _%check161443%_
                                              _%implicit161945%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht161948%_
                                      __tmp170456))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170455))
                            _%ht161948%_))))
                   (_%wrap-checked161718%_
                    (lambda (_%ht161931%_ _%implicit161932%_)
                      (let ((_%ht161935%_ _%ht161931%_))
                        (_%__wrap-checked161717%_
                         _%ht161935%_
                         _%implicit161932%_))))
                   (_%make161719%_
                    (lambda (_%kons161882%_
                             _%key?161883%_
                             _%hash161884%_
                             _%test161885%_)
                      (let* ((_%size161888%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint161433%_)))
                             (_%table161890%_
                              (let ((__tmp170457 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size161888%_ __tmp170457)))
                             (_%ht161892%_
                              (let ((__tmp170458
                                     (_%kons161882%_
                                      _%table161890%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size161888%_ '2))
                                      _%hash161884%_
                                      _%test161885%_
                                      (_%table-seed161450%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170458)))
                             (_%ht161914%_
                              (let* ((_%ht161895%_ _%ht161892%_)
                                     (_%ht161899%_ _%ht161895%_))
                                (_%__wrap-lock161594%_ _%ht161899%_)))
                             (_%implicit161917%_ _%key?161883%_)
                             (_%ht161921%_ _%ht161914%_))
                        (_%__wrap-checked161717%_
                         _%ht161921%_
                         _%implicit161917%_))))
                   (_%make-gc-hash-table161720%_
                    (lambda ()
                      (let* ((_%ht161847%_
                              (let ((__tmp170459
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint161433%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170459)))
                             (_%ht161865%_
                              (let* ((_%ht161849%_ _%ht161847%_)
                                     (_%ht161853%_ _%ht161849%_))
                                (_%__wrap-lock161594%_ _%ht161853%_)))
                             (_%implicit161868%_ true)
                             (_%ht161872%_ _%ht161865%_))
                        (_%__wrap-checked161717%_
                         _%ht161872%_
                         _%implicit161868%_))))
                   (_%make-gambit-table161721%_
                    (lambda ()
                      (let* ((_%size161790%_
                              (let ((_%$e161787%_ _%size-hint161433%_))
                                (if _%$e161787%_
                                    _%$e161787%_
                                    (macro-absent-obj))))
                             (_%test161795%_
                              (let ((_%$e161792%_ _%test161437%_))
                                (if _%$e161792%_ _%$e161792%_ equal?)))
                             (_%hash161803%_
                              (let ((_%$e161797%_ _%hash161439%_))
                                (if _%$e161797%_
                                    _%$e161797%_
                                    (if (eq? _%test161795%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test161795%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht161805%_
                              (let ((__tmp170460
                                     (make-table
                                      'size:
                                      _%size161790%_
                                      'test:
                                      _%test161795%_
                                      'hash:
                                      _%hash161803%_
                                      'weak-keys:
                                      _%weak-keys161445%_
                                      'weak-values:
                                      _%weak-values161447%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170460)))
                             (_%ht161828%_
                              (let* ((_%ht161808%_ _%ht161805%_)
                                     (_%ht161812%_ _%ht161808%_))
                                (_%__wrap-lock161594%_ _%ht161812%_)))
                             (_%implicit161831%_ true)
                             (_%ht161835%_ _%ht161828%_))
                        (_%__wrap-checked161717%_
                         _%ht161835%_
                         _%implicit161831%_)))))
            (if (or _%weak-keys161445%_ _%weak-values161447%_)
                (_%make-gambit-table161721%_)
                (if (and (or (eq? _%test161437%_ eq?)
                             (eq? _%test161437%_ ##eq?))
                         (or (not _%hash161439%_)
                             (eq? _%hash161439%_ eq?-hash)
                             (eq? _%hash161439%_ eq-hash))
                         (not _%seed161435%_))
                    (_%make-gc-hash-table161720%_)
                    (if (and (or (eq? _%test161437%_ eq?)
                                 (eq? _%test161437%_ ##eq?))
                             (or (not _%hash161439%_)
                                 (eq? _%hash161439%_ eq?-hash)
                                 (eq? _%hash161439%_ eq-hash)))
                        (_%make161719%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test161437%_ eqv?)
                                     (eq? _%test161437%_ ##eqv?))
                                 (or (not _%hash161439%_)
                                     (eq? _%hash161439%_ eqv?-hash)
                                     (eq? _%hash161439%_ eqv-hash)))
                            (_%make161719%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test161437%_ eq?)
                                         (eq? _%test161437%_ ##eq?))
                                     (or (eq? _%hash161439%_ symbolic-hash)
                                         (eq? _%hash161439%_ ##symbol-hash)))
                                (_%make161719%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test161437%_ eq?)
                                             (eq? _%test161437%_ ##eq?))
                                         (eq? _%hash161439%_ immediate-hash))
                                    (_%make161719%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test161437%_ equal?)
                                                 (eq? _%test161437%_ ##equal?)
                                                 (eq? _%test161437%_ string=?)
                                                 (eq? _%test161437%_
                                                      ##string=?))
                                             (or (eq? _%hash161439%_
                                                      string-hash)
                                                 (eq? _%hash161439%_
                                                      ##string=?-hash)))
                                        (_%make161719%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test161437%_ equal?)
                                                 (not _%hash161439%_))
                                            (_%make161719%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test161437%_)
                                                (if (procedure? _%hash161439%_)
                                                    (_%make161719%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash161439%_
                                                     _%test161437%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash161439%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test161437%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords161985%_ . _%args161986%_)
        (apply make-hash-table__%
               _%@@keywords161985%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161985%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161985%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161985%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161985%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161985%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161985%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161985%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161985%_
                  'weak-values:
                  absent-value))
               _%args161986%_)))
    (define make-hash-table
      (lambda _%$%args161421161992%_
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
               _%$%args161421161992%_)))
    (define make-hash-table-eq
      (lambda _%args161410%_
        (apply make-hash-table 'test: eq? _%args161410%_)))
    (define make-hash-table-eqv
      (lambda _%args161408%_
        (apply make-hash-table 'test: eqv? _%args161408%_)))
    (define make-hash-table-symbolic
      (lambda _%args161406%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args161406%_)))
    (define make-hash-table-string
      (lambda _%args161404%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args161404%_)))
    (define make-hash-table-immediate
      (lambda _%args161402%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args161402%_)))
    (define list->hash-table
      (lambda (_%lst161399%_ . _%args161400%_)
        (list->hash-table!
         _%lst161399%_
         (apply make-hash-table
                'size:
                (length _%lst161399%_)
                _%args161400%_))))
    (define list->hash-table-eq
      (lambda (_%lst161396%_ . _%args161397%_)
        (list->hash-table!
         _%lst161396%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161396%_)
                _%args161397%_))))
    (define list->hash-table-eqv
      (lambda (_%lst161393%_ . _%args161394%_)
        (list->hash-table!
         _%lst161393%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161393%_)
                _%args161394%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst161390%_ . _%args161391%_)
        (list->hash-table!
         _%lst161390%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161390%_)
                _%args161391%_))))
    (define list->hash-table-string
      (lambda (_%lst161387%_ . _%args161388%_)
        (list->hash-table!
         _%lst161387%_
         (apply make-hash-table-string
                'size:
                (length _%lst161387%_)
                _%args161388%_))))
    (define list->hash-table-immediate
      (lambda (_%lst161384%_ . _%args161385%_)
        (list->hash-table!
         _%lst161384%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161384%_)
                _%args161385%_))))
    (define list->hash-table!
      (lambda (_%lst161335%_ _%h161336%_)
        (for-each
         (lambda (_%el161338%_)
           (let* ((_%$%el161339161346%_ _%el161338%_)
                  (_%$%E161341161349%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el161339161346%_
                              '([k . v])))
                     '#!void))
                  (_%$%K161342161372%_
                   (lambda (_%v161352%_ _%k161353%_)
                     (let* ((_%self154188161355%_ _%h161336%_)
                            (_%key161358%_ _%k161353%_)
                            (_%value161361%_ _%v161352%_))
                       (declare (not safe))
                       (let ((_%object161364161369%_
                              (##unchecked-structure-ref
                               _%self154188161355%_
                               '1
                               '#f
                               'set!))
                             (_%method161365161370%_
                              (##unchecked-structure-ref
                               _%self154188161355%_
                               '9
                               '#f
                               'set!)))
                         (_%method161365161370%_
                          _%object161364161369%_
                          _%key161358%_
                          _%value161361%_))))))
             (if (pair? _%$%el161339161346%_)
                 (let ((_%$%hd161343161375%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el161339161346%_)))
                       (_%$%tl161344161377%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el161339161346%_))))
                   (let* ((_%k161380%_ _%$%hd161343161375%_)
                          (_%v161382%_ _%$%tl161344161377%_))
                     (_%$%K161342161372%_ _%v161382%_ _%k161380%_)))
                 (_%$%E161341161349%_))))
         _%lst161335%_)
        _%h161336%_))
    (define plist->hash-table
      (lambda (_%lst161332%_ . _%args161333%_)
        (plist->hash-table!
         _%lst161332%_
         (apply make-hash-table
                'size:
                (length _%lst161332%_)
                _%args161333%_))))
    (define plist->hash-table-eq
      (lambda (_%lst161329%_ . _%args161330%_)
        (plist->hash-table!
         _%lst161329%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161329%_)
                _%args161330%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst161326%_ . _%args161327%_)
        (plist->hash-table!
         _%lst161326%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161326%_)
                _%args161327%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst161323%_ . _%args161324%_)
        (plist->hash-table!
         _%lst161323%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161323%_)
                _%args161324%_))))
    (define plist->hash-table-string
      (lambda (_%lst161320%_ . _%args161321%_)
        (plist->hash-table!
         _%lst161320%_
         (apply make-hash-table-string
                'size:
                (length _%lst161320%_)
                _%args161321%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst161317%_ . _%args161318%_)
        (plist->hash-table!
         _%lst161317%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161317%_)
                _%args161318%_))))
    (define plist->hash-table!
      (lambda (_%lst161240%_ _%h161241%_)
        (let _%loop161243%_ ((_%rest161245%_ _%lst161240%_))
          (let* ((_%$%rest161246161258%_ _%rest161245%_)
                 (_%$%else161249161266%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst161240%_)))))
            (let ((_%$%K161252161298%_
                   (lambda (_%rest161277%_ _%val161278%_ _%key161279%_)
                     (let* ((_%self154188161281%_ _%h161241%_)
                            (_%key161284%_ _%key161279%_)
                            (_%value161287%_ _%val161278%_))
                       (declare (not safe))
                       (let ((_%object161290161295%_
                              (##unchecked-structure-ref
                               _%self154188161281%_
                               '1
                               '#f
                               'set!))
                             (_%method161291161296%_
                              (##unchecked-structure-ref
                               _%self154188161281%_
                               '9
                               '#f
                               'set!)))
                         (_%method161291161296%_
                          _%object161290161295%_
                          _%key161284%_
                          _%value161287%_)))
                     (_%loop161243%_ _%rest161277%_)))
                  (_%$%K161251161271%_ (lambda () _%h161241%_)))
              (let ((_%$%try-match161248161274%_
                     (lambda ()
                       (if (null? _%$%rest161246161258%_)
                           (_%$%K161251161271%_)
                           (_%$%else161249161266%_)))))
                (if (pair? _%$%rest161246161258%_)
                    (let ((_%$%tl161254161303%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest161246161258%_)))
                          (_%$%hd161253161301%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest161246161258%_))))
                      (if (pair? _%$%tl161254161303%_)
                          (let ((_%$%tl161256161310%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl161254161303%_)))
                                (_%$%hd161255161308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl161254161303%_))))
                            (let ((_%key161306%_ _%$%hd161253161301%_)
                                  (_%val161313%_ _%$%hd161255161308%_)
                                  (_%rest161315%_ _%$%tl161256161310%_))
                              (_%$%K161252161298%_
                               _%rest161315%_
                               _%val161313%_
                               _%key161306%_)))
                          (_%$%else161249161266%_)))
                    (_%$%try-match161248161274%_))))))))
    (define __hash-length
      (lambda (_%h161192%_)
        (let* ((_%h161195%_ _%h161192%_)
               (_%self153457161204%_ _%h161195%_)
               (_%self153457161208%_ _%self153457161204%_)
               (_%self153457161210%_ _%self153457161208%_))
          (if __DEBUG
              (let ((_%val161230%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161222161227%_
                              (##unchecked-structure-ref
                               _%self153457161210%_
                               '1
                               '#f
                               'length))
                             (_%method161223161228%_
                              (##unchecked-structure-ref
                               _%self153457161210%_
                               '6
                               '#f
                               'length)))
                         (_%method161223161228%_ _%object161222161227%_)))))
                (if (fixnum? _%val161230%_)
                    _%val161230%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161230%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161232161237%_
                       (##unchecked-structure-ref
                        _%self153457161210%_
                        '1
                        '#f
                        'length))
                      (_%method161233161238%_
                       (##unchecked-structure-ref
                        _%self153457161210%_
                        '6
                        '#f
                        'length)))
                  (_%method161233161238%_ _%object161232161237%_)))))))
    (define hash-length
      (lambda (_%h161177%_)
        (let* ((_%h161180%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161177%_)))
               (_%h161182%_ _%h161180%_))
          (__hash-length _%h161182%_))))
    (define __hash-ref__%
      (lambda (_%h161108%_ _%key161109%_ _%default161110%_)
        (let* ((_%h161113%_ _%h161108%_)
               (_%result161163%_
                (let* ((_%self153945161122%_ _%h161113%_)
                       (_%key161125%_ _%key161109%_)
                       (_%default161128%_ _%default161110%_)
                       (_%self153945161132%_ _%self153945161122%_)
                       (_%self153945161134%_ _%self153945161132%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object161148161153%_
                               (##unchecked-structure-ref
                                _%self153945161134%_
                                '1
                                '#f
                                'ref))
                              (_%method161149161154%_
                               (##unchecked-structure-ref
                                _%self153945161134%_
                                '8
                                '#f
                                'ref)))
                          (_%method161149161154%_
                           _%object161148161153%_
                           _%key161125%_
                           _%default161128%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161155161160%_
                               (##unchecked-structure-ref
                                _%self153945161134%_
                                '1
                                '#f
                                'ref))
                              (_%method161156161161%_
                               (##unchecked-structure-ref
                                _%self153945161134%_
                                '8
                                '#f
                                'ref)))
                          (_%method161156161161%_
                           _%object161155161160%_
                           _%key161125%_
                           _%default161128%_)))))))
          (if (eq? _%result161163%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h161113%_
               'key:
               _%key161109%_)
              _%result161163%_))))
    (define __hash-ref__0
      (lambda (_%h161168%_ _%key161169%_)
        (let ((_%default161171%_ absent-obj))
          (__hash-ref__% _%h161168%_ _%key161169%_ _%default161171%_))))
    (define __hash-ref
      (lambda _g170461_
        (let ((_g170462_ (let () (declare (not safe)) (##length _g170461_))))
          (cond ((let () (declare (not safe)) (##fx= _g170462_ 2))
                 (apply __hash-ref__0 _g170461_))
                ((let () (declare (not safe)) (##fx= _g170462_ 3))
                 (apply __hash-ref__% _g170461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170461_))))))
    (define hash-ref__%
      (lambda (_%h161078%_ _%key161079%_ _%default161080%_)
        (let* ((_%h161083%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161078%_)))
               (_%h161085%_ _%h161083%_))
          (__hash-ref__% _%h161085%_ _%key161079%_ _%default161080%_))))
    (define hash-ref__0
      (lambda (_%h161098%_ _%key161099%_)
        (let ((_%default161101%_ absent-obj))
          (hash-ref__% _%h161098%_ _%key161099%_ _%default161101%_))))
    (define hash-ref
      (lambda _g170463_
        (let ((_g170464_ (let () (declare (not safe)) (##length _g170463_))))
          (cond ((let () (declare (not safe)) (##fx= _g170464_ 2))
                 (apply hash-ref__0 _g170463_))
                ((let () (declare (not safe)) (##fx= _g170464_ 3))
                 (apply hash-ref__% _g170463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170463_))))))
    (define __hash-get
      (lambda (_%h161023%_ _%key161024%_)
        (let* ((_%h161027%_ _%h161023%_)
               (_%self153945161036%_ _%h161027%_)
               (_%key161039%_ _%key161024%_)
               (_%default161042%_ '#f)
               (_%self153945161046%_ _%self153945161036%_)
               (_%self153945161048%_ _%self153945161046%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161062161067%_
                       (##unchecked-structure-ref
                        _%self153945161048%_
                        '1
                        '#f
                        'ref))
                      (_%method161063161068%_
                       (##unchecked-structure-ref
                        _%self153945161048%_
                        '8
                        '#f
                        'ref)))
                  (_%method161063161068%_
                   _%object161062161067%_
                   _%key161039%_
                   _%default161042%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161069161074%_
                       (##unchecked-structure-ref
                        _%self153945161048%_
                        '1
                        '#f
                        'ref))
                      (_%method161070161075%_
                       (##unchecked-structure-ref
                        _%self153945161048%_
                        '8
                        '#f
                        'ref)))
                  (_%method161070161075%_
                   _%object161069161074%_
                   _%key161039%_
                   _%default161042%_)))))))
    (define hash-get
      (lambda (_%h161007%_ _%key161008%_)
        (let* ((_%h161011%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161007%_)))
               (_%h161013%_ _%h161011%_))
          (__hash-get _%h161013%_ _%key161008%_))))
    (define __hash-put!
      (lambda (_%h160952%_ _%key160953%_ _%value160954%_)
        (let* ((_%h160957%_ _%h160952%_)
               (_%self154189160966%_ _%h160957%_)
               (_%key160969%_ _%key160953%_)
               (_%value160972%_ _%value160954%_)
               (_%self154189160976%_ _%self154189160966%_)
               (_%self154189160978%_ _%self154189160976%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160992160997%_
                       (##unchecked-structure-ref
                        _%self154189160978%_
                        '1
                        '#f
                        'set!))
                      (_%method160993160998%_
                       (##unchecked-structure-ref
                        _%self154189160978%_
                        '9
                        '#f
                        'set!)))
                  (_%method160993160998%_
                   _%object160992160997%_
                   _%key160969%_
                   _%value160972%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160999161004%_
                       (##unchecked-structure-ref
                        _%self154189160978%_
                        '1
                        '#f
                        'set!))
                      (_%method161000161005%_
                       (##unchecked-structure-ref
                        _%self154189160978%_
                        '9
                        '#f
                        'set!)))
                  (_%method161000161005%_
                   _%object160999161004%_
                   _%key160969%_
                   _%value160972%_)))))))
    (define hash-put!
      (lambda (_%h160935%_ _%key160936%_ _%value160937%_)
        (let* ((_%h160940%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160935%_)))
               (_%h160942%_ _%h160940%_))
          (__hash-put! _%h160942%_ _%key160936%_ _%value160937%_))))
    (define __hash-update!__%
      (lambda (_%h160851%_ _%key160852%_ _%update160853%_ _%default160854%_)
        (let* ((_%h160857%_ _%h160851%_)
               (_%self154433160866%_ _%h160857%_)
               (_%key160869%_ _%key160852%_)
               (_%proc160872%_ _%update160853%_)
               (_%default160875%_ _%default160854%_)
               (_%self154433160879%_ _%self154433160866%_)
               (_%self154433160881%_ _%self154433160879%_))
          (if (procedure? _%proc160872%_)
              (let ((_%proc160897%_ _%proc160872%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object160906160911%_
                             (##unchecked-structure-ref
                              _%self154433160881%_
                              '1
                              '#f
                              'update!))
                            (_%method160907160912%_
                             (##unchecked-structure-ref
                              _%self154433160881%_
                              '10
                              '#f
                              'update!)))
                        (_%method160907160912%_
                         _%object160906160911%_
                         _%key160869%_
                         _%proc160897%_
                         _%default160875%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object160913160918%_
                             (##unchecked-structure-ref
                              _%self154433160881%_
                              '1
                              '#f
                              'update!))
                            (_%method160914160919%_
                             (##unchecked-structure-ref
                              _%self154433160881%_
                              '10
                              '#f
                              'update!)))
                        (_%method160914160919%_
                         _%object160913160918%_
                         _%key160869%_
                         _%proc160897%_
                         _%default160875%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc160872%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h160924%_ _%key160925%_ _%update160926%_)
        (let ((_%default160928%_ '#!void))
          (__hash-update!__%
           _%h160924%_
           _%key160925%_
           _%update160926%_
           _%default160928%_))))
    (define __hash-update!
      (lambda _g170465_
        (let ((_g170466_ (let () (declare (not safe)) (##length _g170465_))))
          (cond ((let () (declare (not safe)) (##fx= _g170466_ 3))
                 (apply __hash-update!__0 _g170465_))
                ((let () (declare (not safe)) (##fx= _g170466_ 4))
                 (apply __hash-update!__% _g170465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170465_))))))
    (define hash-update!__%
      (lambda (_%h160818%_ _%key160819%_ _%update160820%_ _%default160821%_)
        (let* ((_%h160824%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160818%_)))
               (_%h160826%_ _%h160824%_))
          (__hash-update!__%
           _%h160826%_
           _%key160819%_
           _%update160820%_
           _%default160821%_))))
    (define hash-update!__0
      (lambda (_%h160839%_ _%key160840%_ _%update160841%_)
        (let ((_%default160843%_ '#!void))
          (hash-update!__%
           _%h160839%_
           _%key160840%_
           _%update160841%_
           _%default160843%_))))
    (define hash-update!
      (lambda _g170467_
        (let ((_g170468_ (let () (declare (not safe)) (##length _g170467_))))
          (cond ((let () (declare (not safe)) (##fx= _g170468_ 3))
                 (apply hash-update!__0 _g170467_))
                ((let () (declare (not safe)) (##fx= _g170468_ 4))
                 (apply hash-update!__% _g170467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170467_))))))
    (define __hash-remove!
      (lambda (_%h160767%_ _%key160768%_)
        (let* ((_%h160771%_ _%h160767%_)
               (_%self152969160780%_ _%h160771%_)
               (_%key160783%_ _%key160768%_)
               (_%self152969160787%_ _%self152969160780%_)
               (_%self152969160789%_ _%self152969160787%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160802160807%_
                       (##unchecked-structure-ref
                        _%self152969160789%_
                        '1
                        '#f
                        'delete!))
                      (_%method160803160808%_
                       (##unchecked-structure-ref
                        _%self152969160789%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160803160808%_
                   _%object160802160807%_
                   _%key160783%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160809160814%_
                       (##unchecked-structure-ref
                        _%self152969160789%_
                        '1
                        '#f
                        'delete!))
                      (_%method160810160815%_
                       (##unchecked-structure-ref
                        _%self152969160789%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160810160815%_
                   _%object160809160814%_
                   _%key160783%_)))))))
    (define hash-remove!
      (lambda (_%h160751%_ _%key160752%_)
        (let* ((_%h160755%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160751%_)))
               (_%h160757%_ _%h160755%_))
          (__hash-remove! _%h160757%_ _%key160752%_))))
    (define __hash-key?
      (lambda (_%h160697%_ _%k160698%_)
        (let ((_%h160701%_ _%h160697%_))
          (not (eq? (let* ((_%self153945160710%_ _%h160701%_)
                           (_%key160713%_ _%k160698%_)
                           (_%default160716%_ absent-value)
                           (_%self153945160720%_ _%self153945160710%_)
                           (_%self153945160722%_ _%self153945160720%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object160736160741%_
                                   (##unchecked-structure-ref
                                    _%self153945160722%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160737160742%_
                                   (##unchecked-structure-ref
                                    _%self153945160722%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160737160742%_
                               _%object160736160741%_
                               _%key160713%_
                               _%default160716%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object160743160748%_
                                   (##unchecked-structure-ref
                                    _%self153945160722%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160744160749%_
                                   (##unchecked-structure-ref
                                    _%self153945160722%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160744160749%_
                               _%object160743160748%_
                               _%key160713%_
                               _%default160716%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h160681%_ _%k160682%_)
        (let* ((_%h160685%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160681%_)))
               (_%h160687%_ _%h160685%_))
          (__hash-key? _%h160687%_ _%k160682%_))))
    (define __hash->list
      (lambda (_%h160616%_)
        (let* ((_%h160619%_ _%h160616%_) (_%lst160628%_ '()))
          (let* ((_%self153213160630%_ _%h160619%_)
                 (_%proc160636%_
                  (lambda (_%k160633%_ _%v160634%_)
                    (set! _%lst160628%_
                          (cons (cons _%k160633%_ _%v160634%_)
                                _%lst160628%_))))
                 (_%self153213160640%_ _%self153213160630%_)
                 (_%self153213160642%_ _%self153213160640%_)
                 (_%proc160657%_ _%proc160636%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160666160671%_
                         (##unchecked-structure-ref
                          _%self153213160642%_
                          '1
                          '#f
                          'for-each))
                        (_%method160667160672%_
                         (##unchecked-structure-ref
                          _%self153213160642%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160667160672%_
                     _%object160666160671%_
                     _%proc160657%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160673160678%_
                         (##unchecked-structure-ref
                          _%self153213160642%_
                          '1
                          '#f
                          'for-each))
                        (_%method160674160679%_
                         (##unchecked-structure-ref
                          _%self153213160642%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160674160679%_
                     _%object160673160678%_
                     _%proc160657%_)))))
          _%lst160628%_)))
    (define hash->list
      (lambda (_%h160601%_)
        (let* ((_%h160604%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160601%_)))
               (_%h160606%_ _%h160604%_))
          (__hash->list _%h160606%_))))
    (define __hash->plist
      (lambda (_%h160536%_)
        (let* ((_%h160539%_ _%h160536%_) (_%lst160548%_ '()))
          (let* ((_%self153213160550%_ _%h160539%_)
                 (_%proc160556%_
                  (lambda (_%k160553%_ _%v160554%_)
                    (set! _%lst160548%_
                          (cons _%k160553%_
                                (cons _%v160554%_ _%lst160548%_)))))
                 (_%self153213160560%_ _%self153213160550%_)
                 (_%self153213160562%_ _%self153213160560%_)
                 (_%proc160577%_ _%proc160556%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160586160591%_
                         (##unchecked-structure-ref
                          _%self153213160562%_
                          '1
                          '#f
                          'for-each))
                        (_%method160587160592%_
                         (##unchecked-structure-ref
                          _%self153213160562%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160587160592%_
                     _%object160586160591%_
                     _%proc160577%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160593160598%_
                         (##unchecked-structure-ref
                          _%self153213160562%_
                          '1
                          '#f
                          'for-each))
                        (_%method160594160599%_
                         (##unchecked-structure-ref
                          _%self153213160562%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160594160599%_
                     _%object160593160598%_
                     _%proc160577%_)))))
          _%lst160548%_)))
    (define hash->plist
      (lambda (_%h160521%_)
        (let* ((_%h160524%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160521%_)))
               (_%h160526%_ _%h160524%_))
          (__hash->plist _%h160526%_))))
    (define __hash-for-each
      (lambda (_%proc160453%_ _%h160454%_)
        (let* ((_%proc160457%_ _%proc160453%_)
               (_%h160465%_ _%h160454%_)
               (_%self153213160474%_ _%h160465%_)
               (_%proc160477%_ _%proc160457%_)
               (_%self153213160481%_ _%self153213160474%_)
               (_%self153213160483%_ _%self153213160481%_)
               (_%proc160497%_ _%proc160477%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160506160511%_
                       (##unchecked-structure-ref
                        _%self153213160483%_
                        '1
                        '#f
                        'for-each))
                      (_%method160507160512%_
                       (##unchecked-structure-ref
                        _%self153213160483%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160507160512%_
                   _%object160506160511%_
                   _%proc160497%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160513160518%_
                       (##unchecked-structure-ref
                        _%self153213160483%_
                        '1
                        '#f
                        'for-each))
                      (_%method160514160519%_
                       (##unchecked-structure-ref
                        _%self153213160483%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160514160519%_
                   _%object160513160518%_
                   _%proc160497%_)))))))
    (define hash-for-each
      (lambda (_%proc160427%_ _%h160428%_)
        (if (procedure? _%proc160427%_)
            (let* ((_%proc160432%_ _%proc160427%_)
                   (_%h160441%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160428%_)))
                   (_%h160443%_ _%h160441%_))
              (__hash-for-each _%proc160432%_ _%h160443%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@602.22-602.26"
               'contract:
               'procedure?
               'value:
               _%proc160427%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc160353%_ _%h160354%_)
        (let* ((_%proc160357%_ _%proc160353%_)
               (_%h160365%_ _%h160354%_)
               (_%result160374%_ '()))
          (let* ((_%self153213160376%_ _%h160365%_)
                 (_%proc160382%_
                  (lambda (_%k160379%_ _%v160380%_)
                    (set! _%result160374%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc160357%_ _%k160379%_ _%v160380%_))
                                _%result160374%_))))
                 (_%self153213160386%_ _%self153213160376%_)
                 (_%self153213160388%_ _%self153213160386%_)
                 (_%proc160403%_ _%proc160382%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160412160417%_
                         (##unchecked-structure-ref
                          _%self153213160388%_
                          '1
                          '#f
                          'for-each))
                        (_%method160413160418%_
                         (##unchecked-structure-ref
                          _%self153213160388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160413160418%_
                     _%object160412160417%_
                     _%proc160403%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160419160424%_
                         (##unchecked-structure-ref
                          _%self153213160388%_
                          '1
                          '#f
                          'for-each))
                        (_%method160420160425%_
                         (##unchecked-structure-ref
                          _%self153213160388%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160420160425%_
                     _%object160419160424%_
                     _%proc160403%_)))))
          _%result160374%_)))
    (define hash-map
      (lambda (_%proc160327%_ _%h160328%_)
        (if (procedure? _%proc160327%_)
            (let* ((_%proc160332%_ _%proc160327%_)
                   (_%h160341%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160328%_)))
                   (_%h160343%_ _%h160341%_))
              (__hash-map _%proc160332%_ _%h160343%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@605.17-605.21"
               'contract:
               'procedure?
               'value:
               _%proc160327%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc160252%_ _%iv160253%_ _%h160254%_)
        (let* ((_%proc160257%_ _%proc160252%_)
               (_%h160265%_ _%h160254%_)
               (_%result160274%_ _%iv160253%_))
          (let* ((_%self153213160276%_ _%h160265%_)
                 (_%proc160282%_
                  (lambda (_%k160279%_ _%v160280%_)
                    (set! _%result160274%_
                          (let ()
                            (declare (not safe))
                            (_%proc160257%_
                             _%k160279%_
                             _%v160280%_
                             _%result160274%_)))))
                 (_%self153213160286%_ _%self153213160276%_)
                 (_%self153213160288%_ _%self153213160286%_)
                 (_%proc160303%_ _%proc160282%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160312160317%_
                         (##unchecked-structure-ref
                          _%self153213160288%_
                          '1
                          '#f
                          'for-each))
                        (_%method160313160318%_
                         (##unchecked-structure-ref
                          _%self153213160288%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160313160318%_
                     _%object160312160317%_
                     _%proc160303%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160319160324%_
                         (##unchecked-structure-ref
                          _%self153213160288%_
                          '1
                          '#f
                          'for-each))
                        (_%method160320160325%_
                         (##unchecked-structure-ref
                          _%self153213160288%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160320160325%_
                     _%object160319160324%_
                     _%proc160303%_)))))
          _%result160274%_)))
    (define hash-fold
      (lambda (_%proc160225%_ _%iv160226%_ _%h160227%_)
        (if (procedure? _%proc160225%_)
            (let* ((_%proc160231%_ _%proc160225%_)
                   (_%h160240%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160227%_)))
                   (_%h160242%_ _%h160240%_))
              (__hash-fold _%proc160231%_ _%iv160226%_ _%h160242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@611.18-611.22"
               'contract:
               'procedure?
               'value:
               _%proc160225%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc160135%_ _%h160136%_ _%default-value160137%_)
        (let* ((_%proc160140%_ _%proc160135%_)
               (_%h160148%_ _%h160136%_)
               (__tmp170469
                (lambda (_%return160157%_)
                  (let* ((_%self153213160159%_ _%h160148%_)
                         (_%proc160168%_
                          (lambda (_%k160162%_ _%v160163%_)
                            (let ((_%$e160165%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc160140%_
                                      _%k160162%_
                                      _%v160163%_))))
                              (if _%$e160165%_
                                  (_%return160157%_ _%$e160165%_)
                                  '#!void))))
                         (_%self153213160172%_ _%self153213160159%_)
                         (_%self153213160174%_ _%self153213160172%_)
                         (_%proc160189%_ _%proc160168%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object160198160203%_
                                 (##unchecked-structure-ref
                                  _%self153213160174%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160199160204%_
                                 (##unchecked-structure-ref
                                  _%self153213160174%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160199160204%_
                             _%object160198160203%_
                             _%proc160189%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object160205160210%_
                                 (##unchecked-structure-ref
                                  _%self153213160174%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160206160211%_
                                 (##unchecked-structure-ref
                                  _%self153213160174%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160206160211%_
                             _%object160205160210%_
                             _%proc160189%_)))))
                  _%default-value160137%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170469))))
    (define __hash-find__0
      (lambda (_%proc160216%_ _%h160217%_)
        (let ((_%default-value160219%_ '#f))
          (__hash-find__%
           _%proc160216%_
           _%h160217%_
           _%default-value160219%_))))
    (define __hash-find
      (lambda _g170470_
        (let ((_g170471_ (let () (declare (not safe)) (##length _g170470_))))
          (cond ((let () (declare (not safe)) (##fx= _g170471_ 2))
                 (apply __hash-find__0 _g170470_))
                ((let () (declare (not safe)) (##fx= _g170471_ 3))
                 (apply __hash-find__% _g170470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170470_))))))
    (define hash-find__%
      (lambda (_%proc160095%_ _%h160096%_ _%default-value160097%_)
        (if (procedure? _%proc160095%_)
            (let* ((_%proc160101%_ _%proc160095%_)
                   (_%h160110%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160096%_)))
                   (_%h160112%_ _%h160110%_))
              (__hash-find__%
               _%proc160101%_
               _%h160112%_
               _%default-value160097%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@616.18-616.22"
               'contract:
               'procedure?
               'value:
               _%proc160095%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc160125%_ _%h160126%_)
        (let ((_%default-value160128%_ '#f))
          (hash-find__% _%proc160125%_ _%h160126%_ _%default-value160128%_))))
    (define hash-find
      (lambda _g170472_
        (let ((_g170473_ (let () (declare (not safe)) (##length _g170472_))))
          (cond ((let () (declare (not safe)) (##fx= _g170473_ 2))
                 (apply hash-find__0 _g170472_))
                ((let () (declare (not safe)) (##fx= _g170473_ 3))
                 (apply hash-find__% _g170472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170472_))))))
    (define __hash-keys
      (lambda (_%h160029%_)
        (let* ((_%h160032%_ _%h160029%_) (_%result160041%_ '()))
          (let* ((_%self153213160043%_ _%h160032%_)
                 (_%proc160049%_
                  (lambda (_%k160046%_ _%v160047%_)
                    (set! _%result160041%_
                          (cons _%k160046%_ _%result160041%_))))
                 (_%self153213160053%_ _%self153213160043%_)
                 (_%self153213160055%_ _%self153213160053%_)
                 (_%proc160070%_ _%proc160049%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160079160084%_
                         (##unchecked-structure-ref
                          _%self153213160055%_
                          '1
                          '#f
                          'for-each))
                        (_%method160080160085%_
                         (##unchecked-structure-ref
                          _%self153213160055%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160080160085%_
                     _%object160079160084%_
                     _%proc160070%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160086160091%_
                         (##unchecked-structure-ref
                          _%self153213160055%_
                          '1
                          '#f
                          'for-each))
                        (_%method160087160092%_
                         (##unchecked-structure-ref
                          _%self153213160055%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160087160092%_
                     _%object160086160091%_
                     _%proc160070%_)))))
          _%result160041%_)))
    (define hash-keys
      (lambda (_%h160014%_)
        (let* ((_%h160017%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160014%_)))
               (_%h160019%_ _%h160017%_))
          (__hash-keys _%h160019%_))))
    (define __hash-values
      (lambda (_%h159949%_)
        (let* ((_%h159952%_ _%h159949%_) (_%result159961%_ '()))
          (let* ((_%self153213159963%_ _%h159952%_)
                 (_%proc159969%_
                  (lambda (_%k159966%_ _%v159967%_)
                    (set! _%result159961%_
                          (cons _%v159967%_ _%result159961%_))))
                 (_%self153213159973%_ _%self153213159963%_)
                 (_%self153213159975%_ _%self153213159973%_)
                 (_%proc159990%_ _%proc159969%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159999160004%_
                         (##unchecked-structure-ref
                          _%self153213159975%_
                          '1
                          '#f
                          'for-each))
                        (_%method160000160005%_
                         (##unchecked-structure-ref
                          _%self153213159975%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160000160005%_
                     _%object159999160004%_
                     _%proc159990%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160006160011%_
                         (##unchecked-structure-ref
                          _%self153213159975%_
                          '1
                          '#f
                          'for-each))
                        (_%method160007160012%_
                         (##unchecked-structure-ref
                          _%self153213159975%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160007160012%_
                     _%object160006160011%_
                     _%proc159990%_)))))
          _%result159961%_)))
    (define hash-values
      (lambda (_%h159934%_)
        (let* ((_%h159937%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159934%_)))
               (_%h159939%_ _%h159937%_))
          (__hash-values _%h159939%_))))
    (define __hash-copy
      (lambda (_%h159889%_)
        (let* ((_%h159892%_ _%h159889%_)
               (_%self152725159901%_ _%h159892%_)
               (_%self152725159905%_ _%self152725159901%_)
               (_%self152725159907%_ _%self152725159905%_))
          (if __DEBUG
              (let ((__tmp170474
                     (let ()
                       (declare (not safe))
                       (let ((_%object159919159924%_
                              (##unchecked-structure-ref
                               _%self152725159907%_
                               '1
                               '#f
                               'copy))
                             (_%method159920159925%_
                              (##unchecked-structure-ref
                               _%self152725159907%_
                               '3
                               '#f
                               'copy)))
                         (_%method159920159925%_ _%object159919159924%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170474))
              (let ()
                (declare (not safe))
                (let ((_%object159926159931%_
                       (##unchecked-structure-ref
                        _%self152725159907%_
                        '1
                        '#f
                        'copy))
                      (_%method159927159932%_
                       (##unchecked-structure-ref
                        _%self152725159907%_
                        '3
                        '#f
                        'copy)))
                  (_%method159927159932%_ _%object159926159931%_)))))))
    (define hash-copy
      (lambda (_%h159874%_)
        (let* ((_%h159877%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159874%_)))
               (_%h159879%_ _%h159877%_))
          (__hash-copy _%h159879%_))))
    (define __hash-new
      (lambda (_%h159809%_)
        (let* ((_%h159812%_ _%h159809%_)
               (_%self153701159821%_ _%h159812%_)
               (_%size-hint159824%_ '#f)
               (_%self153701159828%_ _%self153701159821%_)
               (_%self153701159830%_ _%self153701159828%_))
          (if (let ((_%$e159846%_ '#t)) (and _%$e159846%_ _%$e159846%_))
              (let ((_%size-hint159850%_ _%size-hint159824%_))
                (if __DEBUG
                    (let ((__tmp170475
                           (let ()
                             (declare (not safe))
                             (let ((_%object159859159864%_
                                    (##unchecked-structure-ref
                                     _%self153701159830%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method159860159865%_
                                    (##unchecked-structure-ref
                                     _%self153701159830%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method159860159865%_
                                _%object159859159864%_
                                _%size-hint159850%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170475))
                    (let ()
                      (declare (not safe))
                      (let ((_%object159866159871%_
                             (##unchecked-structure-ref
                              _%self153701159830%_
                              '1
                              '#f
                              'new))
                            (_%method159867159872%_
                             (##unchecked-structure-ref
                              _%self153701159830%_
                              '7
                              '#f
                              'new)))
                        (_%method159867159872%_
                         _%object159866159871%_
                         _%size-hint159850%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159824%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h159794%_)
        (let* ((_%h159797%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159794%_)))
               (_%h159799%_ _%h159797%_))
          (__hash-new _%h159799%_))))
    (define __hash-clear!
      (lambda (_%h159749%_)
        (let* ((_%h159752%_ _%h159749%_)
               (_%self152480159761%_ _%h159752%_)
               (_%self152480159765%_ _%self152480159761%_)
               (_%self152480159767%_ _%self152480159765%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object159779159784%_
                       (##unchecked-structure-ref
                        _%self152480159767%_
                        '1
                        '#f
                        'clear!))
                      (_%method159780159785%_
                       (##unchecked-structure-ref
                        _%self152480159767%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159780159785%_ _%object159779159784%_)))
              (let ()
                (declare (not safe))
                (let ((_%object159786159791%_
                       (##unchecked-structure-ref
                        _%self152480159767%_
                        '1
                        '#f
                        'clear!))
                      (_%method159787159792%_
                       (##unchecked-structure-ref
                        _%self152480159767%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159787159792%_ _%object159786159791%_)))))))
    (define hash-clear!
      (lambda (_%h159734%_)
        (let* ((_%h159737%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159734%_)))
               (_%h159739%_ _%h159737%_))
          (__hash-clear! _%h159739%_))))
    (define __hash-merge
      (lambda (_%h159686%_ . _%rest159687%_)
        (let* ((_%h159690%_ _%h159686%_)
               (_%copy159732%_
                (let* ((_%self152725159699%_ _%h159690%_)
                       (_%self152725159703%_ _%self152725159699%_)
                       (_%self152725159705%_ _%self152725159703%_))
                  (if __DEBUG
                      (let ((__tmp170476
                             (let ()
                               (declare (not safe))
                               (let ((_%object159717159722%_
                                      (##unchecked-structure-ref
                                       _%self152725159705%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159718159723%_
                                      (##unchecked-structure-ref
                                       _%self152725159705%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159718159723%_
                                  _%object159717159722%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170476))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159724159729%_
                               (##unchecked-structure-ref
                                _%self152725159705%_
                                '1
                                '#f
                                'copy))
                              (_%method159725159730%_
                               (##unchecked-structure-ref
                                _%self152725159705%_
                                '3
                                '#f
                                'copy)))
                          (_%method159725159730%_ _%object159724159729%_)))))))
          (apply hash-merge! _%copy159732%_ _%rest159687%_)
          _%copy159732%_)))
    (define hash-merge
      (lambda (_%h159670%_ . _%rest159671%_)
        (let* ((_%h159674%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159670%_)))
               (_%h159676%_ _%h159674%_))
          (declare (not safe))
          (##apply __hash-merge _%h159676%_ _%rest159671%_))))
    (define __hash-merge-right
      (lambda (_%h159622%_ . _%rest159623%_)
        (let* ((_%h159626%_ _%h159622%_)
               (_%copy159668%_
                (let* ((_%self152725159635%_ _%h159626%_)
                       (_%self152725159639%_ _%self152725159635%_)
                       (_%self152725159641%_ _%self152725159639%_))
                  (if __DEBUG
                      (let ((__tmp170477
                             (let ()
                               (declare (not safe))
                               (let ((_%object159653159658%_
                                      (##unchecked-structure-ref
                                       _%self152725159641%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159654159659%_
                                      (##unchecked-structure-ref
                                       _%self152725159641%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159654159659%_
                                  _%object159653159658%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170477))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159660159665%_
                               (##unchecked-structure-ref
                                _%self152725159641%_
                                '1
                                '#f
                                'copy))
                              (_%method159661159666%_
                               (##unchecked-structure-ref
                                _%self152725159641%_
                                '3
                                '#f
                                'copy)))
                          (_%method159661159666%_ _%object159660159665%_)))))))
          (apply hash-merge-right! _%copy159668%_ _%rest159623%_)
          _%copy159668%_)))
    (define hash-merge-right
      (lambda (_%h159606%_ . _%rest159607%_)
        (let* ((_%h159610%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159606%_)))
               (_%h159612%_ _%h159610%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h159612%_ _%rest159607%_))))
    (define __hash-merge!
      (lambda (_%h159466%_ . _%rest159467%_)
        (let ((_%h159470%_ _%h159466%_))
          (let ((__tmp170478
                 (lambda (_%hr159479%_)
                   (let* ((_%hr159482%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159479%_)))
                          (_%hr159484%_ _%hr159482%_)
                          (_%self153213159497%_ _%hr159484%_)
                          (_%proc159566%_
                           (lambda (_%k159500%_ _%v159501%_)
                             (if (let* ((_%h159503%_ _%h159470%_)
                                        (_%k159506%_ _%k159500%_)
                                        (_%h159510%_ _%h159503%_)
                                        (_%h159512%_ _%h159510%_))
                                   (__hash-key? _%h159512%_ _%k159506%_))
                                 '#!void
                                 (let* ((_%self154189159528%_ _%h159470%_)
                                        (_%key159531%_ _%k159500%_)
                                        (_%value159534%_ _%v159501%_)
                                        (_%self154189159538%_
                                         _%self154189159528%_)
                                        (_%self154189159540%_
                                         _%self154189159538%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159551159556%_
                                                (##unchecked-structure-ref
                                                 _%self154189159540%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159552159557%_
                                                (##unchecked-structure-ref
                                                 _%self154189159540%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159552159557%_
                                            _%object159551159556%_
                                            _%key159531%_
                                            _%value159534%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159558159563%_
                                                (##unchecked-structure-ref
                                                 _%self154189159540%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159559159564%_
                                                (##unchecked-structure-ref
                                                 _%self154189159540%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159559159564%_
                                            _%object159558159563%_
                                            _%key159531%_
                                            _%value159534%_))))))))
                          (_%self153213159570%_ _%self153213159497%_)
                          (_%self153213159572%_ _%self153213159570%_)
                          (_%proc159582%_ _%proc159566%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159591159596%_
                                  (##unchecked-structure-ref
                                   _%self153213159572%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159592159597%_
                                  (##unchecked-structure-ref
                                   _%self153213159572%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159592159597%_
                              _%object159591159596%_
                              _%proc159582%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159598159603%_
                                  (##unchecked-structure-ref
                                   _%self153213159572%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159599159604%_
                                  (##unchecked-structure-ref
                                   _%self153213159572%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159599159604%_
                              _%object159598159603%_
                              _%proc159582%_))))))))
            (declare (not safe))
            (##for-each __tmp170478 _%rest159467%_))
          _%h159470%_)))
    (define hash-merge!
      (lambda (_%h159450%_ . _%rest159451%_)
        (let* ((_%h159454%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159450%_)))
               (_%h159456%_ _%h159454%_))
          (declare (not safe))
          (##apply __hash-merge! _%h159456%_ _%rest159451%_))))
    (define __hash-merge-right!
      (lambda (_%h159330%_ . _%rest159331%_)
        (let ((_%h159334%_ _%h159330%_))
          (let ((__tmp170479
                 (lambda (_%hr159343%_)
                   (let* ((_%hr159346%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159343%_)))
                          (_%hr159348%_ _%hr159346%_)
                          (_%self153213159361%_ _%hr159348%_)
                          (_%proc159410%_
                           (lambda (_%k159364%_ _%v159365%_)
                             (let* ((_%self154189159367%_ _%h159334%_)
                                    (_%key159370%_ _%k159364%_)
                                    (_%value159373%_ _%v159365%_)
                                    (_%self154189159377%_ _%self154189159367%_)
                                    (_%self154189159379%_
                                     _%self154189159377%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159395159400%_
                                            (##unchecked-structure-ref
                                             _%self154189159379%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159396159401%_
                                            (##unchecked-structure-ref
                                             _%self154189159379%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159396159401%_
                                        _%object159395159400%_
                                        _%key159370%_
                                        _%value159373%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159402159407%_
                                            (##unchecked-structure-ref
                                             _%self154189159379%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159403159408%_
                                            (##unchecked-structure-ref
                                             _%self154189159379%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159403159408%_
                                        _%object159402159407%_
                                        _%key159370%_
                                        _%value159373%_)))))))
                          (_%self153213159414%_ _%self153213159361%_)
                          (_%self153213159416%_ _%self153213159414%_)
                          (_%proc159426%_ _%proc159410%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159435159440%_
                                  (##unchecked-structure-ref
                                   _%self153213159416%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159436159441%_
                                  (##unchecked-structure-ref
                                   _%self153213159416%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159436159441%_
                              _%object159435159440%_
                              _%proc159426%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159442159447%_
                                  (##unchecked-structure-ref
                                   _%self153213159416%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159443159448%_
                                  (##unchecked-structure-ref
                                   _%self153213159416%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159443159448%_
                              _%object159442159447%_
                              _%proc159426%_))))))))
            (declare (not safe))
            (##for-each __tmp170479 _%rest159331%_))
          _%h159334%_)))
    (define hash-merge-right!
      (lambda (_%h159314%_ . _%rest159315%_)
        (let* ((_%h159318%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159314%_)))
               (_%h159320%_ _%h159318%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h159320%_ _%rest159315%_))))))
