(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1784461442)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170185 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp170185
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args168823%_
        (apply make-instance UnboundKeyError::t _%$args168823%_)))
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
      (lambda (_%where168697%_ _%message168698%_ . _%irritants168699%_)
        (let ((__tmp170186
               (let ((__obj170177
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj170177
                    _%message168698%_
                    'where:
                    _%where168697%_
                    'irritants:
                    _%irritants168699%_))
                 __obj170177)))
          (declare (not safe))
          (raise __tmp170186))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170187 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp170187
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170179
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170179
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
        __obj170179))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj168695%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168695%_))))
    (define try-HashTable
      (lambda (_%obj168693%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168693%_))))
    (define HashTable?
      (lambda (_%obj168691%_)
        (let ((__tmp170188
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168691%_ __tmp170188))))
    (define is-HashTable?
      (lambda (_%obj168688%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168688%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self152471168671%_)
        (let ((_%self152471168673%_ _%self152471168671%_))
          (declare (not safe))
          (let ((_%object168680168685%_
                 (##unchecked-structure-ref
                  _%self152471168673%_
                  '1
                  '#f
                  'clear!))
                (_%method168681168686%_
                 (##unchecked-structure-ref
                  _%self152471168673%_
                  '2
                  '#f
                  'clear!)))
            (_%method168681168686%_ _%object168680168685%_)))))
    (define ::HashTable-clear!
      (lambda (_%self152472168644%_)
        (let* ((_%self152472168646%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152472168644%_)))
               (_%self152472168648%_ _%self152472168646%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168656168661%_
                       (##unchecked-structure-ref
                        _%self152472168648%_
                        '1
                        '#f
                        'clear!))
                      (_%method168657168662%_
                       (##unchecked-structure-ref
                        _%self152472168648%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168657168662%_ _%object168656168661%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168663168668%_
                       (##unchecked-structure-ref
                        _%self152472168648%_
                        '1
                        '#f
                        'clear!))
                      (_%method168664168669%_
                       (##unchecked-structure-ref
                        _%self152472168648%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168664168669%_ _%object168663168668%_)))))))
    (define __HashTable-copy
      (lambda (_%self152716168627%_)
        (let ((_%self152716168629%_ _%self152716168627%_))
          (declare (not safe))
          (let ((_%object168636168641%_
                 (##unchecked-structure-ref _%self152716168629%_ '1 '#f 'copy))
                (_%method168637168642%_
                 (##unchecked-structure-ref
                  _%self152716168629%_
                  '3
                  '#f
                  'copy)))
            (_%method168637168642%_ _%object168636168641%_)))))
    (define ::HashTable-copy
      (lambda (_%self152717168600%_)
        (let* ((_%self152717168602%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152717168600%_)))
               (_%self152717168604%_ _%self152717168602%_))
          (if __DEBUG
              (let ((__tmp170189
                     (let ()
                       (declare (not safe))
                       (let ((_%object168612168617%_
                              (##unchecked-structure-ref
                               _%self152717168604%_
                               '1
                               '#f
                               'copy))
                             (_%method168613168618%_
                              (##unchecked-structure-ref
                               _%self152717168604%_
                               '3
                               '#f
                               'copy)))
                         (_%method168613168618%_ _%object168612168617%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170189))
              (let ()
                (declare (not safe))
                (let ((_%object168619168624%_
                       (##unchecked-structure-ref
                        _%self152717168604%_
                        '1
                        '#f
                        'copy))
                      (_%method168620168625%_
                       (##unchecked-structure-ref
                        _%self152717168604%_
                        '3
                        '#f
                        'copy)))
                  (_%method168620168625%_ _%object168619168624%_)))))))
    (define __HashTable-delete!
      (lambda (_%self152960168582%_ _%key168583%_)
        (let ((_%self152960168585%_ _%self152960168582%_))
          (declare (not safe))
          (let ((_%object168592168597%_
                 (##unchecked-structure-ref
                  _%self152960168585%_
                  '1
                  '#f
                  'delete!))
                (_%method168593168598%_
                 (##unchecked-structure-ref
                  _%self152960168585%_
                  '4
                  '#f
                  'delete!)))
            (_%method168593168598%_ _%object168592168597%_ _%key168583%_)))))
    (define ::HashTable-delete!
      (lambda (_%self152961168554%_ _%key168555%_)
        (let* ((_%self152961168557%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152961168554%_)))
               (_%self152961168559%_ _%self152961168557%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168567168572%_
                       (##unchecked-structure-ref
                        _%self152961168559%_
                        '1
                        '#f
                        'delete!))
                      (_%method168568168573%_
                       (##unchecked-structure-ref
                        _%self152961168559%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168568168573%_
                   _%object168567168572%_
                   _%key168555%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168574168579%_
                       (##unchecked-structure-ref
                        _%self152961168559%_
                        '1
                        '#f
                        'delete!))
                      (_%method168575168580%_
                       (##unchecked-structure-ref
                        _%self152961168559%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168575168580%_
                   _%object168574168579%_
                   _%key168555%_)))))))
    (define __HashTable-for-each
      (lambda (_%self153204168528%_ _%proc168529%_)
        (let* ((_%self153204168531%_ _%self153204168528%_)
               (_%proc168538%_ _%proc168529%_))
          (declare (not safe))
          (let ((_%object168546168551%_
                 (##unchecked-structure-ref
                  _%self153204168531%_
                  '1
                  '#f
                  'for-each))
                (_%method168547168552%_
                 (##unchecked-structure-ref
                  _%self153204168531%_
                  '5
                  '#f
                  'for-each)))
            (_%method168547168552%_ _%object168546168551%_ _%proc168538%_)))))
    (define ::HashTable-for-each
      (lambda (_%self153205168490%_ _%proc168491%_)
        (let* ((_%self153205168493%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153205168490%_)))
               (_%self153205168495%_ _%self153205168493%_))
          (if (procedure? _%proc168491%_)
              (let ((_%proc168504%_ _%proc168491%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168513168518%_
                             (##unchecked-structure-ref
                              _%self153205168495%_
                              '1
                              '#f
                              'for-each))
                            (_%method168514168519%_
                             (##unchecked-structure-ref
                              _%self153205168495%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168514168519%_
                         _%object168513168518%_
                         _%proc168504%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168520168525%_
                             (##unchecked-structure-ref
                              _%self153205168495%_
                              '1
                              '#f
                              'for-each))
                            (_%method168521168526%_
                             (##unchecked-structure-ref
                              _%self153205168495%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168521168526%_
                         _%object168520168525%_
                         _%proc168504%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168491%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self153448168473%_)
        (let ((_%self153448168475%_ _%self153448168473%_))
          (declare (not safe))
          (let ((_%object168482168487%_
                 (##unchecked-structure-ref
                  _%self153448168475%_
                  '1
                  '#f
                  'length))
                (_%method168483168488%_
                 (##unchecked-structure-ref
                  _%self153448168475%_
                  '6
                  '#f
                  'length)))
            (_%method168483168488%_ _%object168482168487%_)))))
    (define ::HashTable-length
      (lambda (_%self153449168443%_)
        (let* ((_%self153449168445%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153449168443%_)))
               (_%self153449168447%_ _%self153449168445%_))
          (if __DEBUG
              (let ((_%val168463%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168455168460%_
                              (##unchecked-structure-ref
                               _%self153449168447%_
                               '1
                               '#f
                               'length))
                             (_%method168456168461%_
                              (##unchecked-structure-ref
                               _%self153449168447%_
                               '6
                               '#f
                               'length)))
                         (_%method168456168461%_ _%object168455168460%_)))))
                (if (fixnum? _%val168463%_)
                    _%val168463%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val168463%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object168465168470%_
                       (##unchecked-structure-ref
                        _%self153449168447%_
                        '1
                        '#f
                        'length))
                      (_%method168466168471%_
                       (##unchecked-structure-ref
                        _%self153449168447%_
                        '6
                        '#f
                        'length)))
                  (_%method168466168471%_ _%object168465168470%_)))))))
    (define __HashTable-new__%
      (lambda (_%self153692168407%_ _%size-hint168408%_)
        (let* ((_%self153692168410%_ _%self153692168407%_)
               (_%size-hint168417%_ _%size-hint168408%_))
          (declare (not safe))
          (let ((_%object168425168430%_
                 (##unchecked-structure-ref _%self153692168410%_ '1 '#f 'new))
                (_%method168426168431%_
                 (##unchecked-structure-ref _%self153692168410%_ '7 '#f 'new)))
            (_%method168426168431%_
             _%object168425168430%_
             _%size-hint168417%_)))))
    (define __HashTable-new__0
      (lambda (_%self153692168436%_)
        (let ((_%size-hint168438%_ '#f))
          (__HashTable-new__% _%self153692168436%_ _%size-hint168438%_))))
    (define __HashTable-new
      (lambda _g170190_
        (let ((_g170191_ (let () (declare (not safe)) (##length _g170190_))))
          (cond ((let () (declare (not safe)) (##fx= _g170191_ 1))
                 (apply __HashTable-new__0 _g170190_))
                ((let () (declare (not safe)) (##fx= _g170191_ 2))
                 (apply __HashTable-new__% _g170190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g170190_))))))
    (define ::HashTable-new__%
      (lambda (_%self153693168352%_ _%size-hint168353%_)
        (let* ((_%self153693168355%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153693168352%_)))
               (_%self153693168357%_ _%self153693168355%_))
          (if (or (not _%size-hint168353%_) (fixnum? _%size-hint168353%_))
              (let ((_%size-hint168372%_ _%size-hint168353%_))
                (if __DEBUG
                    (let ((__tmp170192
                           (let ()
                             (declare (not safe))
                             (let ((_%object168381168386%_
                                    (##unchecked-structure-ref
                                     _%self153693168357%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method168382168387%_
                                    (##unchecked-structure-ref
                                     _%self153693168357%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method168382168387%_
                                _%object168381168386%_
                                _%size-hint168372%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170192))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168388168393%_
                             (##unchecked-structure-ref
                              _%self153693168357%_
                              '1
                              '#f
                              'new))
                            (_%method168389168394%_
                             (##unchecked-structure-ref
                              _%self153693168357%_
                              '7
                              '#f
                              'new)))
                        (_%method168389168394%_
                         _%object168388168393%_
                         _%size-hint168372%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint168353%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self153693168399%_)
        (let ((_%size-hint168401%_ '#f))
          (::HashTable-new__% _%self153693168399%_ _%size-hint168401%_))))
    (define ::HashTable-new
      (lambda _g170193_
        (let ((_g170194_ (let () (declare (not safe)) (##length _g170193_))))
          (cond ((let () (declare (not safe)) (##fx= _g170194_ 1))
                 (apply ::HashTable-new__0 _g170193_))
                ((let () (declare (not safe)) (##fx= _g170194_ 2))
                 (apply ::HashTable-new__% _g170193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g170193_))))))
    (define __HashTable-ref
      (lambda (_%self153936168332%_ _%key168333%_ _%default168334%_)
        (let ((_%self153936168336%_ _%self153936168332%_))
          (declare (not safe))
          (let ((_%object168343168348%_
                 (##unchecked-structure-ref _%self153936168336%_ '1 '#f 'ref))
                (_%method168344168349%_
                 (##unchecked-structure-ref _%self153936168336%_ '8 '#f 'ref)))
            (_%method168344168349%_
             _%object168343168348%_
             _%key168333%_
             _%default168334%_)))))
    (define ::HashTable-ref
      (lambda (_%self153937168303%_ _%key168304%_ _%default168305%_)
        (let* ((_%self153937168307%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153937168303%_)))
               (_%self153937168309%_ _%self153937168307%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168317168322%_
                       (##unchecked-structure-ref
                        _%self153937168309%_
                        '1
                        '#f
                        'ref))
                      (_%method168318168323%_
                       (##unchecked-structure-ref
                        _%self153937168309%_
                        '8
                        '#f
                        'ref)))
                  (_%method168318168323%_
                   _%object168317168322%_
                   _%key168304%_
                   _%default168305%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168324168329%_
                       (##unchecked-structure-ref
                        _%self153937168309%_
                        '1
                        '#f
                        'ref))
                      (_%method168325168330%_
                       (##unchecked-structure-ref
                        _%self153937168309%_
                        '8
                        '#f
                        'ref)))
                  (_%method168325168330%_
                   _%object168324168329%_
                   _%key168304%_
                   _%default168305%_)))))))
    (define __HashTable-set!
      (lambda (_%self154180168284%_ _%key168285%_ _%value168286%_)
        (let ((_%self154180168288%_ _%self154180168284%_))
          (declare (not safe))
          (let ((_%object168295168300%_
                 (##unchecked-structure-ref _%self154180168288%_ '1 '#f 'set!))
                (_%method168296168301%_
                 (##unchecked-structure-ref
                  _%self154180168288%_
                  '9
                  '#f
                  'set!)))
            (_%method168296168301%_
             _%object168295168300%_
             _%key168285%_
             _%value168286%_)))))
    (define ::HashTable-set!
      (lambda (_%self154181168255%_ _%key168256%_ _%value168257%_)
        (let* ((_%self154181168259%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154181168255%_)))
               (_%self154181168261%_ _%self154181168259%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168269168274%_
                       (##unchecked-structure-ref
                        _%self154181168261%_
                        '1
                        '#f
                        'set!))
                      (_%method168270168275%_
                       (##unchecked-structure-ref
                        _%self154181168261%_
                        '9
                        '#f
                        'set!)))
                  (_%method168270168275%_
                   _%object168269168274%_
                   _%key168256%_
                   _%value168257%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168276168281%_
                       (##unchecked-structure-ref
                        _%self154181168261%_
                        '1
                        '#f
                        'set!))
                      (_%method168277168282%_
                       (##unchecked-structure-ref
                        _%self154181168261%_
                        '9
                        '#f
                        'set!)))
                  (_%method168277168282%_
                   _%object168276168281%_
                   _%key168256%_
                   _%value168257%_)))))))
    (define __HashTable-update!
      (lambda (_%self154424168227%_
               _%key168228%_
               _%proc168229%_
               _%default168230%_)
        (let* ((_%self154424168232%_ _%self154424168227%_)
               (_%proc168239%_ _%proc168229%_))
          (declare (not safe))
          (let ((_%object168247168252%_
                 (##unchecked-structure-ref
                  _%self154424168232%_
                  '1
                  '#f
                  'update!))
                (_%method168248168253%_
                 (##unchecked-structure-ref
                  _%self154424168232%_
                  '10
                  '#f
                  'update!)))
            (_%method168248168253%_
             _%object168247168252%_
             _%key168228%_
             _%proc168239%_
             _%default168230%_)))))
    (define ::HashTable-update!
      (lambda (_%self154425168187%_
               _%key168188%_
               _%proc168189%_
               _%default168190%_)
        (let* ((_%self154425168192%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154425168187%_)))
               (_%self154425168194%_ _%self154425168192%_))
          (if (procedure? _%proc168189%_)
              (let ((_%proc168203%_ _%proc168189%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168212168217%_
                             (##unchecked-structure-ref
                              _%self154425168194%_
                              '1
                              '#f
                              'update!))
                            (_%method168213168218%_
                             (##unchecked-structure-ref
                              _%self154425168194%_
                              '10
                              '#f
                              'update!)))
                        (_%method168213168218%_
                         _%object168212168217%_
                         _%key168188%_
                         _%proc168203%_
                         _%default168190%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168219168224%_
                             (##unchecked-structure-ref
                              _%self154425168194%_
                              '1
                              '#f
                              'update!))
                            (_%method168220168225%_
                             (##unchecked-structure-ref
                              _%self154425168194%_
                              '10
                              '#f
                              'update!)))
                        (_%method168220168225%_
                         _%object168219168224%_
                         _%key168188%_
                         _%proc168203%_
                         _%default168190%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168189%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170195 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp170195
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170181
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170181
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170181))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj168185%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj168185%_))))
    (define try-Locker
      (lambda (_%obj168183%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj168183%_))))
    (define Locker?
      (lambda (_%obj168181%_)
        (let ((__tmp170196
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168181%_ __tmp170196))))
    (define is-Locker?
      (lambda (_%obj168178%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj168178%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self154668168161%_)
        (let ((_%self154668168163%_ _%self154668168161%_))
          (declare (not safe))
          (let ((_%object168170168175%_
                 (##unchecked-structure-ref
                  _%self154668168163%_
                  '1
                  '#f
                  'read-lock!))
                (_%method168171168176%_
                 (##unchecked-structure-ref
                  _%self154668168163%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method168171168176%_ _%object168170168175%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self154669168134%_)
        (let* ((_%self154669168136%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154669168134%_)))
               (_%self154669168138%_ _%self154669168136%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168146168151%_
                       (##unchecked-structure-ref
                        _%self154669168138%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168147168152%_
                       (##unchecked-structure-ref
                        _%self154669168138%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168147168152%_ _%object168146168151%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168153168158%_
                       (##unchecked-structure-ref
                        _%self154669168138%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168154168159%_
                       (##unchecked-structure-ref
                        _%self154669168138%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168154168159%_ _%object168153168158%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self154912168117%_)
        (let ((_%self154912168119%_ _%self154912168117%_))
          (declare (not safe))
          (let ((_%object168126168131%_
                 (##unchecked-structure-ref
                  _%self154912168119%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method168127168132%_
                 (##unchecked-structure-ref
                  _%self154912168119%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method168127168132%_ _%object168126168131%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self154913168090%_)
        (let* ((_%self154913168092%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154913168090%_)))
               (_%self154913168094%_ _%self154913168092%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168102168107%_
                       (##unchecked-structure-ref
                        _%self154913168094%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168103168108%_
                       (##unchecked-structure-ref
                        _%self154913168094%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168103168108%_ _%object168102168107%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168109168114%_
                       (##unchecked-structure-ref
                        _%self154913168094%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168110168115%_
                       (##unchecked-structure-ref
                        _%self154913168094%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168110168115%_ _%object168109168114%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self155156168073%_)
        (let ((_%self155156168075%_ _%self155156168073%_))
          (declare (not safe))
          (let ((_%object168082168087%_
                 (##unchecked-structure-ref
                  _%self155156168075%_
                  '1
                  '#f
                  'write-lock!))
                (_%method168083168088%_
                 (##unchecked-structure-ref
                  _%self155156168075%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method168083168088%_ _%object168082168087%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self155157168046%_)
        (let* ((_%self155157168048%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155157168046%_)))
               (_%self155157168050%_ _%self155157168048%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168058168063%_
                       (##unchecked-structure-ref
                        _%self155157168050%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168059168064%_
                       (##unchecked-structure-ref
                        _%self155157168050%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168059168064%_ _%object168058168063%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168065168070%_
                       (##unchecked-structure-ref
                        _%self155157168050%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168066168071%_
                       (##unchecked-structure-ref
                        _%self155157168050%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168066168071%_ _%object168065168070%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self155400168029%_)
        (let ((_%self155400168031%_ _%self155400168029%_))
          (declare (not safe))
          (let ((_%object168038168043%_
                 (##unchecked-structure-ref
                  _%self155400168031%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method168039168044%_
                 (##unchecked-structure-ref
                  _%self155400168031%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method168039168044%_ _%object168038168043%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self155401168002%_)
        (let* ((_%self155401168004%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155401168002%_)))
               (_%self155401168006%_ _%self155401168004%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168014168019%_
                       (##unchecked-structure-ref
                        _%self155401168006%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168015168020%_
                       (##unchecked-structure-ref
                        _%self155401168006%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168015168020%_ _%object168014168019%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168021168026%_
                       (##unchecked-structure-ref
                        _%self155401168006%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168022168027%_
                       (##unchecked-structure-ref
                        _%self155401168006%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168022168027%_ _%object168021168026%_)))))))
    (let* ((_%klass167965%_ __table::t)
           (_%id167968%_ 'HashTable::ref)
           (_%proc167971%_ raw-table-ref)
           (_%rebind?167974%_ '#f)
           (_%id167979%_ _%id167968%_)
           (_%proc167992%_ _%proc167971%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167965%_
       _%id167979%_
       _%proc167992%_
       _%rebind?167974%_))
    (let* ((_%klass167928%_ __table::t)
           (_%id167931%_ 'HashTable::set!)
           (_%proc167934%_ raw-table-set!)
           (_%rebind?167937%_ '#f)
           (_%id167942%_ _%id167931%_)
           (_%proc167955%_ _%proc167934%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167928%_
       _%id167942%_
       _%proc167955%_
       _%rebind?167937%_))
    (let* ((_%klass167891%_ __table::t)
           (_%id167894%_ 'HashTable::update!)
           (_%proc167897%_ raw-table-update!)
           (_%rebind?167900%_ '#f)
           (_%id167905%_ _%id167894%_)
           (_%proc167918%_ _%proc167897%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167891%_
       _%id167905%_
       _%proc167918%_
       _%rebind?167900%_))
    (let* ((_%klass167854%_ __table::t)
           (_%id167857%_ 'HashTable::delete!)
           (_%proc167860%_ raw-table-delete!)
           (_%rebind?167863%_ '#f)
           (_%id167868%_ _%id167857%_)
           (_%proc167881%_ _%proc167860%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167854%_
       _%id167868%_
       _%proc167881%_
       _%rebind?167863%_))
    (let* ((_%klass167817%_ __table::t)
           (_%id167820%_ 'HashTable::for-each)
           (_%proc167823%_ raw-table-for-each)
           (_%rebind?167826%_ '#f)
           (_%id167831%_ _%id167820%_)
           (_%proc167844%_ _%proc167823%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167817%_
       _%id167831%_
       _%proc167844%_
       _%rebind?167826%_))
    (let* ((_%klass167780%_ __table::t)
           (_%id167783%_ 'HashTable::length)
           (_%proc167786%_ &raw-table-count)
           (_%rebind?167789%_ '#f)
           (_%id167794%_ _%id167783%_)
           (_%proc167807%_ _%proc167786%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167780%_
       _%id167794%_
       _%proc167807%_
       _%rebind?167789%_))
    (let* ((_%klass167728%_ __table::t)
           (_%id167731%_ 'HashTable::copy)
           (_%proc167751%_
            (let* ((_%proc167734%_ raw-table-copy)
                   (_%proc167739%_ _%proc167734%_))
              (__wrap-hash _%proc167739%_)))
           (_%rebind?167754%_ '#f)
           (_%id167759%_ _%id167731%_))
      (if (procedure? _%proc167751%_)
          (let ((_%proc167770%_ _%proc167751%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167728%_
             _%id167759%_
             _%proc167770%_
             _%rebind?167754%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167751%_)
            '#!void)))
    (let* ((_%klass167676%_ __table::t)
           (_%id167679%_ 'HashTable::new)
           (_%proc167699%_
            (let* ((_%proc167682%_ raw-table-new)
                   (_%proc167687%_ _%proc167682%_))
              (__wrap-hash _%proc167687%_)))
           (_%rebind?167702%_ '#f)
           (_%id167707%_ _%id167679%_))
      (if (procedure? _%proc167699%_)
          (let ((_%proc167718%_ _%proc167699%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167676%_
             _%id167707%_
             _%proc167718%_
             _%rebind?167702%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167699%_)
            '#!void)))
    (let* ((_%klass167639%_ __table::t)
           (_%id167642%_ 'HashTable::clear!)
           (_%proc167645%_ raw-table-clear!)
           (_%rebind?167648%_ '#f)
           (_%id167653%_ _%id167642%_)
           (_%proc167666%_ _%proc167645%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167639%_
       _%id167653%_
       _%proc167666%_
       _%rebind?167648%_))
    (let* ((_%klass167602%_ __gc-table::t)
           (_%id167605%_ 'HashTable::ref)
           (_%proc167608%_ gc-table-ref)
           (_%rebind?167611%_ '#f)
           (_%id167616%_ _%id167605%_)
           (_%proc167629%_ _%proc167608%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167602%_
       _%id167616%_
       _%proc167629%_
       _%rebind?167611%_))
    (let* ((_%klass167565%_ __gc-table::t)
           (_%id167568%_ 'HashTable::set!)
           (_%proc167571%_ gc-table-set!)
           (_%rebind?167574%_ '#f)
           (_%id167579%_ _%id167568%_)
           (_%proc167592%_ _%proc167571%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167565%_
       _%id167579%_
       _%proc167592%_
       _%rebind?167574%_))
    (let* ((_%klass167528%_ __gc-table::t)
           (_%id167531%_ 'HashTable::update!)
           (_%proc167534%_ gc-table-update!)
           (_%rebind?167537%_ '#f)
           (_%id167542%_ _%id167531%_)
           (_%proc167555%_ _%proc167534%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167528%_
       _%id167542%_
       _%proc167555%_
       _%rebind?167537%_))
    (let* ((_%klass167491%_ __gc-table::t)
           (_%id167494%_ 'HashTable::delete!)
           (_%proc167497%_ gc-table-delete!)
           (_%rebind?167500%_ '#f)
           (_%id167505%_ _%id167494%_)
           (_%proc167518%_ _%proc167497%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167491%_
       _%id167505%_
       _%proc167518%_
       _%rebind?167500%_))
    (let* ((_%klass167454%_ __gc-table::t)
           (_%id167457%_ 'HashTable::for-each)
           (_%proc167460%_ gc-table-for-each)
           (_%rebind?167463%_ '#f)
           (_%id167468%_ _%id167457%_)
           (_%proc167481%_ _%proc167460%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167454%_
       _%id167468%_
       _%proc167481%_
       _%rebind?167463%_))
    (let* ((_%klass167417%_ __gc-table::t)
           (_%id167420%_ 'HashTable::length)
           (_%proc167423%_ gc-table-length)
           (_%rebind?167426%_ '#f)
           (_%id167431%_ _%id167420%_)
           (_%proc167444%_ _%proc167423%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167417%_
       _%id167431%_
       _%proc167444%_
       _%rebind?167426%_))
    (let* ((_%klass167365%_ __gc-table::t)
           (_%id167368%_ 'HashTable::copy)
           (_%proc167388%_
            (let* ((_%proc167371%_ gc-table-copy)
                   (_%proc167376%_ _%proc167371%_))
              (__wrap-hash _%proc167376%_)))
           (_%rebind?167391%_ '#f)
           (_%id167396%_ _%id167368%_))
      (if (procedure? _%proc167388%_)
          (let ((_%proc167407%_ _%proc167388%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167365%_
             _%id167396%_
             _%proc167407%_
             _%rebind?167391%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167388%_)
            '#!void)))
    (let* ((_%klass167313%_ __gc-table::t)
           (_%id167316%_ 'HashTable::new)
           (_%proc167336%_
            (let* ((_%proc167319%_ gc-table-new)
                   (_%proc167324%_ _%proc167319%_))
              (__wrap-hash _%proc167324%_)))
           (_%rebind?167339%_ '#f)
           (_%id167344%_ _%id167316%_))
      (if (procedure? _%proc167336%_)
          (let ((_%proc167355%_ _%proc167336%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167313%_
             _%id167344%_
             _%proc167355%_
             _%rebind?167339%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167336%_)
            '#!void)))
    (let* ((_%klass167276%_ __gc-table::t)
           (_%id167279%_ 'HashTable::clear!)
           (_%proc167282%_ gc-table-clear!)
           (_%rebind?167285%_ '#f)
           (_%id167290%_ _%id167279%_)
           (_%proc167303%_ _%proc167282%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167276%_
       _%id167290%_
       _%proc167303%_
       _%rebind?167285%_))
    (define gambit-table-update!
      (lambda (_%table167269%_
               _%key167270%_
               _%update167271%_
               _%default167272%_)
        (let ((_%result167274%_
               (table-ref _%table167269%_ _%key167270%_ _%default167272%_)))
          (table-set!
           _%table167269%_
           _%key167270%_
           (_%update167271%_ _%result167274%_)))))
    (define gambit-table-for-each
      (lambda (_%table167266%_ _%proc167267%_)
        (table-for-each _%proc167267%_ _%table167266%_)))
    (define gambit-table-clear!
      (lambda (_%table167264%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table167264%_ '0 '5 '#f '#f))))
    (let* ((_%klass167227%_ (macro-type-table))
           (_%id167230%_ 'HashTable::ref)
           (_%proc167233%_ table-ref)
           (_%rebind?167236%_ '#f)
           (_%id167241%_ _%id167230%_)
           (_%proc167254%_ _%proc167233%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167227%_
       _%id167241%_
       _%proc167254%_
       _%rebind?167236%_))
    (let* ((_%klass167190%_ (macro-type-table))
           (_%id167193%_ 'HashTable::set!)
           (_%proc167196%_ table-set!)
           (_%rebind?167199%_ '#f)
           (_%id167204%_ _%id167193%_)
           (_%proc167217%_ _%proc167196%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167190%_
       _%id167204%_
       _%proc167217%_
       _%rebind?167199%_))
    (let* ((_%klass167153%_ (macro-type-table))
           (_%id167156%_ 'HashTable::update!)
           (_%proc167159%_ gambit-table-update!)
           (_%rebind?167162%_ '#f)
           (_%id167167%_ _%id167156%_)
           (_%proc167180%_ _%proc167159%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167153%_
       _%id167167%_
       _%proc167180%_
       _%rebind?167162%_))
    (let* ((_%klass167116%_ (macro-type-table))
           (_%id167119%_ 'HashTable::delete!)
           (_%proc167122%_ table-set!)
           (_%rebind?167125%_ '#f)
           (_%id167130%_ _%id167119%_)
           (_%proc167143%_ _%proc167122%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167116%_
       _%id167130%_
       _%proc167143%_
       _%rebind?167125%_))
    (let* ((_%klass167079%_ (macro-type-table))
           (_%id167082%_ 'HashTable::for-each)
           (_%proc167085%_ gambit-table-for-each)
           (_%rebind?167088%_ '#f)
           (_%id167093%_ _%id167082%_)
           (_%proc167106%_ _%proc167085%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167079%_
       _%id167093%_
       _%proc167106%_
       _%rebind?167088%_))
    (let* ((_%klass167042%_ (macro-type-table))
           (_%id167045%_ 'HashTable::length)
           (_%proc167048%_ table-length)
           (_%rebind?167051%_ '#f)
           (_%id167056%_ _%id167045%_)
           (_%proc167069%_ _%proc167048%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167042%_
       _%id167056%_
       _%proc167069%_
       _%rebind?167051%_))
    (let* ((_%klass166990%_ (macro-type-table))
           (_%id166993%_ 'HashTable::copy)
           (_%proc167013%_
            (let* ((_%proc166996%_ table-copy) (_%proc167001%_ _%proc166996%_))
              (__wrap-hash _%proc167001%_)))
           (_%rebind?167016%_ '#f)
           (_%id167021%_ _%id166993%_))
      (if (procedure? _%proc167013%_)
          (let ((_%proc167032%_ _%proc167013%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166990%_
             _%id167021%_
             _%proc167032%_
             _%rebind?167016%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167013%_)
            '#!void)))
    (let* ((_%klass166938%_ (macro-type-table))
           (_%id166941%_ 'HashTable::new)
           (_%proc166961%_
            (let* ((_%proc166944%_ table-new) (_%proc166949%_ _%proc166944%_))
              (__wrap-hash _%proc166949%_)))
           (_%rebind?166964%_ '#f)
           (_%id166969%_ _%id166941%_))
      (if (procedure? _%proc166961%_)
          (let ((_%proc166980%_ _%proc166961%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166938%_
             _%id166969%_
             _%proc166980%_
             _%rebind?166964%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166961%_)
            '#!void)))
    (let* ((_%klass166901%_ (macro-type-table))
           (_%id166904%_ 'HashTable::clear!)
           (_%proc166907%_ gambit-table-clear!)
           (_%rebind?166910%_ '#f)
           (_%id166915%_ _%id166904%_)
           (_%proc166928%_ _%proc166907%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166901%_
       _%id166915%_
       _%proc166928%_
       _%rebind?166910%_))
    (define hash-table::t
      (let* ((_%slots166864%_ '(table count free hash test seed lock))
             (_%slot-vector166866%_ (list->vector (cons '#f _%slots166864%_)))
             (_%slot-table166892%_
              (let ((_%slot-table166868%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170199
                       (lambda (_%slot166870%_ _%field166871%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166868%_
                            _%slot166870%_
                            _%field166871%_))
                         (let ((__tmp170200
                                (let ((_%sym166873%_ _%slot166870%_))
                                  (if (symbol? _%sym166873%_)
                                      (let ((_%sym166878%_ _%sym166873%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166878%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166873%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166868%_
                            __tmp170200
                            _%field166871%_))))
                      (__tmp170197
                       (let ((__tmp170198
                              (let ()
                                (declare (not safe))
                                (##length _%slots166864%_))))
                         (declare (not safe))
                         (##iota __tmp170198 '1))))
                  (declare (not safe))
                  (##for-each __tmp170199 _%slots166864%_ __tmp170197))
                _%slot-table166868%_))
             (_%flags166894%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166896%_ '#())
             (_%properties166898%_
              (cons (cons 'direct-slots: _%slots166864%_) '((struct: . #t))))
             (__tmp170201 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags166894%_
         __table::t
         _%fields166896%_
         __tmp170201
         _%slot-vector166866%_
         _%slot-table166892%_
         _%properties166898%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots166827%_ '(gcht immediate))
             (_%slot-vector166829%_ (list->vector (cons '#f _%slots166827%_)))
             (_%slot-table166855%_
              (let ((_%slot-table166831%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170204
                       (lambda (_%slot166833%_ _%field166834%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166831%_
                            _%slot166833%_
                            _%field166834%_))
                         (let ((__tmp170205
                                (let ((_%sym166836%_ _%slot166833%_))
                                  (if (symbol? _%sym166836%_)
                                      (let ((_%sym166841%_ _%sym166836%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166841%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166836%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166831%_
                            __tmp170205
                            _%field166834%_))))
                      (__tmp170202
                       (let ((__tmp170203
                              (let ()
                                (declare (not safe))
                                (##length _%slots166827%_))))
                         (declare (not safe))
                         (##iota __tmp170203 '1))))
                  (declare (not safe))
                  (##for-each __tmp170204 _%slots166827%_ __tmp170202))
                _%slot-table166831%_))
             (_%flags166857%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166859%_ '#())
             (_%properties166861%_
              (cons (cons 'direct-slots: _%slots166827%_) '((struct: . #t))))
             (__tmp170206 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags166857%_
         __gc-table::t
         _%fields166859%_
         __tmp170206
         _%slot-vector166829%_
         _%slot-table166855%_
         _%properties166861%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170208 (list))
            (__tmp170207
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp170208
         '(table lock)
         __tmp170207
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args166824%_
        (apply make-instance locked-hash-table::t _%$args166824%_)))
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
      (let ((__tmp170210 (list))
            (__tmp170209
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp170210
         '(table key-check)
         __tmp170209
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args166821%_
        (apply make-instance checked-hash-table::t _%$args166821%_)))
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
      (let ((__tmp170212 (list hash-table::t))
            (__tmp170211 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp170212
         '()
         __tmp170211
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args166818%_
        (apply make-instance eq-hash-table::t _%$args166818%_)))
    (define eqv-hash-table::t
      (let ((__tmp170214 (list hash-table::t))
            (__tmp170213 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp170214
         '()
         __tmp170213
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args166815%_
        (apply make-instance eqv-hash-table::t _%$args166815%_)))
    (define symbol-hash-table::t
      (let ((__tmp170216 (list hash-table::t))
            (__tmp170215 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp170216
         '()
         __tmp170215
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args166812%_
        (apply make-instance symbol-hash-table::t _%$args166812%_)))
    (define string-hash-table::t
      (let ((__tmp170218 (list hash-table::t))
            (__tmp170217 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp170218
         '()
         __tmp170217
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args166809%_
        (apply make-instance string-hash-table::t _%$args166809%_)))
    (define immediate-hash-table::t
      (let ((__tmp170220 (list hash-table::t))
            (__tmp170219 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp170220
         '()
         __tmp170219
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args166806%_
        (apply make-instance immediate-hash-table::t _%$args166806%_)))
    (define __wrap-hash
      (lambda (_%proc166792%_)
        (let ((_%proc166795%_ _%proc166792%_))
          (lambda (_%self166804%_)
            (let ((__tmp170221
                   (let ()
                     (declare (not safe))
                     (_%proc166795%_ _%self166804%_))))
              (declare (not safe))
              (cast HashTable::interface __tmp170221))))))
    (define wrap-hash
      (lambda (_%proc166778%_)
        (if (procedure? _%proc166778%_)
            (let ((_%proc166782%_ _%proc166778%_))
              (__wrap-hash _%proc166782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@200.18-200.22"
               'contract:
               'procedure?
               'value:
               _%proc166778%_)
              '#!void))))
    (let* ((_%klass166741%_ hash-table::t)
           (_%id166744%_ 'HashTable::ref)
           (_%proc166747%_ raw-table-ref)
           (_%rebind?166750%_ '#f)
           (_%id166755%_ _%id166744%_)
           (_%proc166768%_ _%proc166747%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166741%_
       _%id166755%_
       _%proc166768%_
       _%rebind?166750%_))
    (let* ((_%klass166704%_ hash-table::t)
           (_%id166707%_ 'HashTable::set!)
           (_%proc166710%_ raw-table-set!)
           (_%rebind?166713%_ '#f)
           (_%id166718%_ _%id166707%_)
           (_%proc166731%_ _%proc166710%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166704%_
       _%id166718%_
       _%proc166731%_
       _%rebind?166713%_))
    (let* ((_%klass166667%_ hash-table::t)
           (_%id166670%_ 'HashTable::update!)
           (_%proc166673%_ raw-table-update!)
           (_%rebind?166676%_ '#f)
           (_%id166681%_ _%id166670%_)
           (_%proc166694%_ _%proc166673%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166667%_
       _%id166681%_
       _%proc166694%_
       _%rebind?166676%_))
    (let* ((_%klass166630%_ hash-table::t)
           (_%id166633%_ 'HashTable::delete!)
           (_%proc166636%_ raw-table-delete!)
           (_%rebind?166639%_ '#f)
           (_%id166644%_ _%id166633%_)
           (_%proc166657%_ _%proc166636%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166630%_
       _%id166644%_
       _%proc166657%_
       _%rebind?166639%_))
    (let* ((_%klass166593%_ hash-table::t)
           (_%id166596%_ 'HashTable::for-each)
           (_%proc166599%_ raw-table-for-each)
           (_%rebind?166602%_ '#f)
           (_%id166607%_ _%id166596%_)
           (_%proc166620%_ _%proc166599%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166593%_
       _%id166607%_
       _%proc166620%_
       _%rebind?166602%_))
    (let* ((_%klass166556%_ hash-table::t)
           (_%id166559%_ 'HashTable::length)
           (_%proc166562%_ &raw-table-count)
           (_%rebind?166565%_ '#f)
           (_%id166570%_ _%id166559%_)
           (_%proc166583%_ _%proc166562%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166556%_
       _%id166570%_
       _%proc166583%_
       _%rebind?166565%_))
    (let* ((_%klass166504%_ hash-table::t)
           (_%id166507%_ 'HashTable::copy)
           (_%proc166527%_
            (let* ((_%proc166510%_ raw-table-copy)
                   (_%proc166515%_ _%proc166510%_))
              (__wrap-hash _%proc166515%_)))
           (_%rebind?166530%_ '#f)
           (_%id166535%_ _%id166507%_))
      (if (procedure? _%proc166527%_)
          (let ((_%proc166546%_ _%proc166527%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166504%_
             _%id166535%_
             _%proc166546%_
             _%rebind?166530%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166527%_)
            '#!void)))
    (let* ((_%klass166452%_ hash-table::t)
           (_%id166455%_ 'HashTable::new)
           (_%proc166475%_
            (let* ((_%proc166458%_ raw-table-new)
                   (_%proc166463%_ _%proc166458%_))
              (__wrap-hash _%proc166463%_)))
           (_%rebind?166478%_ '#f)
           (_%id166483%_ _%id166455%_))
      (if (procedure? _%proc166475%_)
          (let ((_%proc166494%_ _%proc166475%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166452%_
             _%id166483%_
             _%proc166494%_
             _%rebind?166478%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166475%_)
            '#!void)))
    (let* ((_%klass166415%_ hash-table::t)
           (_%id166418%_ 'HashTable::clear!)
           (_%proc166421%_ raw-table-clear!)
           (_%rebind?166424%_ '#f)
           (_%id166429%_ _%id166418%_)
           (_%proc166442%_ _%proc166421%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166415%_
       _%id166429%_
       _%proc166442%_
       _%rebind?166424%_))
    (let* ((_%klass166378%_ eq-hash-table::t)
           (_%id166381%_ 'HashTable::ref)
           (_%proc166384%_ eq-table-ref)
           (_%rebind?166387%_ '#f)
           (_%id166392%_ _%id166381%_)
           (_%proc166405%_ _%proc166384%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166378%_
       _%id166392%_
       _%proc166405%_
       _%rebind?166387%_))
    (let* ((_%klass166341%_ eq-hash-table::t)
           (_%id166344%_ 'HashTable::set!)
           (_%proc166347%_ eq-table-set!)
           (_%rebind?166350%_ '#f)
           (_%id166355%_ _%id166344%_)
           (_%proc166368%_ _%proc166347%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166341%_
       _%id166355%_
       _%proc166368%_
       _%rebind?166350%_))
    (let* ((_%klass166304%_ eq-hash-table::t)
           (_%id166307%_ 'HashTable::update!)
           (_%proc166310%_ eq-table-update!)
           (_%rebind?166313%_ '#f)
           (_%id166318%_ _%id166307%_)
           (_%proc166331%_ _%proc166310%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166304%_
       _%id166318%_
       _%proc166331%_
       _%rebind?166313%_))
    (let* ((_%klass166267%_ eq-hash-table::t)
           (_%id166270%_ 'HashTable::delete!)
           (_%proc166273%_ eq-table-delete!)
           (_%rebind?166276%_ '#f)
           (_%id166281%_ _%id166270%_)
           (_%proc166294%_ _%proc166273%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166267%_
       _%id166281%_
       _%proc166294%_
       _%rebind?166276%_))
    (let* ((_%klass166230%_ eqv-hash-table::t)
           (_%id166233%_ 'HashTable::ref)
           (_%proc166236%_ eqv-table-ref)
           (_%rebind?166239%_ '#f)
           (_%id166244%_ _%id166233%_)
           (_%proc166257%_ _%proc166236%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166230%_
       _%id166244%_
       _%proc166257%_
       _%rebind?166239%_))
    (let* ((_%klass166193%_ eqv-hash-table::t)
           (_%id166196%_ 'HashTable::set!)
           (_%proc166199%_ eqv-table-set!)
           (_%rebind?166202%_ '#f)
           (_%id166207%_ _%id166196%_)
           (_%proc166220%_ _%proc166199%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166193%_
       _%id166207%_
       _%proc166220%_
       _%rebind?166202%_))
    (let* ((_%klass166156%_ eqv-hash-table::t)
           (_%id166159%_ 'HashTable::update!)
           (_%proc166162%_ eqv-table-update!)
           (_%rebind?166165%_ '#f)
           (_%id166170%_ _%id166159%_)
           (_%proc166183%_ _%proc166162%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166156%_
       _%id166170%_
       _%proc166183%_
       _%rebind?166165%_))
    (let* ((_%klass166119%_ eqv-hash-table::t)
           (_%id166122%_ 'HashTable::delete!)
           (_%proc166125%_ eqv-table-delete!)
           (_%rebind?166128%_ '#f)
           (_%id166133%_ _%id166122%_)
           (_%proc166146%_ _%proc166125%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166119%_
       _%id166133%_
       _%proc166146%_
       _%rebind?166128%_))
    (let* ((_%klass166082%_ symbol-hash-table::t)
           (_%id166085%_ 'HashTable::ref)
           (_%proc166088%_ symbolic-table-ref)
           (_%rebind?166091%_ '#f)
           (_%id166096%_ _%id166085%_)
           (_%proc166109%_ _%proc166088%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166082%_
       _%id166096%_
       _%proc166109%_
       _%rebind?166091%_))
    (let* ((_%klass166045%_ symbol-hash-table::t)
           (_%id166048%_ 'HashTable::set!)
           (_%proc166051%_ symbolic-table-set!)
           (_%rebind?166054%_ '#f)
           (_%id166059%_ _%id166048%_)
           (_%proc166072%_ _%proc166051%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166045%_
       _%id166059%_
       _%proc166072%_
       _%rebind?166054%_))
    (let* ((_%klass166008%_ symbol-hash-table::t)
           (_%id166011%_ 'HashTable::update!)
           (_%proc166014%_ symbolic-table-update!)
           (_%rebind?166017%_ '#f)
           (_%id166022%_ _%id166011%_)
           (_%proc166035%_ _%proc166014%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166008%_
       _%id166022%_
       _%proc166035%_
       _%rebind?166017%_))
    (let* ((_%klass165971%_ symbol-hash-table::t)
           (_%id165974%_ 'HashTable::delete!)
           (_%proc165977%_ symbolic-table-delete!)
           (_%rebind?165980%_ '#f)
           (_%id165985%_ _%id165974%_)
           (_%proc165998%_ _%proc165977%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165971%_
       _%id165985%_
       _%proc165998%_
       _%rebind?165980%_))
    (let* ((_%klass165934%_ string-hash-table::t)
           (_%id165937%_ 'HashTable::ref)
           (_%proc165940%_ string-table-ref)
           (_%rebind?165943%_ '#f)
           (_%id165948%_ _%id165937%_)
           (_%proc165961%_ _%proc165940%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165934%_
       _%id165948%_
       _%proc165961%_
       _%rebind?165943%_))
    (let* ((_%klass165897%_ string-hash-table::t)
           (_%id165900%_ 'HashTable::set!)
           (_%proc165903%_ string-table-set!)
           (_%rebind?165906%_ '#f)
           (_%id165911%_ _%id165900%_)
           (_%proc165924%_ _%proc165903%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165897%_
       _%id165911%_
       _%proc165924%_
       _%rebind?165906%_))
    (let* ((_%klass165860%_ string-hash-table::t)
           (_%id165863%_ 'HashTable::update!)
           (_%proc165866%_ string-table-update!)
           (_%rebind?165869%_ '#f)
           (_%id165874%_ _%id165863%_)
           (_%proc165887%_ _%proc165866%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165860%_
       _%id165874%_
       _%proc165887%_
       _%rebind?165869%_))
    (let* ((_%klass165823%_ string-hash-table::t)
           (_%id165826%_ 'HashTable::delete!)
           (_%proc165829%_ string-table-delete!)
           (_%rebind?165832%_ '#f)
           (_%id165837%_ _%id165826%_)
           (_%proc165850%_ _%proc165829%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165823%_
       _%id165837%_
       _%proc165850%_
       _%rebind?165832%_))
    (let* ((_%klass165786%_ immediate-hash-table::t)
           (_%id165789%_ 'HashTable::ref)
           (_%proc165792%_ immediate-table-ref)
           (_%rebind?165795%_ '#f)
           (_%id165800%_ _%id165789%_)
           (_%proc165813%_ _%proc165792%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165786%_
       _%id165800%_
       _%proc165813%_
       _%rebind?165795%_))
    (let* ((_%klass165749%_ immediate-hash-table::t)
           (_%id165752%_ 'HashTable::set!)
           (_%proc165755%_ immediate-table-set!)
           (_%rebind?165758%_ '#f)
           (_%id165763%_ _%id165752%_)
           (_%proc165776%_ _%proc165755%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165749%_
       _%id165763%_
       _%proc165776%_
       _%rebind?165758%_))
    (let* ((_%klass165712%_ immediate-hash-table::t)
           (_%id165715%_ 'HashTable::update!)
           (_%proc165718%_ immediate-table-update!)
           (_%rebind?165721%_ '#f)
           (_%id165726%_ _%id165715%_)
           (_%proc165739%_ _%proc165718%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165712%_
       _%id165726%_
       _%proc165739%_
       _%rebind?165721%_))
    (let* ((_%klass165675%_ immediate-hash-table::t)
           (_%id165678%_ 'HashTable::delete!)
           (_%proc165681%_ immediate-table-delete!)
           (_%rebind?165684%_ '#f)
           (_%id165689%_ _%id165678%_)
           (_%proc165702%_ _%proc165681%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165675%_
       _%id165689%_
       _%proc165702%_
       _%rebind?165684%_))
    (let* ((_%klass165638%_ gc-hash-table::t)
           (_%id165641%_ 'HashTable::ref)
           (_%proc165644%_ gc-table-ref)
           (_%rebind?165647%_ '#f)
           (_%id165652%_ _%id165641%_)
           (_%proc165665%_ _%proc165644%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165638%_
       _%id165652%_
       _%proc165665%_
       _%rebind?165647%_))
    (let* ((_%klass165601%_ gc-hash-table::t)
           (_%id165604%_ 'HashTable::set!)
           (_%proc165607%_ gc-table-set!)
           (_%rebind?165610%_ '#f)
           (_%id165615%_ _%id165604%_)
           (_%proc165628%_ _%proc165607%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165601%_
       _%id165615%_
       _%proc165628%_
       _%rebind?165610%_))
    (let* ((_%klass165564%_ gc-hash-table::t)
           (_%id165567%_ 'HashTable::update!)
           (_%proc165570%_ gc-table-update!)
           (_%rebind?165573%_ '#f)
           (_%id165578%_ _%id165567%_)
           (_%proc165591%_ _%proc165570%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165564%_
       _%id165578%_
       _%proc165591%_
       _%rebind?165573%_))
    (let* ((_%klass165527%_ gc-hash-table::t)
           (_%id165530%_ 'HashTable::delete!)
           (_%proc165533%_ gc-table-delete!)
           (_%rebind?165536%_ '#f)
           (_%id165541%_ _%id165530%_)
           (_%proc165554%_ _%proc165533%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165527%_
       _%id165541%_
       _%proc165554%_
       _%rebind?165536%_))
    (let* ((_%klass165490%_ gc-hash-table::t)
           (_%id165493%_ 'HashTable::for-each)
           (_%proc165496%_ gc-table-for-each)
           (_%rebind?165499%_ '#f)
           (_%id165504%_ _%id165493%_)
           (_%proc165517%_ _%proc165496%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165490%_
       _%id165504%_
       _%proc165517%_
       _%rebind?165499%_))
    (let* ((_%klass165453%_ gc-hash-table::t)
           (_%id165456%_ 'HashTable::length)
           (_%proc165459%_ gc-table-length)
           (_%rebind?165462%_ '#f)
           (_%id165467%_ _%id165456%_)
           (_%proc165480%_ _%proc165459%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165453%_
       _%id165467%_
       _%proc165480%_
       _%rebind?165462%_))
    (let* ((_%klass165401%_ gc-hash-table::t)
           (_%id165404%_ 'HashTable::copy)
           (_%proc165424%_
            (let* ((_%proc165407%_ gc-table-copy)
                   (_%proc165412%_ _%proc165407%_))
              (__wrap-hash _%proc165412%_)))
           (_%rebind?165427%_ '#f)
           (_%id165432%_ _%id165404%_))
      (if (procedure? _%proc165424%_)
          (let ((_%proc165443%_ _%proc165424%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165401%_
             _%id165432%_
             _%proc165443%_
             _%rebind?165427%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165424%_)
            '#!void)))
    (let* ((_%klass165349%_ gc-hash-table::t)
           (_%id165352%_ 'HashTable::new)
           (_%proc165372%_
            (let* ((_%proc165355%_ gc-table-new)
                   (_%proc165360%_ _%proc165355%_))
              (__wrap-hash _%proc165360%_)))
           (_%rebind?165375%_ '#f)
           (_%id165380%_ _%id165352%_))
      (if (procedure? _%proc165372%_)
          (let ((_%proc165391%_ _%proc165372%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165349%_
             _%id165380%_
             _%proc165391%_
             _%rebind?165375%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165372%_)
            '#!void)))
    (let* ((_%klass165312%_ gc-hash-table::t)
           (_%id165315%_ 'HashTable::clear!)
           (_%proc165318%_ gc-table-clear!)
           (_%rebind?165321%_ '#f)
           (_%id165326%_ _%id165315%_)
           (_%proc165339%_ _%proc165318%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165312%_
       _%id165326%_
       _%proc165339%_
       _%rebind?165321%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref156146%_
      (lambda (_%self165233%_ _%key165235%_ _%default165236%_)
        (let* ((_%self165239%_ _%self165233%_)
               (_%key165248%_ _%key165235%_)
               (_%default165256%_ _%default165236%_))
          (let ((_%h165265%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165239%_ '1 '#f '#f)))
                (_%l165267%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165239%_ '2 '#f '#f))))
            (let ((__tmp170224
                   (lambda ()
                     (let ((_%self154666165271%_ _%l165267%_))
                       (declare (not safe))
                       (let ((_%object165274165279%_
                              (##unchecked-structure-ref
                               _%self154666165271%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165275165280%_
                              (##unchecked-structure-ref
                               _%self154666165271%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165275165280%_ _%object165274165279%_)))))
                  (__tmp170223
                   (lambda ()
                     (let* ((_%self153934165283%_ _%h165265%_)
                            (_%key165286%_ _%key165248%_)
                            (_%default165289%_ _%default165256%_))
                       (declare (not safe))
                       (let ((_%object165292165297%_
                              (##unchecked-structure-ref
                               _%self153934165283%_
                               '1
                               '#f
                               'ref))
                             (_%method165293165298%_
                              (##unchecked-structure-ref
                               _%self153934165283%_
                               '8
                               '#f
                               'ref)))
                         (_%method165293165298%_
                          _%object165292165297%_
                          _%key165286%_
                          _%default165289%_)))))
                  (__tmp170222
                   (lambda ()
                     (let ((_%self154910165301%_ _%l165267%_))
                       (declare (not safe))
                       (let ((_%object165304165309%_
                              (##unchecked-structure-ref
                               _%self154910165301%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165305165310%_
                              (##unchecked-structure-ref
                               _%self154910165301%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165305165310%_ _%object165304165309%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170224 __tmp170223 __tmp170222))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref156146%_
       '#f))
    (define _%locked-hash-table::HashTable::set!156148%_
      (lambda (_%self165031%_ _%key165033%_ _%value165034%_)
        (let* ((_%self165037%_ _%self165031%_)
               (_%key165046%_ _%key165033%_)
               (_%value165054%_ _%value165034%_))
          (let ((_%h165063%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165037%_ '1 '#f '#f)))
                (_%l165065%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165037%_ '2 '#f '#f))))
            (let ((__tmp170227
                   (lambda ()
                     (let ((_%self155154165069%_ _%l165065%_))
                       (declare (not safe))
                       (let ((_%object165072165077%_
                              (##unchecked-structure-ref
                               _%self155154165069%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165073165078%_
                              (##unchecked-structure-ref
                               _%self155154165069%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165073165078%_ _%object165072165077%_)))))
                  (__tmp170226
                   (lambda ()
                     (let* ((_%self154178165081%_ _%h165063%_)
                            (_%key165084%_ _%key165046%_)
                            (_%value165087%_ _%value165054%_))
                       (declare (not safe))
                       (let ((_%object165090165095%_
                              (##unchecked-structure-ref
                               _%self154178165081%_
                               '1
                               '#f
                               'set!))
                             (_%method165091165096%_
                              (##unchecked-structure-ref
                               _%self154178165081%_
                               '9
                               '#f
                               'set!)))
                         (_%method165091165096%_
                          _%object165090165095%_
                          _%key165084%_
                          _%value165087%_)))))
                  (__tmp170225
                   (lambda ()
                     (let ((_%self155398165099%_ _%l165065%_))
                       (declare (not safe))
                       (let ((_%object165102165107%_
                              (##unchecked-structure-ref
                               _%self155398165099%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165103165108%_
                              (##unchecked-structure-ref
                               _%self155398165099%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165103165108%_ _%object165102165107%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170227 __tmp170226 __tmp170225))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!156148%_
       '#f))
    (define _%locked-hash-table::HashTable::update!156150%_
      (lambda (_%self164817%_ _%key164819%_ _%update164820%_ _%default164821%_)
        (let* ((_%self164824%_ _%self164817%_)
               (_%key164833%_ _%key164819%_)
               (_%update164841%_ _%update164820%_)
               (_%default164849%_ _%default164821%_))
          (let ((_%h164858%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164824%_ '1 '#f '#f)))
                (_%l164860%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164824%_ '2 '#f '#f))))
            (let ((__tmp170230
                   (lambda ()
                     (let ((_%self155154164864%_ _%l164860%_))
                       (declare (not safe))
                       (let ((_%object164867164872%_
                              (##unchecked-structure-ref
                               _%self155154164864%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164868164873%_
                              (##unchecked-structure-ref
                               _%self155154164864%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164868164873%_ _%object164867164872%_)))))
                  (__tmp170229
                   (lambda ()
                     (let* ((_%self154422164876%_ _%h164858%_)
                            (_%key164879%_ _%key164833%_)
                            (_%proc164882%_ _%update164841%_)
                            (_%default164885%_ _%default164849%_))
                       (declare (not safe))
                       (let ((_%object164888164893%_
                              (##unchecked-structure-ref
                               _%self154422164876%_
                               '1
                               '#f
                               'update!))
                             (_%method164889164894%_
                              (##unchecked-structure-ref
                               _%self154422164876%_
                               '10
                               '#f
                               'update!)))
                         (_%method164889164894%_
                          _%object164888164893%_
                          _%key164879%_
                          _%proc164882%_
                          _%default164885%_)))))
                  (__tmp170228
                   (lambda ()
                     (let ((_%self155398164897%_ _%l164860%_))
                       (declare (not safe))
                       (let ((_%object164900164905%_
                              (##unchecked-structure-ref
                               _%self155398164897%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164901164906%_
                              (##unchecked-structure-ref
                               _%self155398164897%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164901164906%_ _%object164900164905%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170230 __tmp170229 __tmp170228))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!156150%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!156152%_
      (lambda (_%self164627%_ _%key164629%_)
        (let* ((_%self164632%_ _%self164627%_) (_%key164641%_ _%key164629%_))
          (let ((_%h164650%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164632%_ '1 '#f '#f)))
                (_%l164652%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164632%_ '2 '#f '#f))))
            (let ((__tmp170233
                   (lambda ()
                     (let ((_%self155154164656%_ _%l164652%_))
                       (declare (not safe))
                       (let ((_%object164659164664%_
                              (##unchecked-structure-ref
                               _%self155154164656%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164660164665%_
                              (##unchecked-structure-ref
                               _%self155154164656%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164660164665%_ _%object164659164664%_)))))
                  (__tmp170232
                   (lambda ()
                     (let* ((_%self152958164668%_ _%h164650%_)
                            (_%key164671%_ _%key164641%_))
                       (declare (not safe))
                       (let ((_%object164674164679%_
                              (##unchecked-structure-ref
                               _%self152958164668%_
                               '1
                               '#f
                               'delete!))
                             (_%method164675164680%_
                              (##unchecked-structure-ref
                               _%self152958164668%_
                               '4
                               '#f
                               'delete!)))
                         (_%method164675164680%_
                          _%object164674164679%_
                          _%key164671%_)))))
                  (__tmp170231
                   (lambda ()
                     (let ((_%self155398164683%_ _%l164652%_))
                       (declare (not safe))
                       (let ((_%object164686164691%_
                              (##unchecked-structure-ref
                               _%self155398164683%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164687164692%_
                              (##unchecked-structure-ref
                               _%self155398164683%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164687164692%_ _%object164686164691%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170233 __tmp170232 __tmp170231))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!156152%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each156154%_
      (lambda (_%self164437%_ _%proc164439%_)
        (let* ((_%self164442%_ _%self164437%_) (_%proc164451%_ _%proc164439%_))
          (let ((_%h164460%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164442%_ '1 '#f '#f)))
                (_%l164462%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164442%_ '2 '#f '#f))))
            (let ((__tmp170236
                   (lambda ()
                     (let ((_%self154666164466%_ _%l164462%_))
                       (declare (not safe))
                       (let ((_%object164469164474%_
                              (##unchecked-structure-ref
                               _%self154666164466%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method164470164475%_
                              (##unchecked-structure-ref
                               _%self154666164466%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method164470164475%_ _%object164469164474%_)))))
                  (__tmp170235
                   (lambda ()
                     (let* ((_%self153202164478%_ _%h164460%_)
                            (_%proc164481%_ _%proc164451%_))
                       (declare (not safe))
                       (let ((_%object164484164489%_
                              (##unchecked-structure-ref
                               _%self153202164478%_
                               '1
                               '#f
                               'for-each))
                             (_%method164485164490%_
                              (##unchecked-structure-ref
                               _%self153202164478%_
                               '5
                               '#f
                               'for-each)))
                         (_%method164485164490%_
                          _%object164484164489%_
                          _%proc164481%_)))))
                  (__tmp170234
                   (lambda ()
                     (let ((_%self154910164493%_ _%l164462%_))
                       (declare (not safe))
                       (let ((_%object164496164501%_
                              (##unchecked-structure-ref
                               _%self154910164493%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method164497164502%_
                              (##unchecked-structure-ref
                               _%self154910164493%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method164497164502%_ _%object164496164501%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170236 __tmp170235 __tmp170234))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each156154%_
       '#f))
    (define _%locked-hash-table::HashTable::length156156%_
      (lambda (_%self164252%_)
        (let ((_%self164256%_ _%self164252%_))
          (let ((_%h164266%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164256%_ '1 '#f '#f)))
                (_%l164268%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164256%_ '2 '#f '#f))))
            (let* ((_%$%g164270164272%_
                    (let ((__tmp170239
                           (lambda ()
                             (let ((_%self154666164279%_ _%l164268%_))
                               (declare (not safe))
                               (let ((_%object164282164287%_
                                      (##unchecked-structure-ref
                                       _%self154666164279%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method164283164288%_
                                      (##unchecked-structure-ref
                                       _%self154666164279%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method164283164288%_
                                  _%object164282164287%_)))))
                          (__tmp170238
                           (lambda ()
                             (let ((_%self153446164291%_ _%h164266%_))
                               (declare (not safe))
                               (let ((_%object164294164299%_
                                      (##unchecked-structure-ref
                                       _%self153446164291%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method164295164300%_
                                      (##unchecked-structure-ref
                                       _%self153446164291%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method164295164300%_
                                  _%object164294164299%_)))))
                          (__tmp170237
                           (lambda ()
                             (let ((_%self154910164303%_ _%l164268%_))
                               (declare (not safe))
                               (let ((_%object164306164311%_
                                      (##unchecked-structure-ref
                                       _%self154910164303%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method164307164312%_
                                      (##unchecked-structure-ref
                                       _%self154910164303%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method164307164312%_
                                  _%object164306164311%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp170239 __tmp170238 __tmp170237)))
                   (_%val164275%_ _%$%g164270164272%_))
              (if (fixnum? _%val164275%_)
                  _%val164275%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val164275%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length156156%_
       '#f))
    (define _%locked-hash-table::HashTable::copy156158%_
      (lambda (_%self164074%_)
        (let ((_%self164078%_ _%self164074%_))
          (let ((_%h164088%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164078%_ '1 '#f '#f)))
                (_%l164090%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164078%_ '2 '#f '#f))))
            (let ((__tmp170240
                   (let ((__tmp170243
                          (lambda ()
                            (let ((_%self154666164094%_ _%l164090%_))
                              (declare (not safe))
                              (let ((_%object164097164102%_
                                     (##unchecked-structure-ref
                                      _%self154666164094%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method164098164103%_
                                     (##unchecked-structure-ref
                                      _%self154666164094%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method164098164103%_
                                 _%object164097164102%_)))))
                         (__tmp170242
                          (lambda ()
                            (let ((_%self152714164106%_ _%h164088%_))
                              (declare (not safe))
                              (let ((_%object164109164114%_
                                     (##unchecked-structure-ref
                                      _%self152714164106%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method164110164115%_
                                     (##unchecked-structure-ref
                                      _%self152714164106%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method164110164115%_
                                 _%object164109164114%_)))))
                         (__tmp170241
                          (lambda ()
                            (let ((_%self154910164118%_ _%l164090%_))
                              (declare (not safe))
                              (let ((_%object164121164126%_
                                     (##unchecked-structure-ref
                                      _%self154910164118%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method164122164127%_
                                     (##unchecked-structure-ref
                                      _%self154910164118%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method164122164127%_
                                 _%object164121164126%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170243 __tmp170242 __tmp170241))))
              (declare (not safe))
              (cast HashTable::interface __tmp170240))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy156158%_
       '#f))
    (define _%locked-hash-table::HashTable::new156160%_
      (lambda (_%self163876%_ _%size-hint163878%_)
        (let ((_%self163881%_ _%self163876%_))
          (if (or (not _%size-hint163878%_) (fixnum? _%size-hint163878%_))
              (let ((_%size-hint163897%_ _%size-hint163878%_))
                (let ((_%h163907%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163881%_
                          '1
                          '#f
                          '#f)))
                      (_%l163909%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self163881%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp170244
                         (let ((__tmp170247
                                (lambda ()
                                  (let ((_%self154666163913%_ _%l163909%_))
                                    (declare (not safe))
                                    (let ((_%object163916163921%_
                                           (##unchecked-structure-ref
                                            _%self154666163913%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method163917163922%_
                                           (##unchecked-structure-ref
                                            _%self154666163913%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method163917163922%_
                                       _%object163916163921%_)))))
                               (__tmp170246
                                (lambda ()
                                  (let* ((_%self153690163925%_ _%h163907%_)
                                         (_%size-hint163928%_
                                          _%size-hint163897%_))
                                    (declare (not safe))
                                    (let ((_%object163931163936%_
                                           (##unchecked-structure-ref
                                            _%self153690163925%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method163932163937%_
                                           (##unchecked-structure-ref
                                            _%self153690163925%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method163932163937%_
                                       _%object163931163936%_
                                       _%size-hint163928%_)))))
                               (__tmp170245
                                (lambda ()
                                  (let ((_%self154910163940%_ _%l163909%_))
                                    (declare (not safe))
                                    (let ((_%object163943163948%_
                                           (##unchecked-structure-ref
                                            _%self154910163940%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method163944163949%_
                                           (##unchecked-structure-ref
                                            _%self154910163940%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method163944163949%_
                                       _%object163943163948%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp170247
                            __tmp170246
                            __tmp170245))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp170244))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@313.29-313.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint163878%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new156160%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!156162%_
      (lambda (_%self163698%_)
        (let ((_%self163702%_ _%self163698%_))
          (let ((_%h163712%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163702%_ '1 '#f '#f)))
                (_%l163714%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163702%_ '2 '#f '#f))))
            (let ((__tmp170250
                   (lambda ()
                     (let ((_%self155154163718%_ _%l163714%_))
                       (declare (not safe))
                       (let ((_%object163721163726%_
                              (##unchecked-structure-ref
                               _%self155154163718%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method163722163727%_
                              (##unchecked-structure-ref
                               _%self155154163718%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method163722163727%_ _%object163721163726%_)))))
                  (__tmp170249
                   (lambda ()
                     (let ((_%self152469163730%_ _%h163712%_))
                       (declare (not safe))
                       (let ((_%object163733163738%_
                              (##unchecked-structure-ref
                               _%self152469163730%_
                               '1
                               '#f
                               'clear!))
                             (_%method163734163739%_
                              (##unchecked-structure-ref
                               _%self152469163730%_
                               '2
                               '#f
                               'clear!)))
                         (_%method163734163739%_ _%object163733163738%_)))))
                  (__tmp170248
                   (lambda ()
                     (let ((_%self155398163742%_ _%l163714%_))
                       (declare (not safe))
                       (let ((_%object163745163750%_
                              (##unchecked-structure-ref
                               _%self155398163742%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method163746163751%_
                              (##unchecked-structure-ref
                               _%self155398163742%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method163746163751%_ _%object163745163750%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170250 __tmp170249 __tmp170248))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!156162%_
       '#f))
    (let* ((_%klass163538%_ (macro-type-mutex))
           (_%id163541%_ 'Locker::read-lock!)
           (_%proc163544%_ mutex-lock!)
           (_%rebind?163547%_ '#f)
           (_%id163552%_ _%id163541%_)
           (_%proc163565%_ _%proc163544%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163538%_
       _%id163552%_
       _%proc163565%_
       _%rebind?163547%_))
    (let* ((_%klass163501%_ (macro-type-mutex))
           (_%id163504%_ 'Locker::read-unlock!)
           (_%proc163507%_ mutex-unlock!)
           (_%rebind?163510%_ '#f)
           (_%id163515%_ _%id163504%_)
           (_%proc163528%_ _%proc163507%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163501%_
       _%id163515%_
       _%proc163528%_
       _%rebind?163510%_))
    (let* ((_%klass163464%_ (macro-type-mutex))
           (_%id163467%_ 'Locker::write-lock!)
           (_%proc163470%_ mutex-lock!)
           (_%rebind?163473%_ '#f)
           (_%id163478%_ _%id163467%_)
           (_%proc163491%_ _%proc163470%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163464%_
       _%id163478%_
       _%proc163491%_
       _%rebind?163473%_))
    (let* ((_%klass163427%_ (macro-type-mutex))
           (_%id163430%_ 'Locker::write-unlock!)
           (_%proc163433%_ mutex-unlock!)
           (_%rebind?163436%_ '#f)
           (_%id163441%_ _%id163430%_)
           (_%proc163454%_ _%proc163433%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163427%_
       _%id163441%_
       _%proc163454%_
       _%rebind?163436%_))
    (define _%checked-hash-table::HashTable::ref156373%_
      (lambda (_%self163368%_ _%key163369%_ _%default163370%_)
        (let* ((_%self163373%_ _%self163368%_)
               (_%key163382%_ _%key163369%_)
               (_%default163390%_ _%default163370%_))
          (declare (not safe))
          (let ((_%h163401%_
                 (##unchecked-structure-ref _%self163373%_ '1 '#f '#f))
                (_%key?163403%_
                 (##unchecked-structure-ref _%self163373%_ '2 '#f '#f)))
            (if (_%key?163403%_ _%key163382%_)
                (let* ((_%self153934163410%_ _%h163401%_)
                       (_%key163413%_ _%key163382%_)
                       (_%default163416%_ _%default163390%_))
                  (declare (not safe))
                  (let ((_%object163419163424%_
                         (##unchecked-structure-ref
                          _%self153934163410%_
                          '1
                          '#f
                          'ref))
                        (_%method163420163425%_
                         (##unchecked-structure-ref
                          _%self153934163410%_
                          '8
                          '#f
                          'ref)))
                    (_%method163420163425%_
                     _%object163419163424%_
                     _%key163413%_
                     _%default163416%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key163382%_ (cons _%default163390%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref156373%_
       '#f))
    (define _%checked-hash-table::HashTable::set!156375%_
      (lambda (_%self163186%_ _%key163187%_ _%value163188%_)
        (let* ((_%self163191%_ _%self163186%_)
               (_%key163200%_ _%key163187%_)
               (_%value163208%_ _%value163188%_))
          (declare (not safe))
          (let ((_%h163219%_
                 (##unchecked-structure-ref _%self163191%_ '1 '#f '#f))
                (_%key?163221%_
                 (##unchecked-structure-ref _%self163191%_ '2 '#f '#f)))
            (if (_%key?163221%_ _%key163200%_)
                (let* ((_%self154178163228%_ _%h163219%_)
                       (_%key163231%_ _%key163200%_)
                       (_%value163234%_ _%value163208%_))
                  (declare (not safe))
                  (let ((_%object163237163242%_
                         (##unchecked-structure-ref
                          _%self154178163228%_
                          '1
                          '#f
                          'set!))
                        (_%method163238163243%_
                         (##unchecked-structure-ref
                          _%self154178163228%_
                          '9
                          '#f
                          'set!)))
                    (_%method163238163243%_
                     _%object163237163242%_
                     _%key163231%_
                     _%value163234%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key163200%_ (cons _%value163208%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!156375%_
       '#f))
    (define _%checked-hash-table::HashTable::update!156377%_
      (lambda (_%self162991%_ _%key162992%_ _%update162993%_ _%default162994%_)
        (let* ((_%self162997%_ _%self162991%_)
               (_%key163006%_ _%key162992%_)
               (_%update163014%_ _%update162993%_)
               (_%default163022%_ _%default162994%_))
          (declare (not safe))
          (let ((_%h163033%_
                 (##unchecked-structure-ref _%self162997%_ '1 '#f '#f))
                (_%key?163035%_
                 (##unchecked-structure-ref _%self162997%_ '2 '#f '#f)))
            (if (_%key?163035%_ _%key163006%_)
                (let* ((_%self154422163043%_ _%h163033%_)
                       (_%key163046%_ _%key163006%_)
                       (_%proc163049%_ _%update163014%_)
                       (_%default163052%_ _%default163022%_))
                  (declare (not safe))
                  (let ((_%object163055163060%_
                         (##unchecked-structure-ref
                          _%self154422163043%_
                          '1
                          '#f
                          'update!))
                        (_%method163056163061%_
                         (##unchecked-structure-ref
                          _%self154422163043%_
                          '10
                          '#f
                          'update!)))
                    (_%method163056163061%_
                     _%object163055163060%_
                     _%key163046%_
                     _%proc163049%_
                     _%default163052%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key163006%_
                         (cons _%update163014%_ (cons _%default163022%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!156377%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!156379%_
      (lambda (_%self162822%_ _%key162823%_)
        (let* ((_%self162826%_ _%self162822%_) (_%key162835%_ _%key162823%_))
          (declare (not safe))
          (let ((_%h162846%_
                 (##unchecked-structure-ref _%self162826%_ '1 '#f '#f))
                (_%key?162848%_
                 (##unchecked-structure-ref _%self162826%_ '2 '#f '#f)))
            (if (_%key?162848%_ _%key162835%_)
                (let* ((_%self152958162854%_ _%h162846%_)
                       (_%key162857%_ _%key162835%_))
                  (declare (not safe))
                  (let ((_%object162860162865%_
                         (##unchecked-structure-ref
                          _%self152958162854%_
                          '1
                          '#f
                          'delete!))
                        (_%method162861162866%_
                         (##unchecked-structure-ref
                          _%self152958162854%_
                          '4
                          '#f
                          'delete!)))
                    (_%method162861162866%_
                     _%object162860162865%_
                     _%key162857%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key162835%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!156379%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each156381%_
      (lambda (_%self162653%_ _%proc162654%_)
        (let* ((_%self162657%_ _%self162653%_) (_%proc162666%_ _%proc162654%_))
          (declare (not safe))
          (let ((_%h162677%_
                 (##unchecked-structure-ref _%self162657%_ '1 '#f '#f))
                (_%key?162679%_
                 (##unchecked-structure-ref _%self162657%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self153202162685%_ _%h162677%_)
                       (_%proc162688%_ _%proc162666%_))
                  (declare (not safe))
                  (let ((_%object162691162696%_
                         (##unchecked-structure-ref
                          _%self153202162685%_
                          '1
                          '#f
                          'for-each))
                        (_%method162692162697%_
                         (##unchecked-structure-ref
                          _%self153202162685%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162692162697%_
                     _%object162691162696%_
                     _%proc162688%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc162666%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each156381%_
       '#f))
    (define _%checked-hash-table::HashTable::length156383%_
      (lambda (_%self162499%_)
        (let ((_%self162502%_ _%self162499%_))
          (declare (not safe))
          (let ((_%h162514%_
                 (##unchecked-structure-ref _%self162502%_ '1 '#f '#f))
                (_%key?162516%_
                 (##unchecked-structure-ref _%self162502%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153446162519%_ _%h162514%_))
                  (declare (not safe))
                  (let ((_%object162522162527%_
                         (##unchecked-structure-ref
                          _%self153446162519%_
                          '1
                          '#f
                          'length))
                        (_%method162523162528%_
                         (##unchecked-structure-ref
                          _%self153446162519%_
                          '6
                          '#f
                          'length)))
                    (_%method162523162528%_ _%object162522162527%_)))
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
       _%checked-hash-table::HashTable::length156383%_
       '#f))
    (define _%checked-hash-table::HashTable::copy156385%_
      (lambda (_%self162345%_)
        (let ((_%self162348%_ _%self162345%_))
          (declare (not safe))
          (let ((_%h162360%_
                 (##unchecked-structure-ref _%self162348%_ '1 '#f '#f))
                (_%key?162362%_
                 (##unchecked-structure-ref _%self162348%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152714162365%_ _%h162360%_))
                  (declare (not safe))
                  (let ((_%object162368162373%_
                         (##unchecked-structure-ref
                          _%self152714162365%_
                          '1
                          '#f
                          'copy))
                        (_%method162369162374%_
                         (##unchecked-structure-ref
                          _%self152714162365%_
                          '3
                          '#f
                          'copy)))
                    (_%method162369162374%_ _%object162368162373%_)))
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
       _%checked-hash-table::HashTable::copy156385%_
       '#f))
    (define _%checked-hash-table::HashTable::new156387%_
      (lambda (_%self162171%_ _%size-hint162172%_)
        (let ((_%self162175%_ _%self162171%_))
          (if (or (not _%size-hint162172%_) (fixnum? _%size-hint162172%_))
              (let ((_%size-hint162191%_ _%size-hint162172%_))
                (declare (not safe))
                (let ((_%h162203%_
                       (##unchecked-structure-ref _%self162175%_ '1 '#f '#f))
                      (_%key?162205%_
                       (##unchecked-structure-ref _%self162175%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self153690162208%_ _%h162203%_)
                             (_%size-hint162211%_ _%size-hint162191%_))
                        (declare (not safe))
                        (let ((_%object162214162219%_
                               (##unchecked-structure-ref
                                _%self153690162208%_
                                '1
                                '#f
                                'new))
                              (_%method162215162220%_
                               (##unchecked-structure-ref
                                _%self153690162208%_
                                '7
                                '#f
                                'new)))
                          (_%method162215162220%_
                           _%object162214162219%_
                           _%size-hint162211%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint162191%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@372.35-372.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162172%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new156387%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!156389%_
      (lambda (_%self162017%_)
        (let ((_%self162020%_ _%self162017%_))
          (declare (not safe))
          (let ((_%h162032%_
                 (##unchecked-structure-ref _%self162020%_ '1 '#f '#f))
                (_%key?162034%_
                 (##unchecked-structure-ref _%self162020%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152469162037%_ _%h162032%_))
                  (declare (not safe))
                  (let ((_%object162040162045%_
                         (##unchecked-structure-ref
                          _%self152469162037%_
                          '1
                          '#f
                          'clear!))
                        (_%method162041162046%_
                         (##unchecked-structure-ref
                          _%self152469162037%_
                          '2
                          '#f
                          'clear!)))
                    (_%method162041162046%_ _%object162040162045%_)))
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
       _%checked-hash-table::HashTable::clear!156389%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table161866%_
               _%count161867%_
               _%free161868%_
               _%hash161869%_
               _%test161870%_
               _%seed161871%_
               _%lock161872%_)
        (let ((__tmp170251
               (let () (declare (not safe)) (ensure-lock _%lock161872%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table161866%_
           _%count161867%_
           _%free161868%_
           _%hash161869%_
           _%test161870%_
           _%seed161871%_
           __tmp170251))))
    (define make-generic-hash-table__0
      (lambda (_%table161877%_
               _%count161878%_
               _%free161879%_
               _%hash161880%_
               _%test161881%_
               _%seed161882%_)
        (let ((_%lock161884%_ '#f))
          (make-generic-hash-table__%
           _%table161877%_
           _%count161878%_
           _%free161879%_
           _%hash161880%_
           _%test161881%_
           _%seed161882%_
           _%lock161884%_))))
    (define make-generic-hash-table
      (lambda _g170252_
        (let ((_g170253_ (let () (declare (not safe)) (##length _g170252_))))
          (cond ((let () (declare (not safe)) (##fx= _g170253_ 6))
                 (apply make-generic-hash-table__0 _g170252_))
                ((let () (declare (not safe)) (##fx= _g170253_ 7))
                 (apply make-generic-hash-table__% _g170252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g170252_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords161293%_
               _%$%size-hint161283161294%_
               _%$%seed161284161295%_
               _%$%test161285161296%_
               _%$%hash161286161297%_
               _%$%lock161287161298%_
               _%$%check161288161299%_
               _%$%weak-keys161289161300%_
               _%$%weak-values161290161301%_)
        (let* ((_%size-hint161303%_
                (if (eq? _%$%size-hint161283161294%_ absent-value)
                    '#f
                    _%$%size-hint161283161294%_))
               (_%seed161305%_
                (if (eq? _%$%seed161284161295%_ absent-value)
                    '#f
                    _%$%seed161284161295%_))
               (_%test161307%_
                (if (eq? _%$%test161285161296%_ absent-value)
                    equal?
                    _%$%test161285161296%_))
               (_%hash161309%_
                (if (eq? _%$%hash161286161297%_ absent-value)
                    '#f
                    _%$%hash161286161297%_))
               (_%lock161311%_
                (if (eq? _%$%lock161287161298%_ absent-value)
                    '#f
                    _%$%lock161287161298%_))
               (_%check161313%_
                (if (eq? _%$%check161288161299%_ absent-value)
                    '#f
                    _%$%check161288161299%_))
               (_%weak-keys161315%_
                (if (eq? _%$%weak-keys161289161300%_ absent-value)
                    '#f
                    _%$%weak-keys161289161300%_))
               (_%weak-values161317%_
                (if (eq? _%$%weak-values161290161301%_ absent-value)
                    '#f
                    _%$%weak-values161290161301%_)))
          (letrec ((_%table-seed161320%_
                    (lambda ()
                      (if (fixnum? _%seed161305%_)
                          _%seed161305%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock161464%_
                    (lambda (_%ht161839%_)
                      (let ((_%ht161842%_ _%ht161839%_))
                        (if _%lock161311%_
                            (let ((__tmp170254
                                   (let ((__tmp170255
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock161311%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht161842%_
                                      __tmp170255))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170254))
                            _%ht161842%_))))
                   (_%wrap-lock161465%_
                    (lambda (_%ht161827%_)
                      (let ((_%ht161830%_ _%ht161827%_))
                        (_%__wrap-lock161464%_ _%ht161830%_))))
                   (_%__wrap-checked161587%_
                    (lambda (_%ht161814%_ _%implicit161815%_)
                      (let ((_%ht161818%_ _%ht161814%_))
                        (if _%check161313%_
                            (let ((__tmp170256
                                   (let ((__tmp170257
                                          (if (procedure? _%check161313%_)
                                              _%check161313%_
                                              _%implicit161815%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht161818%_
                                      __tmp170257))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170256))
                            _%ht161818%_))))
                   (_%wrap-checked161588%_
                    (lambda (_%ht161801%_ _%implicit161802%_)
                      (let ((_%ht161805%_ _%ht161801%_))
                        (_%__wrap-checked161587%_
                         _%ht161805%_
                         _%implicit161802%_))))
                   (_%make161589%_
                    (lambda (_%kons161752%_
                             _%key?161753%_
                             _%hash161754%_
                             _%test161755%_)
                      (let* ((_%size161758%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint161303%_)))
                             (_%table161760%_
                              (let ((__tmp170258 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size161758%_ __tmp170258)))
                             (_%ht161762%_
                              (let ((__tmp170259
                                     (_%kons161752%_
                                      _%table161760%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size161758%_ '2))
                                      _%hash161754%_
                                      _%test161755%_
                                      (_%table-seed161320%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170259)))
                             (_%ht161784%_
                              (let* ((_%ht161765%_ _%ht161762%_)
                                     (_%ht161769%_ _%ht161765%_))
                                (_%__wrap-lock161464%_ _%ht161769%_)))
                             (_%implicit161787%_ _%key?161753%_)
                             (_%ht161791%_ _%ht161784%_))
                        (_%__wrap-checked161587%_
                         _%ht161791%_
                         _%implicit161787%_))))
                   (_%make-gc-hash-table161590%_
                    (lambda ()
                      (let* ((_%ht161717%_
                              (let ((__tmp170260
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint161303%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170260)))
                             (_%ht161735%_
                              (let* ((_%ht161719%_ _%ht161717%_)
                                     (_%ht161723%_ _%ht161719%_))
                                (_%__wrap-lock161464%_ _%ht161723%_)))
                             (_%implicit161738%_ true)
                             (_%ht161742%_ _%ht161735%_))
                        (_%__wrap-checked161587%_
                         _%ht161742%_
                         _%implicit161738%_))))
                   (_%make-gambit-table161591%_
                    (lambda ()
                      (let* ((_%size161660%_
                              (let ((_%$e161657%_ _%size-hint161303%_))
                                (if _%$e161657%_
                                    _%$e161657%_
                                    (macro-absent-obj))))
                             (_%test161665%_
                              (let ((_%$e161662%_ _%test161307%_))
                                (if _%$e161662%_ _%$e161662%_ equal?)))
                             (_%hash161673%_
                              (let ((_%$e161667%_ _%hash161309%_))
                                (if _%$e161667%_
                                    _%$e161667%_
                                    (if (eq? _%test161665%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test161665%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht161675%_
                              (let ((__tmp170261
                                     (make-table
                                      'size:
                                      _%size161660%_
                                      'test:
                                      _%test161665%_
                                      'hash:
                                      _%hash161673%_
                                      'weak-keys:
                                      _%weak-keys161315%_
                                      'weak-values:
                                      _%weak-values161317%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170261)))
                             (_%ht161698%_
                              (let* ((_%ht161678%_ _%ht161675%_)
                                     (_%ht161682%_ _%ht161678%_))
                                (_%__wrap-lock161464%_ _%ht161682%_)))
                             (_%implicit161701%_ true)
                             (_%ht161705%_ _%ht161698%_))
                        (_%__wrap-checked161587%_
                         _%ht161705%_
                         _%implicit161701%_)))))
            (if (or _%weak-keys161315%_ _%weak-values161317%_)
                (_%make-gambit-table161591%_)
                (if (and (or (eq? _%test161307%_ eq?)
                             (eq? _%test161307%_ ##eq?))
                         (or (not _%hash161309%_)
                             (eq? _%hash161309%_ eq?-hash)
                             (eq? _%hash161309%_ eq-hash))
                         (not _%seed161305%_))
                    (_%make-gc-hash-table161590%_)
                    (if (and (or (eq? _%test161307%_ eq?)
                                 (eq? _%test161307%_ ##eq?))
                             (or (not _%hash161309%_)
                                 (eq? _%hash161309%_ eq?-hash)
                                 (eq? _%hash161309%_ eq-hash)))
                        (_%make161589%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test161307%_ eqv?)
                                     (eq? _%test161307%_ ##eqv?))
                                 (or (not _%hash161309%_)
                                     (eq? _%hash161309%_ eqv?-hash)
                                     (eq? _%hash161309%_ eqv-hash)))
                            (_%make161589%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test161307%_ eq?)
                                         (eq? _%test161307%_ ##eq?))
                                     (or (eq? _%hash161309%_ symbolic-hash)
                                         (eq? _%hash161309%_ ##symbol-hash)))
                                (_%make161589%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test161307%_ eq?)
                                             (eq? _%test161307%_ ##eq?))
                                         (eq? _%hash161309%_ immediate-hash))
                                    (_%make161589%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test161307%_ equal?)
                                                 (eq? _%test161307%_ ##equal?)
                                                 (eq? _%test161307%_ string=?)
                                                 (eq? _%test161307%_
                                                      ##string=?))
                                             (or (eq? _%hash161309%_
                                                      string-hash)
                                                 (eq? _%hash161309%_
                                                      ##string=?-hash)))
                                        (_%make161589%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test161307%_ equal?)
                                                 (not _%hash161309%_))
                                            (_%make161589%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test161307%_)
                                                (if (procedure? _%hash161309%_)
                                                    (_%make161589%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash161309%_
                                                     _%test161307%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash161309%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test161307%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords161855%_ . _%args161856%_)
        (apply make-hash-table__%
               _%@@keywords161855%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161855%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161855%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161855%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161855%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords161855%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161855%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161855%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords161855%_
                  'weak-values:
                  absent-value))
               _%args161856%_)))
    (define make-hash-table
      (lambda _%$%args161291161862%_
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
               _%$%args161291161862%_)))
    (define make-hash-table-eq
      (lambda _%args161280%_
        (apply make-hash-table 'test: eq? _%args161280%_)))
    (define make-hash-table-eqv
      (lambda _%args161278%_
        (apply make-hash-table 'test: eqv? _%args161278%_)))
    (define make-hash-table-symbolic
      (lambda _%args161276%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args161276%_)))
    (define make-hash-table-string
      (lambda _%args161274%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args161274%_)))
    (define make-hash-table-immediate
      (lambda _%args161272%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args161272%_)))
    (define list->hash-table
      (lambda (_%lst161269%_ . _%args161270%_)
        (list->hash-table!
         _%lst161269%_
         (apply make-hash-table
                'size:
                (length _%lst161269%_)
                _%args161270%_))))
    (define list->hash-table-eq
      (lambda (_%lst161266%_ . _%args161267%_)
        (list->hash-table!
         _%lst161266%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161266%_)
                _%args161267%_))))
    (define list->hash-table-eqv
      (lambda (_%lst161263%_ . _%args161264%_)
        (list->hash-table!
         _%lst161263%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161263%_)
                _%args161264%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst161260%_ . _%args161261%_)
        (list->hash-table!
         _%lst161260%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161260%_)
                _%args161261%_))))
    (define list->hash-table-string
      (lambda (_%lst161257%_ . _%args161258%_)
        (list->hash-table!
         _%lst161257%_
         (apply make-hash-table-string
                'size:
                (length _%lst161257%_)
                _%args161258%_))))
    (define list->hash-table-immediate
      (lambda (_%lst161254%_ . _%args161255%_)
        (list->hash-table!
         _%lst161254%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161254%_)
                _%args161255%_))))
    (define list->hash-table!
      (lambda (_%lst161205%_ _%h161206%_)
        (for-each
         (lambda (_%el161208%_)
           (let* ((_%$%el161209161216%_ _%el161208%_)
                  (_%$%E161211161219%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el161209161216%_
                              '([k . v])))
                     '#!void))
                  (_%$%K161212161242%_
                   (lambda (_%v161222%_ _%k161223%_)
                     (let* ((_%self154178161225%_ _%h161206%_)
                            (_%key161228%_ _%k161223%_)
                            (_%value161231%_ _%v161222%_))
                       (declare (not safe))
                       (let ((_%object161234161239%_
                              (##unchecked-structure-ref
                               _%self154178161225%_
                               '1
                               '#f
                               'set!))
                             (_%method161235161240%_
                              (##unchecked-structure-ref
                               _%self154178161225%_
                               '9
                               '#f
                               'set!)))
                         (_%method161235161240%_
                          _%object161234161239%_
                          _%key161228%_
                          _%value161231%_))))))
             (if (pair? _%$%el161209161216%_)
                 (let ((_%$%hd161213161245%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el161209161216%_)))
                       (_%$%tl161214161247%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el161209161216%_))))
                   (let* ((_%k161250%_ _%$%hd161213161245%_)
                          (_%v161252%_ _%$%tl161214161247%_))
                     (_%$%K161212161242%_ _%v161252%_ _%k161250%_)))
                 (_%$%E161211161219%_))))
         _%lst161205%_)
        _%h161206%_))
    (define plist->hash-table
      (lambda (_%lst161202%_ . _%args161203%_)
        (plist->hash-table!
         _%lst161202%_
         (apply make-hash-table
                'size:
                (length _%lst161202%_)
                _%args161203%_))))
    (define plist->hash-table-eq
      (lambda (_%lst161199%_ . _%args161200%_)
        (plist->hash-table!
         _%lst161199%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161199%_)
                _%args161200%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst161196%_ . _%args161197%_)
        (plist->hash-table!
         _%lst161196%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161196%_)
                _%args161197%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst161193%_ . _%args161194%_)
        (plist->hash-table!
         _%lst161193%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161193%_)
                _%args161194%_))))
    (define plist->hash-table-string
      (lambda (_%lst161190%_ . _%args161191%_)
        (plist->hash-table!
         _%lst161190%_
         (apply make-hash-table-string
                'size:
                (length _%lst161190%_)
                _%args161191%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst161187%_ . _%args161188%_)
        (plist->hash-table!
         _%lst161187%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161187%_)
                _%args161188%_))))
    (define plist->hash-table!
      (lambda (_%lst161110%_ _%h161111%_)
        (let _%loop161113%_ ((_%rest161115%_ _%lst161110%_))
          (let* ((_%$%rest161116161128%_ _%rest161115%_)
                 (_%$%else161119161136%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst161110%_)))))
            (let ((_%$%K161122161168%_
                   (lambda (_%rest161147%_ _%val161148%_ _%key161149%_)
                     (let* ((_%self154178161151%_ _%h161111%_)
                            (_%key161154%_ _%key161149%_)
                            (_%value161157%_ _%val161148%_))
                       (declare (not safe))
                       (let ((_%object161160161165%_
                              (##unchecked-structure-ref
                               _%self154178161151%_
                               '1
                               '#f
                               'set!))
                             (_%method161161161166%_
                              (##unchecked-structure-ref
                               _%self154178161151%_
                               '9
                               '#f
                               'set!)))
                         (_%method161161161166%_
                          _%object161160161165%_
                          _%key161154%_
                          _%value161157%_)))
                     (_%loop161113%_ _%rest161147%_)))
                  (_%$%K161121161141%_ (lambda () _%h161111%_)))
              (let ((_%$%try-match161118161144%_
                     (lambda ()
                       (if (null? _%$%rest161116161128%_)
                           (_%$%K161121161141%_)
                           (_%$%else161119161136%_)))))
                (if (pair? _%$%rest161116161128%_)
                    (let ((_%$%tl161124161173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest161116161128%_)))
                          (_%$%hd161123161171%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest161116161128%_))))
                      (if (pair? _%$%tl161124161173%_)
                          (let ((_%$%tl161126161180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl161124161173%_)))
                                (_%$%hd161125161178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl161124161173%_))))
                            (let ((_%key161176%_ _%$%hd161123161171%_)
                                  (_%val161183%_ _%$%hd161125161178%_)
                                  (_%rest161185%_ _%$%tl161126161180%_))
                              (_%$%K161122161168%_
                               _%rest161185%_
                               _%val161183%_
                               _%key161176%_)))
                          (_%$%else161119161136%_)))
                    (_%$%try-match161118161144%_))))))))
    (define __hash-length
      (lambda (_%h161062%_)
        (let* ((_%h161065%_ _%h161062%_)
               (_%self153447161074%_ _%h161065%_)
               (_%self153447161078%_ _%self153447161074%_)
               (_%self153447161080%_ _%self153447161078%_))
          (if __DEBUG
              (let ((_%val161100%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161092161097%_
                              (##unchecked-structure-ref
                               _%self153447161080%_
                               '1
                               '#f
                               'length))
                             (_%method161093161098%_
                              (##unchecked-structure-ref
                               _%self153447161080%_
                               '6
                               '#f
                               'length)))
                         (_%method161093161098%_ _%object161092161097%_)))))
                (if (fixnum? _%val161100%_)
                    _%val161100%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161100%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161102161107%_
                       (##unchecked-structure-ref
                        _%self153447161080%_
                        '1
                        '#f
                        'length))
                      (_%method161103161108%_
                       (##unchecked-structure-ref
                        _%self153447161080%_
                        '6
                        '#f
                        'length)))
                  (_%method161103161108%_ _%object161102161107%_)))))))
    (define hash-length
      (lambda (_%h161047%_)
        (let* ((_%h161050%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161047%_)))
               (_%h161052%_ _%h161050%_))
          (__hash-length _%h161052%_))))
    (define __hash-ref__%
      (lambda (_%h160978%_ _%key160979%_ _%default160980%_)
        (let* ((_%h160983%_ _%h160978%_)
               (_%result161033%_
                (let* ((_%self153935160992%_ _%h160983%_)
                       (_%key160995%_ _%key160979%_)
                       (_%default160998%_ _%default160980%_)
                       (_%self153935161002%_ _%self153935160992%_)
                       (_%self153935161004%_ _%self153935161002%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object161018161023%_
                               (##unchecked-structure-ref
                                _%self153935161004%_
                                '1
                                '#f
                                'ref))
                              (_%method161019161024%_
                               (##unchecked-structure-ref
                                _%self153935161004%_
                                '8
                                '#f
                                'ref)))
                          (_%method161019161024%_
                           _%object161018161023%_
                           _%key160995%_
                           _%default160998%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161025161030%_
                               (##unchecked-structure-ref
                                _%self153935161004%_
                                '1
                                '#f
                                'ref))
                              (_%method161026161031%_
                               (##unchecked-structure-ref
                                _%self153935161004%_
                                '8
                                '#f
                                'ref)))
                          (_%method161026161031%_
                           _%object161025161030%_
                           _%key160995%_
                           _%default160998%_)))))))
          (if (eq? _%result161033%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h160983%_
               'key:
               _%key160979%_)
              _%result161033%_))))
    (define __hash-ref__0
      (lambda (_%h161038%_ _%key161039%_)
        (let ((_%default161041%_ absent-obj))
          (__hash-ref__% _%h161038%_ _%key161039%_ _%default161041%_))))
    (define __hash-ref
      (lambda _g170262_
        (let ((_g170263_ (let () (declare (not safe)) (##length _g170262_))))
          (cond ((let () (declare (not safe)) (##fx= _g170263_ 2))
                 (apply __hash-ref__0 _g170262_))
                ((let () (declare (not safe)) (##fx= _g170263_ 3))
                 (apply __hash-ref__% _g170262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170262_))))))
    (define hash-ref__%
      (lambda (_%h160948%_ _%key160949%_ _%default160950%_)
        (let* ((_%h160953%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160948%_)))
               (_%h160955%_ _%h160953%_))
          (__hash-ref__% _%h160955%_ _%key160949%_ _%default160950%_))))
    (define hash-ref__0
      (lambda (_%h160968%_ _%key160969%_)
        (let ((_%default160971%_ absent-obj))
          (hash-ref__% _%h160968%_ _%key160969%_ _%default160971%_))))
    (define hash-ref
      (lambda _g170264_
        (let ((_g170265_ (let () (declare (not safe)) (##length _g170264_))))
          (cond ((let () (declare (not safe)) (##fx= _g170265_ 2))
                 (apply hash-ref__0 _g170264_))
                ((let () (declare (not safe)) (##fx= _g170265_ 3))
                 (apply hash-ref__% _g170264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170264_))))))
    (define __hash-get
      (lambda (_%h160893%_ _%key160894%_)
        (let* ((_%h160897%_ _%h160893%_)
               (_%self153935160906%_ _%h160897%_)
               (_%key160909%_ _%key160894%_)
               (_%default160912%_ '#f)
               (_%self153935160916%_ _%self153935160906%_)
               (_%self153935160918%_ _%self153935160916%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160932160937%_
                       (##unchecked-structure-ref
                        _%self153935160918%_
                        '1
                        '#f
                        'ref))
                      (_%method160933160938%_
                       (##unchecked-structure-ref
                        _%self153935160918%_
                        '8
                        '#f
                        'ref)))
                  (_%method160933160938%_
                   _%object160932160937%_
                   _%key160909%_
                   _%default160912%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160939160944%_
                       (##unchecked-structure-ref
                        _%self153935160918%_
                        '1
                        '#f
                        'ref))
                      (_%method160940160945%_
                       (##unchecked-structure-ref
                        _%self153935160918%_
                        '8
                        '#f
                        'ref)))
                  (_%method160940160945%_
                   _%object160939160944%_
                   _%key160909%_
                   _%default160912%_)))))))
    (define hash-get
      (lambda (_%h160877%_ _%key160878%_)
        (let* ((_%h160881%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160877%_)))
               (_%h160883%_ _%h160881%_))
          (__hash-get _%h160883%_ _%key160878%_))))
    (define __hash-put!
      (lambda (_%h160822%_ _%key160823%_ _%value160824%_)
        (let* ((_%h160827%_ _%h160822%_)
               (_%self154179160836%_ _%h160827%_)
               (_%key160839%_ _%key160823%_)
               (_%value160842%_ _%value160824%_)
               (_%self154179160846%_ _%self154179160836%_)
               (_%self154179160848%_ _%self154179160846%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160862160867%_
                       (##unchecked-structure-ref
                        _%self154179160848%_
                        '1
                        '#f
                        'set!))
                      (_%method160863160868%_
                       (##unchecked-structure-ref
                        _%self154179160848%_
                        '9
                        '#f
                        'set!)))
                  (_%method160863160868%_
                   _%object160862160867%_
                   _%key160839%_
                   _%value160842%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160869160874%_
                       (##unchecked-structure-ref
                        _%self154179160848%_
                        '1
                        '#f
                        'set!))
                      (_%method160870160875%_
                       (##unchecked-structure-ref
                        _%self154179160848%_
                        '9
                        '#f
                        'set!)))
                  (_%method160870160875%_
                   _%object160869160874%_
                   _%key160839%_
                   _%value160842%_)))))))
    (define hash-put!
      (lambda (_%h160805%_ _%key160806%_ _%value160807%_)
        (let* ((_%h160810%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160805%_)))
               (_%h160812%_ _%h160810%_))
          (__hash-put! _%h160812%_ _%key160806%_ _%value160807%_))))
    (define __hash-update!__%
      (lambda (_%h160721%_ _%key160722%_ _%update160723%_ _%default160724%_)
        (let* ((_%h160727%_ _%h160721%_)
               (_%self154423160736%_ _%h160727%_)
               (_%key160739%_ _%key160722%_)
               (_%proc160742%_ _%update160723%_)
               (_%default160745%_ _%default160724%_)
               (_%self154423160749%_ _%self154423160736%_)
               (_%self154423160751%_ _%self154423160749%_))
          (if (procedure? _%proc160742%_)
              (let ((_%proc160767%_ _%proc160742%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object160776160781%_
                             (##unchecked-structure-ref
                              _%self154423160751%_
                              '1
                              '#f
                              'update!))
                            (_%method160777160782%_
                             (##unchecked-structure-ref
                              _%self154423160751%_
                              '10
                              '#f
                              'update!)))
                        (_%method160777160782%_
                         _%object160776160781%_
                         _%key160739%_
                         _%proc160767%_
                         _%default160745%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object160783160788%_
                             (##unchecked-structure-ref
                              _%self154423160751%_
                              '1
                              '#f
                              'update!))
                            (_%method160784160789%_
                             (##unchecked-structure-ref
                              _%self154423160751%_
                              '10
                              '#f
                              'update!)))
                        (_%method160784160789%_
                         _%object160783160788%_
                         _%key160739%_
                         _%proc160767%_
                         _%default160745%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc160742%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h160794%_ _%key160795%_ _%update160796%_)
        (let ((_%default160798%_ '#!void))
          (__hash-update!__%
           _%h160794%_
           _%key160795%_
           _%update160796%_
           _%default160798%_))))
    (define __hash-update!
      (lambda _g170266_
        (let ((_g170267_ (let () (declare (not safe)) (##length _g170266_))))
          (cond ((let () (declare (not safe)) (##fx= _g170267_ 3))
                 (apply __hash-update!__0 _g170266_))
                ((let () (declare (not safe)) (##fx= _g170267_ 4))
                 (apply __hash-update!__% _g170266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170266_))))))
    (define hash-update!__%
      (lambda (_%h160688%_ _%key160689%_ _%update160690%_ _%default160691%_)
        (let* ((_%h160694%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160688%_)))
               (_%h160696%_ _%h160694%_))
          (__hash-update!__%
           _%h160696%_
           _%key160689%_
           _%update160690%_
           _%default160691%_))))
    (define hash-update!__0
      (lambda (_%h160709%_ _%key160710%_ _%update160711%_)
        (let ((_%default160713%_ '#!void))
          (hash-update!__%
           _%h160709%_
           _%key160710%_
           _%update160711%_
           _%default160713%_))))
    (define hash-update!
      (lambda _g170268_
        (let ((_g170269_ (let () (declare (not safe)) (##length _g170268_))))
          (cond ((let () (declare (not safe)) (##fx= _g170269_ 3))
                 (apply hash-update!__0 _g170268_))
                ((let () (declare (not safe)) (##fx= _g170269_ 4))
                 (apply hash-update!__% _g170268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170268_))))))
    (define __hash-remove!
      (lambda (_%h160637%_ _%key160638%_)
        (let* ((_%h160641%_ _%h160637%_)
               (_%self152959160650%_ _%h160641%_)
               (_%key160653%_ _%key160638%_)
               (_%self152959160657%_ _%self152959160650%_)
               (_%self152959160659%_ _%self152959160657%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160672160677%_
                       (##unchecked-structure-ref
                        _%self152959160659%_
                        '1
                        '#f
                        'delete!))
                      (_%method160673160678%_
                       (##unchecked-structure-ref
                        _%self152959160659%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160673160678%_
                   _%object160672160677%_
                   _%key160653%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160679160684%_
                       (##unchecked-structure-ref
                        _%self152959160659%_
                        '1
                        '#f
                        'delete!))
                      (_%method160680160685%_
                       (##unchecked-structure-ref
                        _%self152959160659%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160680160685%_
                   _%object160679160684%_
                   _%key160653%_)))))))
    (define hash-remove!
      (lambda (_%h160621%_ _%key160622%_)
        (let* ((_%h160625%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160621%_)))
               (_%h160627%_ _%h160625%_))
          (__hash-remove! _%h160627%_ _%key160622%_))))
    (define __hash-key?
      (lambda (_%h160567%_ _%k160568%_)
        (let ((_%h160571%_ _%h160567%_))
          (not (eq? (let* ((_%self153935160580%_ _%h160571%_)
                           (_%key160583%_ _%k160568%_)
                           (_%default160586%_ absent-value)
                           (_%self153935160590%_ _%self153935160580%_)
                           (_%self153935160592%_ _%self153935160590%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object160606160611%_
                                   (##unchecked-structure-ref
                                    _%self153935160592%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160607160612%_
                                   (##unchecked-structure-ref
                                    _%self153935160592%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160607160612%_
                               _%object160606160611%_
                               _%key160583%_
                               _%default160586%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object160613160618%_
                                   (##unchecked-structure-ref
                                    _%self153935160592%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160614160619%_
                                   (##unchecked-structure-ref
                                    _%self153935160592%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160614160619%_
                               _%object160613160618%_
                               _%key160583%_
                               _%default160586%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h160551%_ _%k160552%_)
        (let* ((_%h160555%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160551%_)))
               (_%h160557%_ _%h160555%_))
          (__hash-key? _%h160557%_ _%k160552%_))))
    (define __hash->list
      (lambda (_%h160486%_)
        (let* ((_%h160489%_ _%h160486%_) (_%lst160498%_ '()))
          (let* ((_%self153203160500%_ _%h160489%_)
                 (_%proc160506%_
                  (lambda (_%k160503%_ _%v160504%_)
                    (set! _%lst160498%_
                          (cons (cons _%k160503%_ _%v160504%_)
                                _%lst160498%_))))
                 (_%self153203160510%_ _%self153203160500%_)
                 (_%self153203160512%_ _%self153203160510%_)
                 (_%proc160527%_ _%proc160506%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160536160541%_
                         (##unchecked-structure-ref
                          _%self153203160512%_
                          '1
                          '#f
                          'for-each))
                        (_%method160537160542%_
                         (##unchecked-structure-ref
                          _%self153203160512%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160537160542%_
                     _%object160536160541%_
                     _%proc160527%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160543160548%_
                         (##unchecked-structure-ref
                          _%self153203160512%_
                          '1
                          '#f
                          'for-each))
                        (_%method160544160549%_
                         (##unchecked-structure-ref
                          _%self153203160512%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160544160549%_
                     _%object160543160548%_
                     _%proc160527%_)))))
          _%lst160498%_)))
    (define hash->list
      (lambda (_%h160471%_)
        (let* ((_%h160474%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160471%_)))
               (_%h160476%_ _%h160474%_))
          (__hash->list _%h160476%_))))
    (define __hash->plist
      (lambda (_%h160406%_)
        (let* ((_%h160409%_ _%h160406%_) (_%lst160418%_ '()))
          (let* ((_%self153203160420%_ _%h160409%_)
                 (_%proc160426%_
                  (lambda (_%k160423%_ _%v160424%_)
                    (set! _%lst160418%_
                          (cons _%k160423%_
                                (cons _%v160424%_ _%lst160418%_)))))
                 (_%self153203160430%_ _%self153203160420%_)
                 (_%self153203160432%_ _%self153203160430%_)
                 (_%proc160447%_ _%proc160426%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160456160461%_
                         (##unchecked-structure-ref
                          _%self153203160432%_
                          '1
                          '#f
                          'for-each))
                        (_%method160457160462%_
                         (##unchecked-structure-ref
                          _%self153203160432%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160457160462%_
                     _%object160456160461%_
                     _%proc160447%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160463160468%_
                         (##unchecked-structure-ref
                          _%self153203160432%_
                          '1
                          '#f
                          'for-each))
                        (_%method160464160469%_
                         (##unchecked-structure-ref
                          _%self153203160432%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160464160469%_
                     _%object160463160468%_
                     _%proc160447%_)))))
          _%lst160418%_)))
    (define hash->plist
      (lambda (_%h160391%_)
        (let* ((_%h160394%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160391%_)))
               (_%h160396%_ _%h160394%_))
          (__hash->plist _%h160396%_))))
    (define __hash-for-each
      (lambda (_%proc160323%_ _%h160324%_)
        (let* ((_%proc160327%_ _%proc160323%_)
               (_%h160335%_ _%h160324%_)
               (_%self153203160344%_ _%h160335%_)
               (_%proc160347%_ _%proc160327%_)
               (_%self153203160351%_ _%self153203160344%_)
               (_%self153203160353%_ _%self153203160351%_)
               (_%proc160367%_ _%proc160347%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160376160381%_
                       (##unchecked-structure-ref
                        _%self153203160353%_
                        '1
                        '#f
                        'for-each))
                      (_%method160377160382%_
                       (##unchecked-structure-ref
                        _%self153203160353%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160377160382%_
                   _%object160376160381%_
                   _%proc160367%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160383160388%_
                       (##unchecked-structure-ref
                        _%self153203160353%_
                        '1
                        '#f
                        'for-each))
                      (_%method160384160389%_
                       (##unchecked-structure-ref
                        _%self153203160353%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160384160389%_
                   _%object160383160388%_
                   _%proc160367%_)))))))
    (define hash-for-each
      (lambda (_%proc160297%_ _%h160298%_)
        (if (procedure? _%proc160297%_)
            (let* ((_%proc160302%_ _%proc160297%_)
                   (_%h160311%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160298%_)))
                   (_%h160313%_ _%h160311%_))
              (__hash-for-each _%proc160302%_ _%h160313%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@598.22-598.26"
               'contract:
               'procedure?
               'value:
               _%proc160297%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc160223%_ _%h160224%_)
        (let* ((_%proc160227%_ _%proc160223%_)
               (_%h160235%_ _%h160224%_)
               (_%result160244%_ '()))
          (let* ((_%self153203160246%_ _%h160235%_)
                 (_%proc160252%_
                  (lambda (_%k160249%_ _%v160250%_)
                    (set! _%result160244%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc160227%_ _%k160249%_ _%v160250%_))
                                _%result160244%_))))
                 (_%self153203160256%_ _%self153203160246%_)
                 (_%self153203160258%_ _%self153203160256%_)
                 (_%proc160273%_ _%proc160252%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160282160287%_
                         (##unchecked-structure-ref
                          _%self153203160258%_
                          '1
                          '#f
                          'for-each))
                        (_%method160283160288%_
                         (##unchecked-structure-ref
                          _%self153203160258%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160283160288%_
                     _%object160282160287%_
                     _%proc160273%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160289160294%_
                         (##unchecked-structure-ref
                          _%self153203160258%_
                          '1
                          '#f
                          'for-each))
                        (_%method160290160295%_
                         (##unchecked-structure-ref
                          _%self153203160258%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160290160295%_
                     _%object160289160294%_
                     _%proc160273%_)))))
          _%result160244%_)))
    (define hash-map
      (lambda (_%proc160197%_ _%h160198%_)
        (if (procedure? _%proc160197%_)
            (let* ((_%proc160202%_ _%proc160197%_)
                   (_%h160211%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160198%_)))
                   (_%h160213%_ _%h160211%_))
              (__hash-map _%proc160202%_ _%h160213%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@601.17-601.21"
               'contract:
               'procedure?
               'value:
               _%proc160197%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc160122%_ _%iv160123%_ _%h160124%_)
        (let* ((_%proc160127%_ _%proc160122%_)
               (_%h160135%_ _%h160124%_)
               (_%result160144%_ _%iv160123%_))
          (let* ((_%self153203160146%_ _%h160135%_)
                 (_%proc160152%_
                  (lambda (_%k160149%_ _%v160150%_)
                    (set! _%result160144%_
                          (let ()
                            (declare (not safe))
                            (_%proc160127%_
                             _%k160149%_
                             _%v160150%_
                             _%result160144%_)))))
                 (_%self153203160156%_ _%self153203160146%_)
                 (_%self153203160158%_ _%self153203160156%_)
                 (_%proc160173%_ _%proc160152%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160182160187%_
                         (##unchecked-structure-ref
                          _%self153203160158%_
                          '1
                          '#f
                          'for-each))
                        (_%method160183160188%_
                         (##unchecked-structure-ref
                          _%self153203160158%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160183160188%_
                     _%object160182160187%_
                     _%proc160173%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160189160194%_
                         (##unchecked-structure-ref
                          _%self153203160158%_
                          '1
                          '#f
                          'for-each))
                        (_%method160190160195%_
                         (##unchecked-structure-ref
                          _%self153203160158%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160190160195%_
                     _%object160189160194%_
                     _%proc160173%_)))))
          _%result160144%_)))
    (define hash-fold
      (lambda (_%proc160095%_ _%iv160096%_ _%h160097%_)
        (if (procedure? _%proc160095%_)
            (let* ((_%proc160101%_ _%proc160095%_)
                   (_%h160110%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160097%_)))
                   (_%h160112%_ _%h160110%_))
              (__hash-fold _%proc160101%_ _%iv160096%_ _%h160112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@607.18-607.22"
               'contract:
               'procedure?
               'value:
               _%proc160095%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc160005%_ _%h160006%_ _%default-value160007%_)
        (let* ((_%proc160010%_ _%proc160005%_)
               (_%h160018%_ _%h160006%_)
               (__tmp170270
                (lambda (_%return160027%_)
                  (let* ((_%self153203160029%_ _%h160018%_)
                         (_%proc160038%_
                          (lambda (_%k160032%_ _%v160033%_)
                            (let ((_%$e160035%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc160010%_
                                      _%k160032%_
                                      _%v160033%_))))
                              (if _%$e160035%_
                                  (_%return160027%_ _%$e160035%_)
                                  '#!void))))
                         (_%self153203160042%_ _%self153203160029%_)
                         (_%self153203160044%_ _%self153203160042%_)
                         (_%proc160059%_ _%proc160038%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object160068160073%_
                                 (##unchecked-structure-ref
                                  _%self153203160044%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160069160074%_
                                 (##unchecked-structure-ref
                                  _%self153203160044%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160069160074%_
                             _%object160068160073%_
                             _%proc160059%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object160075160080%_
                                 (##unchecked-structure-ref
                                  _%self153203160044%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160076160081%_
                                 (##unchecked-structure-ref
                                  _%self153203160044%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160076160081%_
                             _%object160075160080%_
                             _%proc160059%_)))))
                  _%default-value160007%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170270))))
    (define __hash-find__0
      (lambda (_%proc160086%_ _%h160087%_)
        (let ((_%default-value160089%_ '#f))
          (__hash-find__%
           _%proc160086%_
           _%h160087%_
           _%default-value160089%_))))
    (define __hash-find
      (lambda _g170271_
        (let ((_g170272_ (let () (declare (not safe)) (##length _g170271_))))
          (cond ((let () (declare (not safe)) (##fx= _g170272_ 2))
                 (apply __hash-find__0 _g170271_))
                ((let () (declare (not safe)) (##fx= _g170272_ 3))
                 (apply __hash-find__% _g170271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170271_))))))
    (define hash-find__%
      (lambda (_%proc159965%_ _%h159966%_ _%default-value159967%_)
        (if (procedure? _%proc159965%_)
            (let* ((_%proc159971%_ _%proc159965%_)
                   (_%h159980%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h159966%_)))
                   (_%h159982%_ _%h159980%_))
              (__hash-find__%
               _%proc159971%_
               _%h159982%_
               _%default-value159967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@612.18-612.22"
               'contract:
               'procedure?
               'value:
               _%proc159965%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc159995%_ _%h159996%_)
        (let ((_%default-value159998%_ '#f))
          (hash-find__% _%proc159995%_ _%h159996%_ _%default-value159998%_))))
    (define hash-find
      (lambda _g170273_
        (let ((_g170274_ (let () (declare (not safe)) (##length _g170273_))))
          (cond ((let () (declare (not safe)) (##fx= _g170274_ 2))
                 (apply hash-find__0 _g170273_))
                ((let () (declare (not safe)) (##fx= _g170274_ 3))
                 (apply hash-find__% _g170273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170273_))))))
    (define __hash-keys
      (lambda (_%h159899%_)
        (let* ((_%h159902%_ _%h159899%_) (_%result159911%_ '()))
          (let* ((_%self153203159913%_ _%h159902%_)
                 (_%proc159919%_
                  (lambda (_%k159916%_ _%v159917%_)
                    (set! _%result159911%_
                          (cons _%k159916%_ _%result159911%_))))
                 (_%self153203159923%_ _%self153203159913%_)
                 (_%self153203159925%_ _%self153203159923%_)
                 (_%proc159940%_ _%proc159919%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159949159954%_
                         (##unchecked-structure-ref
                          _%self153203159925%_
                          '1
                          '#f
                          'for-each))
                        (_%method159950159955%_
                         (##unchecked-structure-ref
                          _%self153203159925%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159950159955%_
                     _%object159949159954%_
                     _%proc159940%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159956159961%_
                         (##unchecked-structure-ref
                          _%self153203159925%_
                          '1
                          '#f
                          'for-each))
                        (_%method159957159962%_
                         (##unchecked-structure-ref
                          _%self153203159925%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159957159962%_
                     _%object159956159961%_
                     _%proc159940%_)))))
          _%result159911%_)))
    (define hash-keys
      (lambda (_%h159884%_)
        (let* ((_%h159887%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159884%_)))
               (_%h159889%_ _%h159887%_))
          (__hash-keys _%h159889%_))))
    (define __hash-values
      (lambda (_%h159819%_)
        (let* ((_%h159822%_ _%h159819%_) (_%result159831%_ '()))
          (let* ((_%self153203159833%_ _%h159822%_)
                 (_%proc159839%_
                  (lambda (_%k159836%_ _%v159837%_)
                    (set! _%result159831%_
                          (cons _%v159837%_ _%result159831%_))))
                 (_%self153203159843%_ _%self153203159833%_)
                 (_%self153203159845%_ _%self153203159843%_)
                 (_%proc159860%_ _%proc159839%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object159869159874%_
                         (##unchecked-structure-ref
                          _%self153203159845%_
                          '1
                          '#f
                          'for-each))
                        (_%method159870159875%_
                         (##unchecked-structure-ref
                          _%self153203159845%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159870159875%_
                     _%object159869159874%_
                     _%proc159860%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object159876159881%_
                         (##unchecked-structure-ref
                          _%self153203159845%_
                          '1
                          '#f
                          'for-each))
                        (_%method159877159882%_
                         (##unchecked-structure-ref
                          _%self153203159845%_
                          '5
                          '#f
                          'for-each)))
                    (_%method159877159882%_
                     _%object159876159881%_
                     _%proc159860%_)))))
          _%result159831%_)))
    (define hash-values
      (lambda (_%h159804%_)
        (let* ((_%h159807%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159804%_)))
               (_%h159809%_ _%h159807%_))
          (__hash-values _%h159809%_))))
    (define __hash-copy
      (lambda (_%h159759%_)
        (let* ((_%h159762%_ _%h159759%_)
               (_%self152715159771%_ _%h159762%_)
               (_%self152715159775%_ _%self152715159771%_)
               (_%self152715159777%_ _%self152715159775%_))
          (if __DEBUG
              (let ((__tmp170275
                     (let ()
                       (declare (not safe))
                       (let ((_%object159789159794%_
                              (##unchecked-structure-ref
                               _%self152715159777%_
                               '1
                               '#f
                               'copy))
                             (_%method159790159795%_
                              (##unchecked-structure-ref
                               _%self152715159777%_
                               '3
                               '#f
                               'copy)))
                         (_%method159790159795%_ _%object159789159794%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170275))
              (let ()
                (declare (not safe))
                (let ((_%object159796159801%_
                       (##unchecked-structure-ref
                        _%self152715159777%_
                        '1
                        '#f
                        'copy))
                      (_%method159797159802%_
                       (##unchecked-structure-ref
                        _%self152715159777%_
                        '3
                        '#f
                        'copy)))
                  (_%method159797159802%_ _%object159796159801%_)))))))
    (define hash-copy
      (lambda (_%h159744%_)
        (let* ((_%h159747%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159744%_)))
               (_%h159749%_ _%h159747%_))
          (__hash-copy _%h159749%_))))
    (define __hash-new
      (lambda (_%h159679%_)
        (let* ((_%h159682%_ _%h159679%_)
               (_%self153691159691%_ _%h159682%_)
               (_%size-hint159694%_ '#f)
               (_%self153691159698%_ _%self153691159691%_)
               (_%self153691159700%_ _%self153691159698%_))
          (if (let ((_%$e159716%_ '#t)) (and _%$e159716%_ _%$e159716%_))
              (let ((_%size-hint159720%_ _%size-hint159694%_))
                (if __DEBUG
                    (let ((__tmp170276
                           (let ()
                             (declare (not safe))
                             (let ((_%object159729159734%_
                                    (##unchecked-structure-ref
                                     _%self153691159700%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method159730159735%_
                                    (##unchecked-structure-ref
                                     _%self153691159700%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method159730159735%_
                                _%object159729159734%_
                                _%size-hint159720%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170276))
                    (let ()
                      (declare (not safe))
                      (let ((_%object159736159741%_
                             (##unchecked-structure-ref
                              _%self153691159700%_
                              '1
                              '#f
                              'new))
                            (_%method159737159742%_
                             (##unchecked-structure-ref
                              _%self153691159700%_
                              '7
                              '#f
                              'new)))
                        (_%method159737159742%_
                         _%object159736159741%_
                         _%size-hint159720%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159694%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h159664%_)
        (let* ((_%h159667%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159664%_)))
               (_%h159669%_ _%h159667%_))
          (__hash-new _%h159669%_))))
    (define __hash-clear!
      (lambda (_%h159619%_)
        (let* ((_%h159622%_ _%h159619%_)
               (_%self152470159631%_ _%h159622%_)
               (_%self152470159635%_ _%self152470159631%_)
               (_%self152470159637%_ _%self152470159635%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object159649159654%_
                       (##unchecked-structure-ref
                        _%self152470159637%_
                        '1
                        '#f
                        'clear!))
                      (_%method159650159655%_
                       (##unchecked-structure-ref
                        _%self152470159637%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159650159655%_ _%object159649159654%_)))
              (let ()
                (declare (not safe))
                (let ((_%object159656159661%_
                       (##unchecked-structure-ref
                        _%self152470159637%_
                        '1
                        '#f
                        'clear!))
                      (_%method159657159662%_
                       (##unchecked-structure-ref
                        _%self152470159637%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159657159662%_ _%object159656159661%_)))))))
    (define hash-clear!
      (lambda (_%h159604%_)
        (let* ((_%h159607%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159604%_)))
               (_%h159609%_ _%h159607%_))
          (__hash-clear! _%h159609%_))))
    (define __hash-merge
      (lambda (_%h159556%_ . _%rest159557%_)
        (let* ((_%h159560%_ _%h159556%_)
               (_%copy159602%_
                (let* ((_%self152715159569%_ _%h159560%_)
                       (_%self152715159573%_ _%self152715159569%_)
                       (_%self152715159575%_ _%self152715159573%_))
                  (if __DEBUG
                      (let ((__tmp170277
                             (let ()
                               (declare (not safe))
                               (let ((_%object159587159592%_
                                      (##unchecked-structure-ref
                                       _%self152715159575%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159588159593%_
                                      (##unchecked-structure-ref
                                       _%self152715159575%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159588159593%_
                                  _%object159587159592%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170277))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159594159599%_
                               (##unchecked-structure-ref
                                _%self152715159575%_
                                '1
                                '#f
                                'copy))
                              (_%method159595159600%_
                               (##unchecked-structure-ref
                                _%self152715159575%_
                                '3
                                '#f
                                'copy)))
                          (_%method159595159600%_ _%object159594159599%_)))))))
          (apply hash-merge! _%copy159602%_ _%rest159557%_)
          _%copy159602%_)))
    (define hash-merge
      (lambda (_%h159540%_ . _%rest159541%_)
        (let* ((_%h159544%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159540%_)))
               (_%h159546%_ _%h159544%_))
          (declare (not safe))
          (##apply __hash-merge _%h159546%_ _%rest159541%_))))
    (define __hash-merge-right
      (lambda (_%h159492%_ . _%rest159493%_)
        (let* ((_%h159496%_ _%h159492%_)
               (_%copy159538%_
                (let* ((_%self152715159505%_ _%h159496%_)
                       (_%self152715159509%_ _%self152715159505%_)
                       (_%self152715159511%_ _%self152715159509%_))
                  (if __DEBUG
                      (let ((__tmp170278
                             (let ()
                               (declare (not safe))
                               (let ((_%object159523159528%_
                                      (##unchecked-structure-ref
                                       _%self152715159511%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159524159529%_
                                      (##unchecked-structure-ref
                                       _%self152715159511%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159524159529%_
                                  _%object159523159528%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170278))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159530159535%_
                               (##unchecked-structure-ref
                                _%self152715159511%_
                                '1
                                '#f
                                'copy))
                              (_%method159531159536%_
                               (##unchecked-structure-ref
                                _%self152715159511%_
                                '3
                                '#f
                                'copy)))
                          (_%method159531159536%_ _%object159530159535%_)))))))
          (apply hash-merge-right! _%copy159538%_ _%rest159493%_)
          _%copy159538%_)))
    (define hash-merge-right
      (lambda (_%h159476%_ . _%rest159477%_)
        (let* ((_%h159480%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159476%_)))
               (_%h159482%_ _%h159480%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h159482%_ _%rest159477%_))))
    (define __hash-merge!
      (lambda (_%h159336%_ . _%rest159337%_)
        (let ((_%h159340%_ _%h159336%_))
          (let ((__tmp170279
                 (lambda (_%hr159349%_)
                   (let* ((_%hr159352%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159349%_)))
                          (_%hr159354%_ _%hr159352%_)
                          (_%self153203159367%_ _%hr159354%_)
                          (_%proc159436%_
                           (lambda (_%k159370%_ _%v159371%_)
                             (if (let* ((_%h159373%_ _%h159340%_)
                                        (_%k159376%_ _%k159370%_)
                                        (_%h159380%_ _%h159373%_)
                                        (_%h159382%_ _%h159380%_))
                                   (__hash-key? _%h159382%_ _%k159376%_))
                                 '#!void
                                 (let* ((_%self154179159398%_ _%h159340%_)
                                        (_%key159401%_ _%k159370%_)
                                        (_%value159404%_ _%v159371%_)
                                        (_%self154179159408%_
                                         _%self154179159398%_)
                                        (_%self154179159410%_
                                         _%self154179159408%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159421159426%_
                                                (##unchecked-structure-ref
                                                 _%self154179159410%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159422159427%_
                                                (##unchecked-structure-ref
                                                 _%self154179159410%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159422159427%_
                                            _%object159421159426%_
                                            _%key159401%_
                                            _%value159404%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159428159433%_
                                                (##unchecked-structure-ref
                                                 _%self154179159410%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159429159434%_
                                                (##unchecked-structure-ref
                                                 _%self154179159410%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159429159434%_
                                            _%object159428159433%_
                                            _%key159401%_
                                            _%value159404%_))))))))
                          (_%self153203159440%_ _%self153203159367%_)
                          (_%self153203159442%_ _%self153203159440%_)
                          (_%proc159452%_ _%proc159436%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159461159466%_
                                  (##unchecked-structure-ref
                                   _%self153203159442%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159462159467%_
                                  (##unchecked-structure-ref
                                   _%self153203159442%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159462159467%_
                              _%object159461159466%_
                              _%proc159452%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159468159473%_
                                  (##unchecked-structure-ref
                                   _%self153203159442%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159469159474%_
                                  (##unchecked-structure-ref
                                   _%self153203159442%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159469159474%_
                              _%object159468159473%_
                              _%proc159452%_))))))))
            (declare (not safe))
            (##for-each __tmp170279 _%rest159337%_))
          _%h159340%_)))
    (define hash-merge!
      (lambda (_%h159320%_ . _%rest159321%_)
        (let* ((_%h159324%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159320%_)))
               (_%h159326%_ _%h159324%_))
          (declare (not safe))
          (##apply __hash-merge! _%h159326%_ _%rest159321%_))))
    (define __hash-merge-right!
      (lambda (_%h159200%_ . _%rest159201%_)
        (let ((_%h159204%_ _%h159200%_))
          (let ((__tmp170280
                 (lambda (_%hr159213%_)
                   (let* ((_%hr159216%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159213%_)))
                          (_%hr159218%_ _%hr159216%_)
                          (_%self153203159231%_ _%hr159218%_)
                          (_%proc159280%_
                           (lambda (_%k159234%_ _%v159235%_)
                             (let* ((_%self154179159237%_ _%h159204%_)
                                    (_%key159240%_ _%k159234%_)
                                    (_%value159243%_ _%v159235%_)
                                    (_%self154179159247%_ _%self154179159237%_)
                                    (_%self154179159249%_
                                     _%self154179159247%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159265159270%_
                                            (##unchecked-structure-ref
                                             _%self154179159249%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159266159271%_
                                            (##unchecked-structure-ref
                                             _%self154179159249%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159266159271%_
                                        _%object159265159270%_
                                        _%key159240%_
                                        _%value159243%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159272159277%_
                                            (##unchecked-structure-ref
                                             _%self154179159249%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159273159278%_
                                            (##unchecked-structure-ref
                                             _%self154179159249%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159273159278%_
                                        _%object159272159277%_
                                        _%key159240%_
                                        _%value159243%_)))))))
                          (_%self153203159284%_ _%self153203159231%_)
                          (_%self153203159286%_ _%self153203159284%_)
                          (_%proc159296%_ _%proc159280%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159305159310%_
                                  (##unchecked-structure-ref
                                   _%self153203159286%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159306159311%_
                                  (##unchecked-structure-ref
                                   _%self153203159286%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159306159311%_
                              _%object159305159310%_
                              _%proc159296%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159312159317%_
                                  (##unchecked-structure-ref
                                   _%self153203159286%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159313159318%_
                                  (##unchecked-structure-ref
                                   _%self153203159286%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159313159318%_
                              _%object159312159317%_
                              _%proc159296%_))))))))
            (declare (not safe))
            (##for-each __tmp170280 _%rest159201%_))
          _%h159204%_)))
    (define hash-merge-right!
      (lambda (_%h159184%_ . _%rest159185%_)
        (let* ((_%h159188%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159184%_)))
               (_%h159190%_ _%h159188%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h159190%_ _%rest159185%_))))))
