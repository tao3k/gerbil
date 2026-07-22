(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1784758123)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp170398 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp170398
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args169010%_
        (apply make-instance UnboundKeyError::t _%$args169010%_)))
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
      (lambda (_%where168884%_ _%message168885%_ . _%irritants168886%_)
        (let ((__tmp170399
               (let ((__obj170390
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj170390
                    _%message168885%_
                    'where:
                    _%where168884%_
                    'irritants:
                    _%irritants168886%_))
                 __obj170390)))
          (declare (not safe))
          (raise __tmp170399))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp170400 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'HashTable::t
         'HashTable
         __tmp170400
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj170392
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170392
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
        __obj170392))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj168882%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj168882%_))))
    (define try-HashTable
      (lambda (_%obj168880%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj168880%_))))
    (define HashTable?
      (lambda (_%obj168878%_)
        (let ((__tmp170401
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168878%_ __tmp170401))))
    (define is-HashTable?
      (lambda (_%obj168875%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj168875%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self152498168858%_)
        (let ((_%self152498168860%_ _%self152498168858%_))
          (declare (not safe))
          (let ((_%object168867168872%_
                 (##unchecked-structure-ref
                  _%self152498168860%_
                  '1
                  '#f
                  'clear!))
                (_%method168868168873%_
                 (##unchecked-structure-ref
                  _%self152498168860%_
                  '2
                  '#f
                  'clear!)))
            (_%method168868168873%_ _%object168867168872%_)))))
    (define ::HashTable-clear!
      (lambda (_%self152499168831%_)
        (let* ((_%self152499168833%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152499168831%_)))
               (_%self152499168835%_ _%self152499168833%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168843168848%_
                       (##unchecked-structure-ref
                        _%self152499168835%_
                        '1
                        '#f
                        'clear!))
                      (_%method168844168849%_
                       (##unchecked-structure-ref
                        _%self152499168835%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168844168849%_ _%object168843168848%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168850168855%_
                       (##unchecked-structure-ref
                        _%self152499168835%_
                        '1
                        '#f
                        'clear!))
                      (_%method168851168856%_
                       (##unchecked-structure-ref
                        _%self152499168835%_
                        '2
                        '#f
                        'clear!)))
                  (_%method168851168856%_ _%object168850168855%_)))))))
    (define __HashTable-copy
      (lambda (_%self152743168814%_)
        (let ((_%self152743168816%_ _%self152743168814%_))
          (declare (not safe))
          (let ((_%object168823168828%_
                 (##unchecked-structure-ref _%self152743168816%_ '1 '#f 'copy))
                (_%method168824168829%_
                 (##unchecked-structure-ref
                  _%self152743168816%_
                  '3
                  '#f
                  'copy)))
            (_%method168824168829%_ _%object168823168828%_)))))
    (define ::HashTable-copy
      (lambda (_%self152744168787%_)
        (let* ((_%self152744168789%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152744168787%_)))
               (_%self152744168791%_ _%self152744168789%_))
          (if __DEBUG
              (let ((__tmp170402
                     (let ()
                       (declare (not safe))
                       (let ((_%object168799168804%_
                              (##unchecked-structure-ref
                               _%self152744168791%_
                               '1
                               '#f
                               'copy))
                             (_%method168800168805%_
                              (##unchecked-structure-ref
                               _%self152744168791%_
                               '3
                               '#f
                               'copy)))
                         (_%method168800168805%_ _%object168799168804%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170402))
              (let ()
                (declare (not safe))
                (let ((_%object168806168811%_
                       (##unchecked-structure-ref
                        _%self152744168791%_
                        '1
                        '#f
                        'copy))
                      (_%method168807168812%_
                       (##unchecked-structure-ref
                        _%self152744168791%_
                        '3
                        '#f
                        'copy)))
                  (_%method168807168812%_ _%object168806168811%_)))))))
    (define __HashTable-delete!
      (lambda (_%self152987168769%_ _%key168770%_)
        (let ((_%self152987168772%_ _%self152987168769%_))
          (declare (not safe))
          (let ((_%object168779168784%_
                 (##unchecked-structure-ref
                  _%self152987168772%_
                  '1
                  '#f
                  'delete!))
                (_%method168780168785%_
                 (##unchecked-structure-ref
                  _%self152987168772%_
                  '4
                  '#f
                  'delete!)))
            (_%method168780168785%_ _%object168779168784%_ _%key168770%_)))))
    (define ::HashTable-delete!
      (lambda (_%self152988168741%_ _%key168742%_)
        (let* ((_%self152988168744%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self152988168741%_)))
               (_%self152988168746%_ _%self152988168744%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168754168759%_
                       (##unchecked-structure-ref
                        _%self152988168746%_
                        '1
                        '#f
                        'delete!))
                      (_%method168755168760%_
                       (##unchecked-structure-ref
                        _%self152988168746%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168755168760%_
                   _%object168754168759%_
                   _%key168742%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168761168766%_
                       (##unchecked-structure-ref
                        _%self152988168746%_
                        '1
                        '#f
                        'delete!))
                      (_%method168762168767%_
                       (##unchecked-structure-ref
                        _%self152988168746%_
                        '4
                        '#f
                        'delete!)))
                  (_%method168762168767%_
                   _%object168761168766%_
                   _%key168742%_)))))))
    (define __HashTable-for-each
      (lambda (_%self153231168715%_ _%proc168716%_)
        (let* ((_%self153231168718%_ _%self153231168715%_)
               (_%proc168725%_ _%proc168716%_))
          (declare (not safe))
          (let ((_%object168733168738%_
                 (##unchecked-structure-ref
                  _%self153231168718%_
                  '1
                  '#f
                  'for-each))
                (_%method168734168739%_
                 (##unchecked-structure-ref
                  _%self153231168718%_
                  '5
                  '#f
                  'for-each)))
            (_%method168734168739%_ _%object168733168738%_ _%proc168725%_)))))
    (define ::HashTable-for-each
      (lambda (_%self153232168677%_ _%proc168678%_)
        (let* ((_%self153232168680%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153232168677%_)))
               (_%self153232168682%_ _%self153232168680%_))
          (if (procedure? _%proc168678%_)
              (let ((_%proc168691%_ _%proc168678%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168700168705%_
                             (##unchecked-structure-ref
                              _%self153232168682%_
                              '1
                              '#f
                              'for-each))
                            (_%method168701168706%_
                             (##unchecked-structure-ref
                              _%self153232168682%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168701168706%_
                         _%object168700168705%_
                         _%proc168691%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168707168712%_
                             (##unchecked-structure-ref
                              _%self153232168682%_
                              '1
                              '#f
                              'for-each))
                            (_%method168708168713%_
                             (##unchecked-structure-ref
                              _%self153232168682%_
                              '5
                              '#f
                              'for-each)))
                        (_%method168708168713%_
                         _%object168707168712%_
                         _%proc168691%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168678%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self153475168660%_)
        (let ((_%self153475168662%_ _%self153475168660%_))
          (declare (not safe))
          (let ((_%object168669168674%_
                 (##unchecked-structure-ref
                  _%self153475168662%_
                  '1
                  '#f
                  'length))
                (_%method168670168675%_
                 (##unchecked-structure-ref
                  _%self153475168662%_
                  '6
                  '#f
                  'length)))
            (_%method168670168675%_ _%object168669168674%_)))))
    (define ::HashTable-length
      (lambda (_%self153476168630%_)
        (let* ((_%self153476168632%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153476168630%_)))
               (_%self153476168634%_ _%self153476168632%_))
          (if __DEBUG
              (let ((_%val168650%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object168642168647%_
                              (##unchecked-structure-ref
                               _%self153476168634%_
                               '1
                               '#f
                               'length))
                             (_%method168643168648%_
                              (##unchecked-structure-ref
                               _%self153476168634%_
                               '6
                               '#f
                               'length)))
                         (_%method168643168648%_ _%object168642168647%_)))))
                (if (fixnum? _%val168650%_)
                    _%val168650%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val168650%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object168652168657%_
                       (##unchecked-structure-ref
                        _%self153476168634%_
                        '1
                        '#f
                        'length))
                      (_%method168653168658%_
                       (##unchecked-structure-ref
                        _%self153476168634%_
                        '6
                        '#f
                        'length)))
                  (_%method168653168658%_ _%object168652168657%_)))))))
    (define __HashTable-new__%
      (lambda (_%self153719168594%_ _%size-hint168595%_)
        (let* ((_%self153719168597%_ _%self153719168594%_)
               (_%size-hint168604%_ _%size-hint168595%_))
          (declare (not safe))
          (let ((_%object168612168617%_
                 (##unchecked-structure-ref _%self153719168597%_ '1 '#f 'new))
                (_%method168613168618%_
                 (##unchecked-structure-ref _%self153719168597%_ '7 '#f 'new)))
            (_%method168613168618%_
             _%object168612168617%_
             _%size-hint168604%_)))))
    (define __HashTable-new__0
      (lambda (_%self153719168623%_)
        (let ((_%size-hint168625%_ '#f))
          (__HashTable-new__% _%self153719168623%_ _%size-hint168625%_))))
    (define __HashTable-new
      (lambda _g170403_
        (let ((_g170404_ (let () (declare (not safe)) (##length _g170403_))))
          (cond ((let () (declare (not safe)) (##fx= _g170404_ 1))
                 (apply __HashTable-new__0 _g170403_))
                ((let () (declare (not safe)) (##fx= _g170404_ 2))
                 (apply __HashTable-new__% _g170403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g170403_))))))
    (define ::HashTable-new__%
      (lambda (_%self153720168539%_ _%size-hint168540%_)
        (let* ((_%self153720168542%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153720168539%_)))
               (_%self153720168544%_ _%self153720168542%_))
          (if (or (not _%size-hint168540%_) (fixnum? _%size-hint168540%_))
              (let ((_%size-hint168559%_ _%size-hint168540%_))
                (if __DEBUG
                    (let ((__tmp170405
                           (let ()
                             (declare (not safe))
                             (let ((_%object168568168573%_
                                    (##unchecked-structure-ref
                                     _%self153720168544%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method168569168574%_
                                    (##unchecked-structure-ref
                                     _%self153720168544%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method168569168574%_
                                _%object168568168573%_
                                _%size-hint168559%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170405))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168575168580%_
                             (##unchecked-structure-ref
                              _%self153720168544%_
                              '1
                              '#f
                              'new))
                            (_%method168576168581%_
                             (##unchecked-structure-ref
                              _%self153720168544%_
                              '7
                              '#f
                              'new)))
                        (_%method168576168581%_
                         _%object168575168580%_
                         _%size-hint168559%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint168540%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self153720168586%_)
        (let ((_%size-hint168588%_ '#f))
          (::HashTable-new__% _%self153720168586%_ _%size-hint168588%_))))
    (define ::HashTable-new
      (lambda _g170406_
        (let ((_g170407_ (let () (declare (not safe)) (##length _g170406_))))
          (cond ((let () (declare (not safe)) (##fx= _g170407_ 1))
                 (apply ::HashTable-new__0 _g170406_))
                ((let () (declare (not safe)) (##fx= _g170407_ 2))
                 (apply ::HashTable-new__% _g170406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g170406_))))))
    (define __HashTable-ref
      (lambda (_%self153963168519%_ _%key168520%_ _%default168521%_)
        (let ((_%self153963168523%_ _%self153963168519%_))
          (declare (not safe))
          (let ((_%object168530168535%_
                 (##unchecked-structure-ref _%self153963168523%_ '1 '#f 'ref))
                (_%method168531168536%_
                 (##unchecked-structure-ref _%self153963168523%_ '8 '#f 'ref)))
            (_%method168531168536%_
             _%object168530168535%_
             _%key168520%_
             _%default168521%_)))))
    (define ::HashTable-ref
      (lambda (_%self153964168490%_ _%key168491%_ _%default168492%_)
        (let* ((_%self153964168494%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self153964168490%_)))
               (_%self153964168496%_ _%self153964168494%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168504168509%_
                       (##unchecked-structure-ref
                        _%self153964168496%_
                        '1
                        '#f
                        'ref))
                      (_%method168505168510%_
                       (##unchecked-structure-ref
                        _%self153964168496%_
                        '8
                        '#f
                        'ref)))
                  (_%method168505168510%_
                   _%object168504168509%_
                   _%key168491%_
                   _%default168492%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168511168516%_
                       (##unchecked-structure-ref
                        _%self153964168496%_
                        '1
                        '#f
                        'ref))
                      (_%method168512168517%_
                       (##unchecked-structure-ref
                        _%self153964168496%_
                        '8
                        '#f
                        'ref)))
                  (_%method168512168517%_
                   _%object168511168516%_
                   _%key168491%_
                   _%default168492%_)))))))
    (define __HashTable-set!
      (lambda (_%self154207168471%_ _%key168472%_ _%value168473%_)
        (let ((_%self154207168475%_ _%self154207168471%_))
          (declare (not safe))
          (let ((_%object168482168487%_
                 (##unchecked-structure-ref _%self154207168475%_ '1 '#f 'set!))
                (_%method168483168488%_
                 (##unchecked-structure-ref
                  _%self154207168475%_
                  '9
                  '#f
                  'set!)))
            (_%method168483168488%_
             _%object168482168487%_
             _%key168472%_
             _%value168473%_)))))
    (define ::HashTable-set!
      (lambda (_%self154208168442%_ _%key168443%_ _%value168444%_)
        (let* ((_%self154208168446%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154208168442%_)))
               (_%self154208168448%_ _%self154208168446%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168456168461%_
                       (##unchecked-structure-ref
                        _%self154208168448%_
                        '1
                        '#f
                        'set!))
                      (_%method168457168462%_
                       (##unchecked-structure-ref
                        _%self154208168448%_
                        '9
                        '#f
                        'set!)))
                  (_%method168457168462%_
                   _%object168456168461%_
                   _%key168443%_
                   _%value168444%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168463168468%_
                       (##unchecked-structure-ref
                        _%self154208168448%_
                        '1
                        '#f
                        'set!))
                      (_%method168464168469%_
                       (##unchecked-structure-ref
                        _%self154208168448%_
                        '9
                        '#f
                        'set!)))
                  (_%method168464168469%_
                   _%object168463168468%_
                   _%key168443%_
                   _%value168444%_)))))))
    (define __HashTable-update!
      (lambda (_%self154451168414%_
               _%key168415%_
               _%proc168416%_
               _%default168417%_)
        (let* ((_%self154451168419%_ _%self154451168414%_)
               (_%proc168426%_ _%proc168416%_))
          (declare (not safe))
          (let ((_%object168434168439%_
                 (##unchecked-structure-ref
                  _%self154451168419%_
                  '1
                  '#f
                  'update!))
                (_%method168435168440%_
                 (##unchecked-structure-ref
                  _%self154451168419%_
                  '10
                  '#f
                  'update!)))
            (_%method168435168440%_
             _%object168434168439%_
             _%key168415%_
             _%proc168426%_
             _%default168417%_)))))
    (define ::HashTable-update!
      (lambda (_%self154452168374%_
               _%key168375%_
               _%proc168376%_
               _%default168377%_)
        (let* ((_%self154452168379%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154452168374%_)))
               (_%self154452168381%_ _%self154452168379%_))
          (if (procedure? _%proc168376%_)
              (let ((_%proc168390%_ _%proc168376%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object168399168404%_
                             (##unchecked-structure-ref
                              _%self154452168381%_
                              '1
                              '#f
                              'update!))
                            (_%method168400168405%_
                             (##unchecked-structure-ref
                              _%self154452168381%_
                              '10
                              '#f
                              'update!)))
                        (_%method168400168405%_
                         _%object168399168404%_
                         _%key168375%_
                         _%proc168390%_
                         _%default168377%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object168406168411%_
                             (##unchecked-structure-ref
                              _%self154452168381%_
                              '1
                              '#f
                              'update!))
                            (_%method168407168412%_
                             (##unchecked-structure-ref
                              _%self154452168381%_
                              '10
                              '#f
                              'update!)))
                        (_%method168407168412%_
                         _%object168406168411%_
                         _%key168375%_
                         _%proc168390%_
                         _%default168377%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc168376%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp170408 (cons interface-instance::t '())))
        (declare (not safe))
        (__make-class-type
         'Locker::t
         'Locker
         __tmp170408
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj170394
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj170394
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj170394))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj168372%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj168372%_))))
    (define try-Locker
      (lambda (_%obj168370%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj168370%_))))
    (define Locker?
      (lambda (_%obj168368%_)
        (let ((__tmp170409
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj168368%_ __tmp170409))))
    (define is-Locker?
      (lambda (_%obj168365%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj168365%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self154695168348%_)
        (let ((_%self154695168350%_ _%self154695168348%_))
          (declare (not safe))
          (let ((_%object168357168362%_
                 (##unchecked-structure-ref
                  _%self154695168350%_
                  '1
                  '#f
                  'read-lock!))
                (_%method168358168363%_
                 (##unchecked-structure-ref
                  _%self154695168350%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method168358168363%_ _%object168357168362%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self154696168321%_)
        (let* ((_%self154696168323%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154696168321%_)))
               (_%self154696168325%_ _%self154696168323%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168333168338%_
                       (##unchecked-structure-ref
                        _%self154696168325%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168334168339%_
                       (##unchecked-structure-ref
                        _%self154696168325%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168334168339%_ _%object168333168338%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168340168345%_
                       (##unchecked-structure-ref
                        _%self154696168325%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method168341168346%_
                       (##unchecked-structure-ref
                        _%self154696168325%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method168341168346%_ _%object168340168345%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self154939168304%_)
        (let ((_%self154939168306%_ _%self154939168304%_))
          (declare (not safe))
          (let ((_%object168313168318%_
                 (##unchecked-structure-ref
                  _%self154939168306%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method168314168319%_
                 (##unchecked-structure-ref
                  _%self154939168306%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method168314168319%_ _%object168313168318%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self154940168277%_)
        (let* ((_%self154940168279%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self154940168277%_)))
               (_%self154940168281%_ _%self154940168279%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168289168294%_
                       (##unchecked-structure-ref
                        _%self154940168281%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168290168295%_
                       (##unchecked-structure-ref
                        _%self154940168281%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168290168295%_ _%object168289168294%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168296168301%_
                       (##unchecked-structure-ref
                        _%self154940168281%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method168297168302%_
                       (##unchecked-structure-ref
                        _%self154940168281%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method168297168302%_ _%object168296168301%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self155183168260%_)
        (let ((_%self155183168262%_ _%self155183168260%_))
          (declare (not safe))
          (let ((_%object168269168274%_
                 (##unchecked-structure-ref
                  _%self155183168262%_
                  '1
                  '#f
                  'write-lock!))
                (_%method168270168275%_
                 (##unchecked-structure-ref
                  _%self155183168262%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method168270168275%_ _%object168269168274%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self155184168233%_)
        (let* ((_%self155184168235%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155184168233%_)))
               (_%self155184168237%_ _%self155184168235%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168245168250%_
                       (##unchecked-structure-ref
                        _%self155184168237%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168246168251%_
                       (##unchecked-structure-ref
                        _%self155184168237%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168246168251%_ _%object168245168250%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168252168257%_
                       (##unchecked-structure-ref
                        _%self155184168237%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method168253168258%_
                       (##unchecked-structure-ref
                        _%self155184168237%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method168253168258%_ _%object168252168257%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self155427168216%_)
        (let ((_%self155427168218%_ _%self155427168216%_))
          (declare (not safe))
          (let ((_%object168225168230%_
                 (##unchecked-structure-ref
                  _%self155427168218%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method168226168231%_
                 (##unchecked-structure-ref
                  _%self155427168218%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method168226168231%_ _%object168225168230%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self155428168189%_)
        (let* ((_%self155428168191%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self155428168189%_)))
               (_%self155428168193%_ _%self155428168191%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object168201168206%_
                       (##unchecked-structure-ref
                        _%self155428168193%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168202168207%_
                       (##unchecked-structure-ref
                        _%self155428168193%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168202168207%_ _%object168201168206%_)))
              (let ()
                (declare (not safe))
                (let ((_%object168208168213%_
                       (##unchecked-structure-ref
                        _%self155428168193%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method168209168214%_
                       (##unchecked-structure-ref
                        _%self155428168193%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method168209168214%_ _%object168208168213%_)))))))
    (define __wrap-hash
      (lambda (_%proc168175%_)
        (let ((_%proc168178%_ _%proc168175%_))
          (lambda (_%self168187%_)
            (let ((__tmp170410
                   (let ()
                     (declare (not safe))
                     (_%proc168178%_ _%self168187%_))))
              (declare (not safe))
              (cast HashTable::interface __tmp170410))))))
    (define wrap-hash
      (lambda (_%proc168161%_)
        (if (procedure? _%proc168161%_)
            (let ((_%proc168165%_ _%proc168161%_))
              (__wrap-hash _%proc168165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@42.18-42.22"
               'contract:
               'procedure?
               'value:
               _%proc168161%_)
              '#!void))))
    (define __wrap-hash-new
      (lambda (_%proc168135%_)
        (let* ((_%proc168138%_ _%proc168135%_)
               (_%$%opt-lambda168146168151%_
                (lambda (_%self168148%_ _%size-hint168149%_)
                  (let ((__tmp170411
                         (let ()
                           (declare (not safe))
                           (_%proc168138%_
                            _%self168148%_
                            _%size-hint168149%_))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp170411)))))
          (lambda _g170412_
            (let ((_g170413_
                   (let () (declare (not safe)) (##length _g170412_))))
              (cond ((let () (declare (not safe)) (##fx= _g170413_ 1))
                     (apply (lambda (_%self168154%_)
                              (let ((_%size-hint168156%_ '#f))
                                (_%$%opt-lambda168146168151%_
                                 _%self168154%_
                                 _%size-hint168156%_)))
                            _g170412_))
                    ((let () (declare (not safe)) (##fx= _g170413_ 2))
                     (apply _%$%opt-lambda168146168151%_ _g170412_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g170412_))))))))
    (define wrap-hash-new
      (lambda (_%proc168121%_)
        (if (procedure? _%proc168121%_)
            (let ((_%proc168125%_ _%proc168121%_))
              (__wrap-hash-new _%proc168125%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@46.22-46.26"
               'contract:
               'procedure?
               'value:
               _%proc168121%_)
              '#!void))))
    (let* ((_%klass168084%_ __table::t)
           (_%id168087%_ 'HashTable::ref)
           (_%proc168090%_ raw-table-ref)
           (_%rebind?168093%_ '#f)
           (_%id168098%_ _%id168087%_)
           (_%proc168111%_ _%proc168090%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168084%_
       _%id168098%_
       _%proc168111%_
       _%rebind?168093%_))
    (let* ((_%klass168047%_ __table::t)
           (_%id168050%_ 'HashTable::set!)
           (_%proc168053%_ raw-table-set!)
           (_%rebind?168056%_ '#f)
           (_%id168061%_ _%id168050%_)
           (_%proc168074%_ _%proc168053%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168047%_
       _%id168061%_
       _%proc168074%_
       _%rebind?168056%_))
    (let* ((_%klass168010%_ __table::t)
           (_%id168013%_ 'HashTable::update!)
           (_%proc168016%_ raw-table-update!)
           (_%rebind?168019%_ '#f)
           (_%id168024%_ _%id168013%_)
           (_%proc168037%_ _%proc168016%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168010%_
       _%id168024%_
       _%proc168037%_
       _%rebind?168019%_))
    (let* ((_%klass167973%_ __table::t)
           (_%id167976%_ 'HashTable::delete!)
           (_%proc167979%_ raw-table-delete!)
           (_%rebind?167982%_ '#f)
           (_%id167987%_ _%id167976%_)
           (_%proc168000%_ _%proc167979%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167973%_
       _%id167987%_
       _%proc168000%_
       _%rebind?167982%_))
    (let* ((_%klass167936%_ __table::t)
           (_%id167939%_ 'HashTable::for-each)
           (_%proc167942%_ raw-table-for-each)
           (_%rebind?167945%_ '#f)
           (_%id167950%_ _%id167939%_)
           (_%proc167963%_ _%proc167942%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167936%_
       _%id167950%_
       _%proc167963%_
       _%rebind?167945%_))
    (let* ((_%klass167899%_ __table::t)
           (_%id167902%_ 'HashTable::length)
           (_%proc167905%_ &raw-table-count)
           (_%rebind?167908%_ '#f)
           (_%id167913%_ _%id167902%_)
           (_%proc167926%_ _%proc167905%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167899%_
       _%id167913%_
       _%proc167926%_
       _%rebind?167908%_))
    (let* ((_%klass167847%_ __table::t)
           (_%id167850%_ 'HashTable::copy)
           (_%proc167870%_
            (let* ((_%proc167853%_ raw-table-copy)
                   (_%proc167858%_ _%proc167853%_))
              (__wrap-hash _%proc167858%_)))
           (_%rebind?167873%_ '#f)
           (_%id167878%_ _%id167850%_))
      (if (procedure? _%proc167870%_)
          (let ((_%proc167889%_ _%proc167870%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167847%_
             _%id167878%_
             _%proc167889%_
             _%rebind?167873%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167870%_)
            '#!void)))
    (let* ((_%klass167795%_ __table::t)
           (_%id167798%_ 'HashTable::new)
           (_%proc167818%_
            (let* ((_%proc167801%_ raw-table-new)
                   (_%proc167806%_ _%proc167801%_))
              (__wrap-hash-new _%proc167806%_)))
           (_%rebind?167821%_ '#f)
           (_%id167826%_ _%id167798%_))
      (if (procedure? _%proc167818%_)
          (let ((_%proc167837%_ _%proc167818%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167795%_
             _%id167826%_
             _%proc167837%_
             _%rebind?167821%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167818%_)
            '#!void)))
    (let* ((_%klass167758%_ __table::t)
           (_%id167761%_ 'HashTable::clear!)
           (_%proc167764%_ raw-table-clear!)
           (_%rebind?167767%_ '#f)
           (_%id167772%_ _%id167761%_)
           (_%proc167785%_ _%proc167764%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167758%_
       _%id167772%_
       _%proc167785%_
       _%rebind?167767%_))
    (let* ((_%klass167721%_ __gc-table::t)
           (_%id167724%_ 'HashTable::ref)
           (_%proc167727%_ gc-table-ref)
           (_%rebind?167730%_ '#f)
           (_%id167735%_ _%id167724%_)
           (_%proc167748%_ _%proc167727%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167721%_
       _%id167735%_
       _%proc167748%_
       _%rebind?167730%_))
    (let* ((_%klass167684%_ __gc-table::t)
           (_%id167687%_ 'HashTable::set!)
           (_%proc167690%_ gc-table-set!)
           (_%rebind?167693%_ '#f)
           (_%id167698%_ _%id167687%_)
           (_%proc167711%_ _%proc167690%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167684%_
       _%id167698%_
       _%proc167711%_
       _%rebind?167693%_))
    (let* ((_%klass167647%_ __gc-table::t)
           (_%id167650%_ 'HashTable::update!)
           (_%proc167653%_ gc-table-update!)
           (_%rebind?167656%_ '#f)
           (_%id167661%_ _%id167650%_)
           (_%proc167674%_ _%proc167653%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167647%_
       _%id167661%_
       _%proc167674%_
       _%rebind?167656%_))
    (let* ((_%klass167610%_ __gc-table::t)
           (_%id167613%_ 'HashTable::delete!)
           (_%proc167616%_ gc-table-delete!)
           (_%rebind?167619%_ '#f)
           (_%id167624%_ _%id167613%_)
           (_%proc167637%_ _%proc167616%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167610%_
       _%id167624%_
       _%proc167637%_
       _%rebind?167619%_))
    (let* ((_%klass167573%_ __gc-table::t)
           (_%id167576%_ 'HashTable::for-each)
           (_%proc167579%_ gc-table-for-each)
           (_%rebind?167582%_ '#f)
           (_%id167587%_ _%id167576%_)
           (_%proc167600%_ _%proc167579%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167573%_
       _%id167587%_
       _%proc167600%_
       _%rebind?167582%_))
    (let* ((_%klass167536%_ __gc-table::t)
           (_%id167539%_ 'HashTable::length)
           (_%proc167542%_ gc-table-length)
           (_%rebind?167545%_ '#f)
           (_%id167550%_ _%id167539%_)
           (_%proc167563%_ _%proc167542%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167536%_
       _%id167550%_
       _%proc167563%_
       _%rebind?167545%_))
    (let* ((_%klass167484%_ __gc-table::t)
           (_%id167487%_ 'HashTable::copy)
           (_%proc167507%_
            (let* ((_%proc167490%_ gc-table-copy)
                   (_%proc167495%_ _%proc167490%_))
              (__wrap-hash _%proc167495%_)))
           (_%rebind?167510%_ '#f)
           (_%id167515%_ _%id167487%_))
      (if (procedure? _%proc167507%_)
          (let ((_%proc167526%_ _%proc167507%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167484%_
             _%id167515%_
             _%proc167526%_
             _%rebind?167510%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167507%_)
            '#!void)))
    (let* ((_%klass167432%_ __gc-table::t)
           (_%id167435%_ 'HashTable::new)
           (_%proc167455%_
            (let* ((_%proc167438%_ gc-table-new)
                   (_%proc167443%_ _%proc167438%_))
              (__wrap-hash-new _%proc167443%_)))
           (_%rebind?167458%_ '#f)
           (_%id167463%_ _%id167435%_))
      (if (procedure? _%proc167455%_)
          (let ((_%proc167474%_ _%proc167455%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167432%_
             _%id167463%_
             _%proc167474%_
             _%rebind?167458%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167455%_)
            '#!void)))
    (let* ((_%klass167395%_ __gc-table::t)
           (_%id167398%_ 'HashTable::clear!)
           (_%proc167401%_ gc-table-clear!)
           (_%rebind?167404%_ '#f)
           (_%id167409%_ _%id167398%_)
           (_%proc167422%_ _%proc167401%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167395%_
       _%id167409%_
       _%proc167422%_
       _%rebind?167404%_))
    (define gambit-table-update!
      (lambda (_%table167388%_
               _%key167389%_
               _%update167390%_
               _%default167391%_)
        (let ((_%result167393%_
               (table-ref _%table167388%_ _%key167389%_ _%default167391%_)))
          (table-set!
           _%table167388%_
           _%key167389%_
           (_%update167390%_ _%result167393%_)))))
    (define gambit-table-for-each
      (lambda (_%table167385%_ _%proc167386%_)
        (table-for-each _%proc167386%_ _%table167385%_)))
    (define gambit-table-clear!
      (lambda (_%table167383%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table167383%_ '0 '5 '#f '#f))))
    (let* ((_%klass167346%_ (macro-type-table))
           (_%id167349%_ 'HashTable::ref)
           (_%proc167352%_ table-ref)
           (_%rebind?167355%_ '#f)
           (_%id167360%_ _%id167349%_)
           (_%proc167373%_ _%proc167352%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167346%_
       _%id167360%_
       _%proc167373%_
       _%rebind?167355%_))
    (let* ((_%klass167309%_ (macro-type-table))
           (_%id167312%_ 'HashTable::set!)
           (_%proc167315%_ table-set!)
           (_%rebind?167318%_ '#f)
           (_%id167323%_ _%id167312%_)
           (_%proc167336%_ _%proc167315%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167309%_
       _%id167323%_
       _%proc167336%_
       _%rebind?167318%_))
    (let* ((_%klass167272%_ (macro-type-table))
           (_%id167275%_ 'HashTable::update!)
           (_%proc167278%_ gambit-table-update!)
           (_%rebind?167281%_ '#f)
           (_%id167286%_ _%id167275%_)
           (_%proc167299%_ _%proc167278%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167272%_
       _%id167286%_
       _%proc167299%_
       _%rebind?167281%_))
    (let* ((_%klass167235%_ (macro-type-table))
           (_%id167238%_ 'HashTable::delete!)
           (_%proc167241%_ table-set!)
           (_%rebind?167244%_ '#f)
           (_%id167249%_ _%id167238%_)
           (_%proc167262%_ _%proc167241%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167235%_
       _%id167249%_
       _%proc167262%_
       _%rebind?167244%_))
    (let* ((_%klass167198%_ (macro-type-table))
           (_%id167201%_ 'HashTable::for-each)
           (_%proc167204%_ gambit-table-for-each)
           (_%rebind?167207%_ '#f)
           (_%id167212%_ _%id167201%_)
           (_%proc167225%_ _%proc167204%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167198%_
       _%id167212%_
       _%proc167225%_
       _%rebind?167207%_))
    (let* ((_%klass167161%_ (macro-type-table))
           (_%id167164%_ 'HashTable::length)
           (_%proc167167%_ table-length)
           (_%rebind?167170%_ '#f)
           (_%id167175%_ _%id167164%_)
           (_%proc167188%_ _%proc167167%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167161%_
       _%id167175%_
       _%proc167188%_
       _%rebind?167170%_))
    (let* ((_%klass167109%_ (macro-type-table))
           (_%id167112%_ 'HashTable::copy)
           (_%proc167132%_
            (let* ((_%proc167115%_ table-copy) (_%proc167120%_ _%proc167115%_))
              (__wrap-hash _%proc167120%_)))
           (_%rebind?167135%_ '#f)
           (_%id167140%_ _%id167112%_))
      (if (procedure? _%proc167132%_)
          (let ((_%proc167151%_ _%proc167132%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167109%_
             _%id167140%_
             _%proc167151%_
             _%rebind?167135%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167132%_)
            '#!void)))
    (let* ((_%klass167057%_ (macro-type-table))
           (_%id167060%_ 'HashTable::new)
           (_%proc167080%_
            (let* ((_%proc167063%_ table-new) (_%proc167068%_ _%proc167063%_))
              (__wrap-hash-new _%proc167068%_)))
           (_%rebind?167083%_ '#f)
           (_%id167088%_ _%id167060%_))
      (if (procedure? _%proc167080%_)
          (let ((_%proc167099%_ _%proc167080%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167057%_
             _%id167088%_
             _%proc167099%_
             _%rebind?167083%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167080%_)
            '#!void)))
    (let* ((_%klass167020%_ (macro-type-table))
           (_%id167023%_ 'HashTable::clear!)
           (_%proc167026%_ gambit-table-clear!)
           (_%rebind?167029%_ '#f)
           (_%id167034%_ _%id167023%_)
           (_%proc167047%_ _%proc167026%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167020%_
       _%id167034%_
       _%proc167047%_
       _%rebind?167029%_))
    (define hash-table::t
      (let* ((_%slots166983%_ '(table count free hash test seed lock))
             (_%slot-vector166985%_ (list->vector (cons '#f _%slots166983%_)))
             (_%slot-table167011%_
              (let ((_%slot-table166987%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170416
                       (lambda (_%slot166989%_ _%field166990%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166987%_
                            _%slot166989%_
                            _%field166990%_))
                         (let ((__tmp170417
                                (let ((_%sym166992%_ _%slot166989%_))
                                  (if (symbol? _%sym166992%_)
                                      (let ((_%sym166997%_ _%sym166992%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166997%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166992%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166987%_
                            __tmp170417
                            _%field166990%_))))
                      (__tmp170414
                       (let ((__tmp170415
                              (let ()
                                (declare (not safe))
                                (##length _%slots166983%_))))
                         (declare (not safe))
                         (##iota __tmp170415 '1))))
                  (declare (not safe))
                  (##for-each __tmp170416 _%slots166983%_ __tmp170414))
                _%slot-table166987%_))
             (_%flags167013%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields167015%_ '#())
             (_%properties167017%_
              (cons (cons 'direct-slots: _%slots166983%_) '((struct: . #t))))
             (__tmp170418 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags167013%_
         __table::t
         _%fields167015%_
         __tmp170418
         _%slot-vector166985%_
         _%slot-table167011%_
         _%properties167017%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots166946%_ '(gcht immediate))
             (_%slot-vector166948%_ (list->vector (cons '#f _%slots166946%_)))
             (_%slot-table166974%_
              (let ((_%slot-table166950%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp170421
                       (lambda (_%slot166952%_ _%field166953%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166950%_
                            _%slot166952%_
                            _%field166953%_))
                         (let ((__tmp170422
                                (let ((_%sym166955%_ _%slot166952%_))
                                  (if (symbol? _%sym166955%_)
                                      (let ((_%sym166960%_ _%sym166955%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym166960%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym166955%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table166950%_
                            __tmp170422
                            _%field166953%_))))
                      (__tmp170419
                       (let ((__tmp170420
                              (let ()
                                (declare (not safe))
                                (##length _%slots166946%_))))
                         (declare (not safe))
                         (##iota __tmp170420 '1))))
                  (declare (not safe))
                  (##for-each __tmp170421 _%slots166946%_ __tmp170419))
                _%slot-table166950%_))
             (_%flags166976%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields166978%_ '#())
             (_%properties166980%_
              (cons (cons 'direct-slots: _%slots166946%_) '((struct: . #t))))
             (__tmp170423 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags166976%_
         __gc-table::t
         _%fields166978%_
         __tmp170423
         _%slot-vector166948%_
         _%slot-table166974%_
         _%properties166980%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp170425 (list))
            (__tmp170424
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp170425
         '(table lock)
         __tmp170424
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args166943%_
        (apply make-instance locked-hash-table::t _%$args166943%_)))
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
      (let ((__tmp170427 (list))
            (__tmp170426
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp170427
         '(table key-check)
         __tmp170426
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args166940%_
        (apply make-instance checked-hash-table::t _%$args166940%_)))
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
      (let ((__tmp170429 (list hash-table::t))
            (__tmp170428 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp170429
         '()
         __tmp170428
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args166937%_
        (apply make-instance eq-hash-table::t _%$args166937%_)))
    (define eqv-hash-table::t
      (let ((__tmp170431 (list hash-table::t))
            (__tmp170430 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp170431
         '()
         __tmp170430
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args166934%_
        (apply make-instance eqv-hash-table::t _%$args166934%_)))
    (define symbol-hash-table::t
      (let ((__tmp170433 (list hash-table::t))
            (__tmp170432 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp170433
         '()
         __tmp170432
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args166931%_
        (apply make-instance symbol-hash-table::t _%$args166931%_)))
    (define string-hash-table::t
      (let ((__tmp170435 (list hash-table::t))
            (__tmp170434 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp170435
         '()
         __tmp170434
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args166928%_
        (apply make-instance string-hash-table::t _%$args166928%_)))
    (define immediate-hash-table::t
      (let ((__tmp170437 (list hash-table::t))
            (__tmp170436 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp170437
         '()
         __tmp170436
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args166925%_
        (apply make-instance immediate-hash-table::t _%$args166925%_)))
    (let* ((_%klass166888%_ hash-table::t)
           (_%id166891%_ 'HashTable::ref)
           (_%proc166894%_ raw-table-ref)
           (_%rebind?166897%_ '#f)
           (_%id166902%_ _%id166891%_)
           (_%proc166915%_ _%proc166894%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166888%_
       _%id166902%_
       _%proc166915%_
       _%rebind?166897%_))
    (let* ((_%klass166851%_ hash-table::t)
           (_%id166854%_ 'HashTable::set!)
           (_%proc166857%_ raw-table-set!)
           (_%rebind?166860%_ '#f)
           (_%id166865%_ _%id166854%_)
           (_%proc166878%_ _%proc166857%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166851%_
       _%id166865%_
       _%proc166878%_
       _%rebind?166860%_))
    (let* ((_%klass166814%_ hash-table::t)
           (_%id166817%_ 'HashTable::update!)
           (_%proc166820%_ raw-table-update!)
           (_%rebind?166823%_ '#f)
           (_%id166828%_ _%id166817%_)
           (_%proc166841%_ _%proc166820%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166814%_
       _%id166828%_
       _%proc166841%_
       _%rebind?166823%_))
    (let* ((_%klass166777%_ hash-table::t)
           (_%id166780%_ 'HashTable::delete!)
           (_%proc166783%_ raw-table-delete!)
           (_%rebind?166786%_ '#f)
           (_%id166791%_ _%id166780%_)
           (_%proc166804%_ _%proc166783%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166777%_
       _%id166791%_
       _%proc166804%_
       _%rebind?166786%_))
    (let* ((_%klass166740%_ hash-table::t)
           (_%id166743%_ 'HashTable::for-each)
           (_%proc166746%_ raw-table-for-each)
           (_%rebind?166749%_ '#f)
           (_%id166754%_ _%id166743%_)
           (_%proc166767%_ _%proc166746%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166740%_
       _%id166754%_
       _%proc166767%_
       _%rebind?166749%_))
    (let* ((_%klass166703%_ hash-table::t)
           (_%id166706%_ 'HashTable::length)
           (_%proc166709%_ &raw-table-count)
           (_%rebind?166712%_ '#f)
           (_%id166717%_ _%id166706%_)
           (_%proc166730%_ _%proc166709%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166703%_
       _%id166717%_
       _%proc166730%_
       _%rebind?166712%_))
    (let* ((_%klass166651%_ hash-table::t)
           (_%id166654%_ 'HashTable::copy)
           (_%proc166674%_
            (let* ((_%proc166657%_ raw-table-copy)
                   (_%proc166662%_ _%proc166657%_))
              (__wrap-hash _%proc166662%_)))
           (_%rebind?166677%_ '#f)
           (_%id166682%_ _%id166654%_))
      (if (procedure? _%proc166674%_)
          (let ((_%proc166693%_ _%proc166674%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166651%_
             _%id166682%_
             _%proc166693%_
             _%rebind?166677%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166674%_)
            '#!void)))
    (let* ((_%klass166599%_ hash-table::t)
           (_%id166602%_ 'HashTable::new)
           (_%proc166622%_
            (let* ((_%proc166605%_ raw-table-new)
                   (_%proc166610%_ _%proc166605%_))
              (__wrap-hash-new _%proc166610%_)))
           (_%rebind?166625%_ '#f)
           (_%id166630%_ _%id166602%_))
      (if (procedure? _%proc166622%_)
          (let ((_%proc166641%_ _%proc166622%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass166599%_
             _%id166630%_
             _%proc166641%_
             _%rebind?166625%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc166622%_)
            '#!void)))
    (let* ((_%klass166562%_ hash-table::t)
           (_%id166565%_ 'HashTable::clear!)
           (_%proc166568%_ raw-table-clear!)
           (_%rebind?166571%_ '#f)
           (_%id166576%_ _%id166565%_)
           (_%proc166589%_ _%proc166568%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166562%_
       _%id166576%_
       _%proc166589%_
       _%rebind?166571%_))
    (let* ((_%klass166525%_ eq-hash-table::t)
           (_%id166528%_ 'HashTable::ref)
           (_%proc166531%_ eq-table-ref)
           (_%rebind?166534%_ '#f)
           (_%id166539%_ _%id166528%_)
           (_%proc166552%_ _%proc166531%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166525%_
       _%id166539%_
       _%proc166552%_
       _%rebind?166534%_))
    (let* ((_%klass166488%_ eq-hash-table::t)
           (_%id166491%_ 'HashTable::set!)
           (_%proc166494%_ eq-table-set!)
           (_%rebind?166497%_ '#f)
           (_%id166502%_ _%id166491%_)
           (_%proc166515%_ _%proc166494%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166488%_
       _%id166502%_
       _%proc166515%_
       _%rebind?166497%_))
    (let* ((_%klass166451%_ eq-hash-table::t)
           (_%id166454%_ 'HashTable::update!)
           (_%proc166457%_ eq-table-update!)
           (_%rebind?166460%_ '#f)
           (_%id166465%_ _%id166454%_)
           (_%proc166478%_ _%proc166457%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166451%_
       _%id166465%_
       _%proc166478%_
       _%rebind?166460%_))
    (let* ((_%klass166414%_ eq-hash-table::t)
           (_%id166417%_ 'HashTable::delete!)
           (_%proc166420%_ eq-table-delete!)
           (_%rebind?166423%_ '#f)
           (_%id166428%_ _%id166417%_)
           (_%proc166441%_ _%proc166420%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166414%_
       _%id166428%_
       _%proc166441%_
       _%rebind?166423%_))
    (let* ((_%klass166377%_ eqv-hash-table::t)
           (_%id166380%_ 'HashTable::ref)
           (_%proc166383%_ eqv-table-ref)
           (_%rebind?166386%_ '#f)
           (_%id166391%_ _%id166380%_)
           (_%proc166404%_ _%proc166383%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166377%_
       _%id166391%_
       _%proc166404%_
       _%rebind?166386%_))
    (let* ((_%klass166340%_ eqv-hash-table::t)
           (_%id166343%_ 'HashTable::set!)
           (_%proc166346%_ eqv-table-set!)
           (_%rebind?166349%_ '#f)
           (_%id166354%_ _%id166343%_)
           (_%proc166367%_ _%proc166346%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166340%_
       _%id166354%_
       _%proc166367%_
       _%rebind?166349%_))
    (let* ((_%klass166303%_ eqv-hash-table::t)
           (_%id166306%_ 'HashTable::update!)
           (_%proc166309%_ eqv-table-update!)
           (_%rebind?166312%_ '#f)
           (_%id166317%_ _%id166306%_)
           (_%proc166330%_ _%proc166309%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166303%_
       _%id166317%_
       _%proc166330%_
       _%rebind?166312%_))
    (let* ((_%klass166266%_ eqv-hash-table::t)
           (_%id166269%_ 'HashTable::delete!)
           (_%proc166272%_ eqv-table-delete!)
           (_%rebind?166275%_ '#f)
           (_%id166280%_ _%id166269%_)
           (_%proc166293%_ _%proc166272%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166266%_
       _%id166280%_
       _%proc166293%_
       _%rebind?166275%_))
    (let* ((_%klass166229%_ symbol-hash-table::t)
           (_%id166232%_ 'HashTable::ref)
           (_%proc166235%_ symbolic-table-ref)
           (_%rebind?166238%_ '#f)
           (_%id166243%_ _%id166232%_)
           (_%proc166256%_ _%proc166235%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166229%_
       _%id166243%_
       _%proc166256%_
       _%rebind?166238%_))
    (let* ((_%klass166192%_ symbol-hash-table::t)
           (_%id166195%_ 'HashTable::set!)
           (_%proc166198%_ symbolic-table-set!)
           (_%rebind?166201%_ '#f)
           (_%id166206%_ _%id166195%_)
           (_%proc166219%_ _%proc166198%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166192%_
       _%id166206%_
       _%proc166219%_
       _%rebind?166201%_))
    (let* ((_%klass166155%_ symbol-hash-table::t)
           (_%id166158%_ 'HashTable::update!)
           (_%proc166161%_ symbolic-table-update!)
           (_%rebind?166164%_ '#f)
           (_%id166169%_ _%id166158%_)
           (_%proc166182%_ _%proc166161%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166155%_
       _%id166169%_
       _%proc166182%_
       _%rebind?166164%_))
    (let* ((_%klass166118%_ symbol-hash-table::t)
           (_%id166121%_ 'HashTable::delete!)
           (_%proc166124%_ symbolic-table-delete!)
           (_%rebind?166127%_ '#f)
           (_%id166132%_ _%id166121%_)
           (_%proc166145%_ _%proc166124%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166118%_
       _%id166132%_
       _%proc166145%_
       _%rebind?166127%_))
    (let* ((_%klass166081%_ string-hash-table::t)
           (_%id166084%_ 'HashTable::ref)
           (_%proc166087%_ string-table-ref)
           (_%rebind?166090%_ '#f)
           (_%id166095%_ _%id166084%_)
           (_%proc166108%_ _%proc166087%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166081%_
       _%id166095%_
       _%proc166108%_
       _%rebind?166090%_))
    (let* ((_%klass166044%_ string-hash-table::t)
           (_%id166047%_ 'HashTable::set!)
           (_%proc166050%_ string-table-set!)
           (_%rebind?166053%_ '#f)
           (_%id166058%_ _%id166047%_)
           (_%proc166071%_ _%proc166050%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166044%_
       _%id166058%_
       _%proc166071%_
       _%rebind?166053%_))
    (let* ((_%klass166007%_ string-hash-table::t)
           (_%id166010%_ 'HashTable::update!)
           (_%proc166013%_ string-table-update!)
           (_%rebind?166016%_ '#f)
           (_%id166021%_ _%id166010%_)
           (_%proc166034%_ _%proc166013%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass166007%_
       _%id166021%_
       _%proc166034%_
       _%rebind?166016%_))
    (let* ((_%klass165970%_ string-hash-table::t)
           (_%id165973%_ 'HashTable::delete!)
           (_%proc165976%_ string-table-delete!)
           (_%rebind?165979%_ '#f)
           (_%id165984%_ _%id165973%_)
           (_%proc165997%_ _%proc165976%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165970%_
       _%id165984%_
       _%proc165997%_
       _%rebind?165979%_))
    (let* ((_%klass165933%_ immediate-hash-table::t)
           (_%id165936%_ 'HashTable::ref)
           (_%proc165939%_ immediate-table-ref)
           (_%rebind?165942%_ '#f)
           (_%id165947%_ _%id165936%_)
           (_%proc165960%_ _%proc165939%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165933%_
       _%id165947%_
       _%proc165960%_
       _%rebind?165942%_))
    (let* ((_%klass165896%_ immediate-hash-table::t)
           (_%id165899%_ 'HashTable::set!)
           (_%proc165902%_ immediate-table-set!)
           (_%rebind?165905%_ '#f)
           (_%id165910%_ _%id165899%_)
           (_%proc165923%_ _%proc165902%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165896%_
       _%id165910%_
       _%proc165923%_
       _%rebind?165905%_))
    (let* ((_%klass165859%_ immediate-hash-table::t)
           (_%id165862%_ 'HashTable::update!)
           (_%proc165865%_ immediate-table-update!)
           (_%rebind?165868%_ '#f)
           (_%id165873%_ _%id165862%_)
           (_%proc165886%_ _%proc165865%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165859%_
       _%id165873%_
       _%proc165886%_
       _%rebind?165868%_))
    (let* ((_%klass165822%_ immediate-hash-table::t)
           (_%id165825%_ 'HashTable::delete!)
           (_%proc165828%_ immediate-table-delete!)
           (_%rebind?165831%_ '#f)
           (_%id165836%_ _%id165825%_)
           (_%proc165849%_ _%proc165828%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165822%_
       _%id165836%_
       _%proc165849%_
       _%rebind?165831%_))
    (let* ((_%klass165785%_ gc-hash-table::t)
           (_%id165788%_ 'HashTable::ref)
           (_%proc165791%_ gc-table-ref)
           (_%rebind?165794%_ '#f)
           (_%id165799%_ _%id165788%_)
           (_%proc165812%_ _%proc165791%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165785%_
       _%id165799%_
       _%proc165812%_
       _%rebind?165794%_))
    (let* ((_%klass165748%_ gc-hash-table::t)
           (_%id165751%_ 'HashTable::set!)
           (_%proc165754%_ gc-table-set!)
           (_%rebind?165757%_ '#f)
           (_%id165762%_ _%id165751%_)
           (_%proc165775%_ _%proc165754%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165748%_
       _%id165762%_
       _%proc165775%_
       _%rebind?165757%_))
    (let* ((_%klass165711%_ gc-hash-table::t)
           (_%id165714%_ 'HashTable::update!)
           (_%proc165717%_ gc-table-update!)
           (_%rebind?165720%_ '#f)
           (_%id165725%_ _%id165714%_)
           (_%proc165738%_ _%proc165717%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165711%_
       _%id165725%_
       _%proc165738%_
       _%rebind?165720%_))
    (let* ((_%klass165674%_ gc-hash-table::t)
           (_%id165677%_ 'HashTable::delete!)
           (_%proc165680%_ gc-table-delete!)
           (_%rebind?165683%_ '#f)
           (_%id165688%_ _%id165677%_)
           (_%proc165701%_ _%proc165680%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165674%_
       _%id165688%_
       _%proc165701%_
       _%rebind?165683%_))
    (let* ((_%klass165637%_ gc-hash-table::t)
           (_%id165640%_ 'HashTable::for-each)
           (_%proc165643%_ gc-table-for-each)
           (_%rebind?165646%_ '#f)
           (_%id165651%_ _%id165640%_)
           (_%proc165664%_ _%proc165643%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165637%_
       _%id165651%_
       _%proc165664%_
       _%rebind?165646%_))
    (let* ((_%klass165600%_ gc-hash-table::t)
           (_%id165603%_ 'HashTable::length)
           (_%proc165606%_ gc-table-length)
           (_%rebind?165609%_ '#f)
           (_%id165614%_ _%id165603%_)
           (_%proc165627%_ _%proc165606%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165600%_
       _%id165614%_
       _%proc165627%_
       _%rebind?165609%_))
    (let* ((_%klass165548%_ gc-hash-table::t)
           (_%id165551%_ 'HashTable::copy)
           (_%proc165571%_
            (let* ((_%proc165554%_ gc-table-copy)
                   (_%proc165559%_ _%proc165554%_))
              (__wrap-hash _%proc165559%_)))
           (_%rebind?165574%_ '#f)
           (_%id165579%_ _%id165551%_))
      (if (procedure? _%proc165571%_)
          (let ((_%proc165590%_ _%proc165571%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165548%_
             _%id165579%_
             _%proc165590%_
             _%rebind?165574%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165571%_)
            '#!void)))
    (let* ((_%klass165496%_ gc-hash-table::t)
           (_%id165499%_ 'HashTable::new)
           (_%proc165519%_
            (let* ((_%proc165502%_ gc-table-new)
                   (_%proc165507%_ _%proc165502%_))
              (__wrap-hash-new _%proc165507%_)))
           (_%rebind?165522%_ '#f)
           (_%id165527%_ _%id165499%_))
      (if (procedure? _%proc165519%_)
          (let ((_%proc165538%_ _%proc165519%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass165496%_
             _%id165527%_
             _%proc165538%_
             _%rebind?165522%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc165519%_)
            '#!void)))
    (let* ((_%klass165459%_ gc-hash-table::t)
           (_%id165462%_ 'HashTable::clear!)
           (_%proc165465%_ gc-table-clear!)
           (_%rebind?165468%_ '#f)
           (_%id165473%_ _%id165462%_)
           (_%proc165486%_ _%proc165465%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165459%_
       _%id165473%_
       _%proc165486%_
       _%rebind?165468%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref156293%_
      (lambda (_%self165380%_ _%key165382%_ _%default165383%_)
        (let* ((_%self165386%_ _%self165380%_)
               (_%key165395%_ _%key165382%_)
               (_%default165403%_ _%default165383%_))
          (let ((_%h165412%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165386%_ '1 '#f '#f)))
                (_%l165414%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165386%_ '2 '#f '#f))))
            (let ((__tmp170440
                   (lambda ()
                     (let ((_%self154693165418%_ _%l165414%_))
                       (declare (not safe))
                       (let ((_%object165421165426%_
                              (##unchecked-structure-ref
                               _%self154693165418%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method165422165427%_
                              (##unchecked-structure-ref
                               _%self154693165418%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method165422165427%_ _%object165421165426%_)))))
                  (__tmp170439
                   (lambda ()
                     (let* ((_%self153961165430%_ _%h165412%_)
                            (_%key165433%_ _%key165395%_)
                            (_%default165436%_ _%default165403%_))
                       (declare (not safe))
                       (let ((_%object165439165444%_
                              (##unchecked-structure-ref
                               _%self153961165430%_
                               '1
                               '#f
                               'ref))
                             (_%method165440165445%_
                              (##unchecked-structure-ref
                               _%self153961165430%_
                               '8
                               '#f
                               'ref)))
                         (_%method165440165445%_
                          _%object165439165444%_
                          _%key165433%_
                          _%default165436%_)))))
                  (__tmp170438
                   (lambda ()
                     (let ((_%self154937165448%_ _%l165414%_))
                       (declare (not safe))
                       (let ((_%object165451165456%_
                              (##unchecked-structure-ref
                               _%self154937165448%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method165452165457%_
                              (##unchecked-structure-ref
                               _%self154937165448%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method165452165457%_ _%object165451165456%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170440 __tmp170439 __tmp170438))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref156293%_
       '#f))
    (define _%locked-hash-table::HashTable::set!156295%_
      (lambda (_%self165178%_ _%key165180%_ _%value165181%_)
        (let* ((_%self165184%_ _%self165178%_)
               (_%key165193%_ _%key165180%_)
               (_%value165201%_ _%value165181%_))
          (let ((_%h165210%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165184%_ '1 '#f '#f)))
                (_%l165212%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165184%_ '2 '#f '#f))))
            (let ((__tmp170443
                   (lambda ()
                     (let ((_%self155181165216%_ _%l165212%_))
                       (declare (not safe))
                       (let ((_%object165219165224%_
                              (##unchecked-structure-ref
                               _%self155181165216%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165220165225%_
                              (##unchecked-structure-ref
                               _%self155181165216%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165220165225%_ _%object165219165224%_)))))
                  (__tmp170442
                   (lambda ()
                     (let* ((_%self154205165228%_ _%h165210%_)
                            (_%key165231%_ _%key165193%_)
                            (_%value165234%_ _%value165201%_))
                       (declare (not safe))
                       (let ((_%object165237165242%_
                              (##unchecked-structure-ref
                               _%self154205165228%_
                               '1
                               '#f
                               'set!))
                             (_%method165238165243%_
                              (##unchecked-structure-ref
                               _%self154205165228%_
                               '9
                               '#f
                               'set!)))
                         (_%method165238165243%_
                          _%object165237165242%_
                          _%key165231%_
                          _%value165234%_)))))
                  (__tmp170441
                   (lambda ()
                     (let ((_%self155425165246%_ _%l165212%_))
                       (declare (not safe))
                       (let ((_%object165249165254%_
                              (##unchecked-structure-ref
                               _%self155425165246%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165250165255%_
                              (##unchecked-structure-ref
                               _%self155425165246%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165250165255%_ _%object165249165254%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170443 __tmp170442 __tmp170441))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!156295%_
       '#f))
    (define _%locked-hash-table::HashTable::update!156297%_
      (lambda (_%self164964%_ _%key164966%_ _%update164967%_ _%default164968%_)
        (let* ((_%self164971%_ _%self164964%_)
               (_%key164980%_ _%key164966%_)
               (_%update164988%_ _%update164967%_)
               (_%default164996%_ _%default164968%_))
          (let ((_%h165005%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164971%_ '1 '#f '#f)))
                (_%l165007%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164971%_ '2 '#f '#f))))
            (let ((__tmp170446
                   (lambda ()
                     (let ((_%self155181165011%_ _%l165007%_))
                       (declare (not safe))
                       (let ((_%object165014165019%_
                              (##unchecked-structure-ref
                               _%self155181165011%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165015165020%_
                              (##unchecked-structure-ref
                               _%self155181165011%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165015165020%_ _%object165014165019%_)))))
                  (__tmp170445
                   (lambda ()
                     (let* ((_%self154449165023%_ _%h165005%_)
                            (_%key165026%_ _%key164980%_)
                            (_%proc165029%_ _%update164988%_)
                            (_%default165032%_ _%default164996%_))
                       (declare (not safe))
                       (let ((_%object165035165040%_
                              (##unchecked-structure-ref
                               _%self154449165023%_
                               '1
                               '#f
                               'update!))
                             (_%method165036165041%_
                              (##unchecked-structure-ref
                               _%self154449165023%_
                               '10
                               '#f
                               'update!)))
                         (_%method165036165041%_
                          _%object165035165040%_
                          _%key165026%_
                          _%proc165029%_
                          _%default165032%_)))))
                  (__tmp170444
                   (lambda ()
                     (let ((_%self155425165044%_ _%l165007%_))
                       (declare (not safe))
                       (let ((_%object165047165052%_
                              (##unchecked-structure-ref
                               _%self155425165044%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165048165053%_
                              (##unchecked-structure-ref
                               _%self155425165044%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165048165053%_ _%object165047165052%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170446 __tmp170445 __tmp170444))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!156297%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!156299%_
      (lambda (_%self164774%_ _%key164776%_)
        (let* ((_%self164779%_ _%self164774%_) (_%key164788%_ _%key164776%_))
          (let ((_%h164797%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164779%_ '1 '#f '#f)))
                (_%l164799%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164779%_ '2 '#f '#f))))
            (let ((__tmp170449
                   (lambda ()
                     (let ((_%self155181164803%_ _%l164799%_))
                       (declare (not safe))
                       (let ((_%object164806164811%_
                              (##unchecked-structure-ref
                               _%self155181164803%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method164807164812%_
                              (##unchecked-structure-ref
                               _%self155181164803%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method164807164812%_ _%object164806164811%_)))))
                  (__tmp170448
                   (lambda ()
                     (let* ((_%self152985164815%_ _%h164797%_)
                            (_%key164818%_ _%key164788%_))
                       (declare (not safe))
                       (let ((_%object164821164826%_
                              (##unchecked-structure-ref
                               _%self152985164815%_
                               '1
                               '#f
                               'delete!))
                             (_%method164822164827%_
                              (##unchecked-structure-ref
                               _%self152985164815%_
                               '4
                               '#f
                               'delete!)))
                         (_%method164822164827%_
                          _%object164821164826%_
                          _%key164818%_)))))
                  (__tmp170447
                   (lambda ()
                     (let ((_%self155425164830%_ _%l164799%_))
                       (declare (not safe))
                       (let ((_%object164833164838%_
                              (##unchecked-structure-ref
                               _%self155425164830%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method164834164839%_
                              (##unchecked-structure-ref
                               _%self155425164830%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method164834164839%_ _%object164833164838%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170449 __tmp170448 __tmp170447))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!156299%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each156301%_
      (lambda (_%self164584%_ _%proc164586%_)
        (let* ((_%self164589%_ _%self164584%_) (_%proc164598%_ _%proc164586%_))
          (let ((_%h164607%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164589%_ '1 '#f '#f)))
                (_%l164609%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164589%_ '2 '#f '#f))))
            (let ((__tmp170452
                   (lambda ()
                     (let ((_%self154693164613%_ _%l164609%_))
                       (declare (not safe))
                       (let ((_%object164616164621%_
                              (##unchecked-structure-ref
                               _%self154693164613%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method164617164622%_
                              (##unchecked-structure-ref
                               _%self154693164613%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method164617164622%_ _%object164616164621%_)))))
                  (__tmp170451
                   (lambda ()
                     (let* ((_%self153229164625%_ _%h164607%_)
                            (_%proc164628%_ _%proc164598%_))
                       (declare (not safe))
                       (let ((_%object164631164636%_
                              (##unchecked-structure-ref
                               _%self153229164625%_
                               '1
                               '#f
                               'for-each))
                             (_%method164632164637%_
                              (##unchecked-structure-ref
                               _%self153229164625%_
                               '5
                               '#f
                               'for-each)))
                         (_%method164632164637%_
                          _%object164631164636%_
                          _%proc164628%_)))))
                  (__tmp170450
                   (lambda ()
                     (let ((_%self154937164640%_ _%l164609%_))
                       (declare (not safe))
                       (let ((_%object164643164648%_
                              (##unchecked-structure-ref
                               _%self154937164640%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method164644164649%_
                              (##unchecked-structure-ref
                               _%self154937164640%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method164644164649%_ _%object164643164648%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170452 __tmp170451 __tmp170450))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each156301%_
       '#f))
    (define _%locked-hash-table::HashTable::length156303%_
      (lambda (_%self164399%_)
        (let ((_%self164403%_ _%self164399%_))
          (let ((_%h164413%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164403%_ '1 '#f '#f)))
                (_%l164415%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164403%_ '2 '#f '#f))))
            (let* ((_%$%g164417164419%_
                    (let ((__tmp170455
                           (lambda ()
                             (let ((_%self154693164426%_ _%l164415%_))
                               (declare (not safe))
                               (let ((_%object164429164434%_
                                      (##unchecked-structure-ref
                                       _%self154693164426%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method164430164435%_
                                      (##unchecked-structure-ref
                                       _%self154693164426%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method164430164435%_
                                  _%object164429164434%_)))))
                          (__tmp170454
                           (lambda ()
                             (let ((_%self153473164438%_ _%h164413%_))
                               (declare (not safe))
                               (let ((_%object164441164446%_
                                      (##unchecked-structure-ref
                                       _%self153473164438%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method164442164447%_
                                      (##unchecked-structure-ref
                                       _%self153473164438%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method164442164447%_
                                  _%object164441164446%_)))))
                          (__tmp170453
                           (lambda ()
                             (let ((_%self154937164450%_ _%l164415%_))
                               (declare (not safe))
                               (let ((_%object164453164458%_
                                      (##unchecked-structure-ref
                                       _%self154937164450%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method164454164459%_
                                      (##unchecked-structure-ref
                                       _%self154937164450%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method164454164459%_
                                  _%object164453164458%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp170455 __tmp170454 __tmp170453)))
                   (_%val164422%_ _%$%g164417164419%_))
              (if (fixnum? _%val164422%_)
                  _%val164422%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val164422%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length156303%_
       '#f))
    (define _%locked-hash-table::HashTable::copy156305%_
      (lambda (_%self164221%_)
        (let ((_%self164225%_ _%self164221%_))
          (let ((_%h164235%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164225%_ '1 '#f '#f)))
                (_%l164237%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self164225%_ '2 '#f '#f))))
            (let ((__tmp170456
                   (let ((__tmp170459
                          (lambda ()
                            (let ((_%self154693164241%_ _%l164237%_))
                              (declare (not safe))
                              (let ((_%object164244164249%_
                                     (##unchecked-structure-ref
                                      _%self154693164241%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method164245164250%_
                                     (##unchecked-structure-ref
                                      _%self154693164241%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method164245164250%_
                                 _%object164244164249%_)))))
                         (__tmp170458
                          (lambda ()
                            (let ((_%self152741164253%_ _%h164235%_))
                              (declare (not safe))
                              (let ((_%object164256164261%_
                                     (##unchecked-structure-ref
                                      _%self152741164253%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method164257164262%_
                                     (##unchecked-structure-ref
                                      _%self152741164253%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method164257164262%_
                                 _%object164256164261%_)))))
                         (__tmp170457
                          (lambda ()
                            (let ((_%self154937164265%_ _%l164237%_))
                              (declare (not safe))
                              (let ((_%object164268164273%_
                                     (##unchecked-structure-ref
                                      _%self154937164265%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method164269164274%_
                                     (##unchecked-structure-ref
                                      _%self154937164265%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method164269164274%_
                                 _%object164268164273%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp170459 __tmp170458 __tmp170457))))
              (declare (not safe))
              (cast HashTable::interface __tmp170456))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy156305%_
       '#f))
    (define _%locked-hash-table::HashTable::new156307%_
      (lambda (_%self164023%_ _%size-hint164025%_)
        (let ((_%self164028%_ _%self164023%_))
          (if (or (not _%size-hint164025%_) (fixnum? _%size-hint164025%_))
              (let ((_%size-hint164044%_ _%size-hint164025%_))
                (let ((_%h164054%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self164028%_
                          '1
                          '#f
                          '#f)))
                      (_%l164056%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self164028%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp170460
                         (let ((__tmp170463
                                (lambda ()
                                  (let ((_%self154693164060%_ _%l164056%_))
                                    (declare (not safe))
                                    (let ((_%object164063164068%_
                                           (##unchecked-structure-ref
                                            _%self154693164060%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method164064164069%_
                                           (##unchecked-structure-ref
                                            _%self154693164060%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method164064164069%_
                                       _%object164063164068%_)))))
                               (__tmp170462
                                (lambda ()
                                  (let* ((_%self153717164072%_ _%h164054%_)
                                         (_%size-hint164075%_
                                          _%size-hint164044%_))
                                    (declare (not safe))
                                    (let ((_%object164078164083%_
                                           (##unchecked-structure-ref
                                            _%self153717164072%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method164079164084%_
                                           (##unchecked-structure-ref
                                            _%self153717164072%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method164079164084%_
                                       _%object164078164083%_
                                       _%size-hint164075%_)))))
                               (__tmp170461
                                (lambda ()
                                  (let ((_%self154937164087%_ _%l164056%_))
                                    (declare (not safe))
                                    (let ((_%object164090164095%_
                                           (##unchecked-structure-ref
                                            _%self154937164087%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method164091164096%_
                                           (##unchecked-structure-ref
                                            _%self154937164087%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method164091164096%_
                                       _%object164090164095%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp170463
                            __tmp170462
                            __tmp170461))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp170460))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@317.29-317.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint164025%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new156307%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!156309%_
      (lambda (_%self163845%_)
        (let ((_%self163849%_ _%self163845%_))
          (let ((_%h163859%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163849%_ '1 '#f '#f)))
                (_%l163861%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self163849%_ '2 '#f '#f))))
            (let ((__tmp170466
                   (lambda ()
                     (let ((_%self155181163865%_ _%l163861%_))
                       (declare (not safe))
                       (let ((_%object163868163873%_
                              (##unchecked-structure-ref
                               _%self155181163865%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method163869163874%_
                              (##unchecked-structure-ref
                               _%self155181163865%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method163869163874%_ _%object163868163873%_)))))
                  (__tmp170465
                   (lambda ()
                     (let ((_%self152496163877%_ _%h163859%_))
                       (declare (not safe))
                       (let ((_%object163880163885%_
                              (##unchecked-structure-ref
                               _%self152496163877%_
                               '1
                               '#f
                               'clear!))
                             (_%method163881163886%_
                              (##unchecked-structure-ref
                               _%self152496163877%_
                               '2
                               '#f
                               'clear!)))
                         (_%method163881163886%_ _%object163880163885%_)))))
                  (__tmp170464
                   (lambda ()
                     (let ((_%self155425163889%_ _%l163861%_))
                       (declare (not safe))
                       (let ((_%object163892163897%_
                              (##unchecked-structure-ref
                               _%self155425163889%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method163893163898%_
                              (##unchecked-structure-ref
                               _%self155425163889%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method163893163898%_ _%object163892163897%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp170466 __tmp170465 __tmp170464))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!156309%_
       '#f))
    (let* ((_%klass163685%_ (macro-type-mutex))
           (_%id163688%_ 'Locker::read-lock!)
           (_%proc163691%_ mutex-lock!)
           (_%rebind?163694%_ '#f)
           (_%id163699%_ _%id163688%_)
           (_%proc163712%_ _%proc163691%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163685%_
       _%id163699%_
       _%proc163712%_
       _%rebind?163694%_))
    (let* ((_%klass163648%_ (macro-type-mutex))
           (_%id163651%_ 'Locker::read-unlock!)
           (_%proc163654%_ mutex-unlock!)
           (_%rebind?163657%_ '#f)
           (_%id163662%_ _%id163651%_)
           (_%proc163675%_ _%proc163654%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163648%_
       _%id163662%_
       _%proc163675%_
       _%rebind?163657%_))
    (let* ((_%klass163611%_ (macro-type-mutex))
           (_%id163614%_ 'Locker::write-lock!)
           (_%proc163617%_ mutex-lock!)
           (_%rebind?163620%_ '#f)
           (_%id163625%_ _%id163614%_)
           (_%proc163638%_ _%proc163617%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163611%_
       _%id163625%_
       _%proc163638%_
       _%rebind?163620%_))
    (let* ((_%klass163574%_ (macro-type-mutex))
           (_%id163577%_ 'Locker::write-unlock!)
           (_%proc163580%_ mutex-unlock!)
           (_%rebind?163583%_ '#f)
           (_%id163588%_ _%id163577%_)
           (_%proc163601%_ _%proc163580%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass163574%_
       _%id163588%_
       _%proc163601%_
       _%rebind?163583%_))
    (define _%checked-hash-table::HashTable::ref156520%_
      (lambda (_%self163515%_ _%key163516%_ _%default163517%_)
        (let* ((_%self163520%_ _%self163515%_)
               (_%key163529%_ _%key163516%_)
               (_%default163537%_ _%default163517%_))
          (declare (not safe))
          (let ((_%h163548%_
                 (##unchecked-structure-ref _%self163520%_ '1 '#f '#f))
                (_%key?163550%_
                 (##unchecked-structure-ref _%self163520%_ '2 '#f '#f)))
            (if (_%key?163550%_ _%key163529%_)
                (let* ((_%self153961163557%_ _%h163548%_)
                       (_%key163560%_ _%key163529%_)
                       (_%default163563%_ _%default163537%_))
                  (declare (not safe))
                  (let ((_%object163566163571%_
                         (##unchecked-structure-ref
                          _%self153961163557%_
                          '1
                          '#f
                          'ref))
                        (_%method163567163572%_
                         (##unchecked-structure-ref
                          _%self153961163557%_
                          '8
                          '#f
                          'ref)))
                    (_%method163567163572%_
                     _%object163566163571%_
                     _%key163560%_
                     _%default163563%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key163529%_ (cons _%default163537%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref156520%_
       '#f))
    (define _%checked-hash-table::HashTable::set!156522%_
      (lambda (_%self163333%_ _%key163334%_ _%value163335%_)
        (let* ((_%self163338%_ _%self163333%_)
               (_%key163347%_ _%key163334%_)
               (_%value163355%_ _%value163335%_))
          (declare (not safe))
          (let ((_%h163366%_
                 (##unchecked-structure-ref _%self163338%_ '1 '#f '#f))
                (_%key?163368%_
                 (##unchecked-structure-ref _%self163338%_ '2 '#f '#f)))
            (if (_%key?163368%_ _%key163347%_)
                (let* ((_%self154205163375%_ _%h163366%_)
                       (_%key163378%_ _%key163347%_)
                       (_%value163381%_ _%value163355%_))
                  (declare (not safe))
                  (let ((_%object163384163389%_
                         (##unchecked-structure-ref
                          _%self154205163375%_
                          '1
                          '#f
                          'set!))
                        (_%method163385163390%_
                         (##unchecked-structure-ref
                          _%self154205163375%_
                          '9
                          '#f
                          'set!)))
                    (_%method163385163390%_
                     _%object163384163389%_
                     _%key163378%_
                     _%value163381%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key163347%_ (cons _%value163355%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!156522%_
       '#f))
    (define _%checked-hash-table::HashTable::update!156524%_
      (lambda (_%self163138%_ _%key163139%_ _%update163140%_ _%default163141%_)
        (let* ((_%self163144%_ _%self163138%_)
               (_%key163153%_ _%key163139%_)
               (_%update163161%_ _%update163140%_)
               (_%default163169%_ _%default163141%_))
          (declare (not safe))
          (let ((_%h163180%_
                 (##unchecked-structure-ref _%self163144%_ '1 '#f '#f))
                (_%key?163182%_
                 (##unchecked-structure-ref _%self163144%_ '2 '#f '#f)))
            (if (_%key?163182%_ _%key163153%_)
                (let* ((_%self154449163190%_ _%h163180%_)
                       (_%key163193%_ _%key163153%_)
                       (_%proc163196%_ _%update163161%_)
                       (_%default163199%_ _%default163169%_))
                  (declare (not safe))
                  (let ((_%object163202163207%_
                         (##unchecked-structure-ref
                          _%self154449163190%_
                          '1
                          '#f
                          'update!))
                        (_%method163203163208%_
                         (##unchecked-structure-ref
                          _%self154449163190%_
                          '10
                          '#f
                          'update!)))
                    (_%method163203163208%_
                     _%object163202163207%_
                     _%key163193%_
                     _%proc163196%_
                     _%default163199%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key163153%_
                         (cons _%update163161%_ (cons _%default163169%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!156524%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!156526%_
      (lambda (_%self162969%_ _%key162970%_)
        (let* ((_%self162973%_ _%self162969%_) (_%key162982%_ _%key162970%_))
          (declare (not safe))
          (let ((_%h162993%_
                 (##unchecked-structure-ref _%self162973%_ '1 '#f '#f))
                (_%key?162995%_
                 (##unchecked-structure-ref _%self162973%_ '2 '#f '#f)))
            (if (_%key?162995%_ _%key162982%_)
                (let* ((_%self152985163001%_ _%h162993%_)
                       (_%key163004%_ _%key162982%_))
                  (declare (not safe))
                  (let ((_%object163007163012%_
                         (##unchecked-structure-ref
                          _%self152985163001%_
                          '1
                          '#f
                          'delete!))
                        (_%method163008163013%_
                         (##unchecked-structure-ref
                          _%self152985163001%_
                          '4
                          '#f
                          'delete!)))
                    (_%method163008163013%_
                     _%object163007163012%_
                     _%key163004%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key162982%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!156526%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each156528%_
      (lambda (_%self162800%_ _%proc162801%_)
        (let* ((_%self162804%_ _%self162800%_) (_%proc162813%_ _%proc162801%_))
          (declare (not safe))
          (let ((_%h162824%_
                 (##unchecked-structure-ref _%self162804%_ '1 '#f '#f))
                (_%key?162826%_
                 (##unchecked-structure-ref _%self162804%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self153229162832%_ _%h162824%_)
                       (_%proc162835%_ _%proc162813%_))
                  (declare (not safe))
                  (let ((_%object162838162843%_
                         (##unchecked-structure-ref
                          _%self153229162832%_
                          '1
                          '#f
                          'for-each))
                        (_%method162839162844%_
                         (##unchecked-structure-ref
                          _%self153229162832%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162839162844%_
                     _%object162838162843%_
                     _%proc162835%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc162813%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each156528%_
       '#f))
    (define _%checked-hash-table::HashTable::length156530%_
      (lambda (_%self162646%_)
        (let ((_%self162649%_ _%self162646%_))
          (declare (not safe))
          (let ((_%h162661%_
                 (##unchecked-structure-ref _%self162649%_ '1 '#f '#f))
                (_%key?162663%_
                 (##unchecked-structure-ref _%self162649%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self153473162666%_ _%h162661%_))
                  (declare (not safe))
                  (let ((_%object162669162674%_
                         (##unchecked-structure-ref
                          _%self153473162666%_
                          '1
                          '#f
                          'length))
                        (_%method162670162675%_
                         (##unchecked-structure-ref
                          _%self153473162666%_
                          '6
                          '#f
                          'length)))
                    (_%method162670162675%_ _%object162669162674%_)))
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
       _%checked-hash-table::HashTable::length156530%_
       '#f))
    (define _%checked-hash-table::HashTable::copy156532%_
      (lambda (_%self162492%_)
        (let ((_%self162495%_ _%self162492%_))
          (declare (not safe))
          (let ((_%h162507%_
                 (##unchecked-structure-ref _%self162495%_ '1 '#f '#f))
                (_%key?162509%_
                 (##unchecked-structure-ref _%self162495%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152741162512%_ _%h162507%_))
                  (declare (not safe))
                  (let ((_%object162515162520%_
                         (##unchecked-structure-ref
                          _%self152741162512%_
                          '1
                          '#f
                          'copy))
                        (_%method162516162521%_
                         (##unchecked-structure-ref
                          _%self152741162512%_
                          '3
                          '#f
                          'copy)))
                    (_%method162516162521%_ _%object162515162520%_)))
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
       _%checked-hash-table::HashTable::copy156532%_
       '#f))
    (define _%checked-hash-table::HashTable::new156534%_
      (lambda (_%self162318%_ _%size-hint162319%_)
        (let ((_%self162322%_ _%self162318%_))
          (if (or (not _%size-hint162319%_) (fixnum? _%size-hint162319%_))
              (let ((_%size-hint162338%_ _%size-hint162319%_))
                (declare (not safe))
                (let ((_%h162350%_
                       (##unchecked-structure-ref _%self162322%_ '1 '#f '#f))
                      (_%key?162352%_
                       (##unchecked-structure-ref _%self162322%_ '2 '#f '#f)))
                  (if '#!void
                      (let* ((_%self153717162355%_ _%h162350%_)
                             (_%size-hint162358%_ _%size-hint162338%_))
                        (declare (not safe))
                        (let ((_%object162361162366%_
                               (##unchecked-structure-ref
                                _%self153717162355%_
                                '1
                                '#f
                                'new))
                              (_%method162362162367%_
                               (##unchecked-structure-ref
                                _%self153717162355%_
                                '7
                                '#f
                                'new)))
                          (_%method162362162367%_
                           _%object162361162366%_
                           _%size-hint162358%_)))
                      (begin
                        (raise-contract-violation-error
                         '"invalid key"
                         'context:
                         '&HashTable-new
                         'value:
                         (cons _%size-hint162338%_ '()))
                        '#!void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@376.35-376.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint162319%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new156534%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!156536%_
      (lambda (_%self162164%_)
        (let ((_%self162167%_ _%self162164%_))
          (declare (not safe))
          (let ((_%h162179%_
                 (##unchecked-structure-ref _%self162167%_ '1 '#f '#f))
                (_%key?162181%_
                 (##unchecked-structure-ref _%self162167%_ '2 '#f '#f)))
            (if '#!void
                (let ((_%self152496162184%_ _%h162179%_))
                  (declare (not safe))
                  (let ((_%object162187162192%_
                         (##unchecked-structure-ref
                          _%self152496162184%_
                          '1
                          '#f
                          'clear!))
                        (_%method162188162193%_
                         (##unchecked-structure-ref
                          _%self152496162184%_
                          '2
                          '#f
                          'clear!)))
                    (_%method162188162193%_ _%object162187162192%_)))
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
       _%checked-hash-table::HashTable::clear!156536%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table162013%_
               _%count162014%_
               _%free162015%_
               _%hash162016%_
               _%test162017%_
               _%seed162018%_
               _%lock162019%_)
        (let ((__tmp170467
               (let () (declare (not safe)) (ensure-lock _%lock162019%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table162013%_
           _%count162014%_
           _%free162015%_
           _%hash162016%_
           _%test162017%_
           _%seed162018%_
           __tmp170467))))
    (define make-generic-hash-table__0
      (lambda (_%table162024%_
               _%count162025%_
               _%free162026%_
               _%hash162027%_
               _%test162028%_
               _%seed162029%_)
        (let ((_%lock162031%_ '#f))
          (make-generic-hash-table__%
           _%table162024%_
           _%count162025%_
           _%free162026%_
           _%hash162027%_
           _%test162028%_
           _%seed162029%_
           _%lock162031%_))))
    (define make-generic-hash-table
      (lambda _g170468_
        (let ((_g170469_ (let () (declare (not safe)) (##length _g170468_))))
          (cond ((let () (declare (not safe)) (##fx= _g170469_ 6))
                 (apply make-generic-hash-table__0 _g170468_))
                ((let () (declare (not safe)) (##fx= _g170469_ 7))
                 (apply make-generic-hash-table__% _g170468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g170468_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords161440%_
               _%$%size-hint161430161441%_
               _%$%seed161431161442%_
               _%$%test161432161443%_
               _%$%hash161433161444%_
               _%$%lock161434161445%_
               _%$%check161435161446%_
               _%$%weak-keys161436161447%_
               _%$%weak-values161437161448%_)
        (let* ((_%size-hint161450%_
                (if (eq? _%$%size-hint161430161441%_ absent-value)
                    '#f
                    _%$%size-hint161430161441%_))
               (_%seed161452%_
                (if (eq? _%$%seed161431161442%_ absent-value)
                    '#f
                    _%$%seed161431161442%_))
               (_%test161454%_
                (if (eq? _%$%test161432161443%_ absent-value)
                    equal?
                    _%$%test161432161443%_))
               (_%hash161456%_
                (if (eq? _%$%hash161433161444%_ absent-value)
                    '#f
                    _%$%hash161433161444%_))
               (_%lock161458%_
                (if (eq? _%$%lock161434161445%_ absent-value)
                    '#f
                    _%$%lock161434161445%_))
               (_%check161460%_
                (if (eq? _%$%check161435161446%_ absent-value)
                    '#f
                    _%$%check161435161446%_))
               (_%weak-keys161462%_
                (if (eq? _%$%weak-keys161436161447%_ absent-value)
                    '#f
                    _%$%weak-keys161436161447%_))
               (_%weak-values161464%_
                (if (eq? _%$%weak-values161437161448%_ absent-value)
                    '#f
                    _%$%weak-values161437161448%_)))
          (letrec ((_%table-seed161467%_
                    (lambda ()
                      (if (fixnum? _%seed161452%_)
                          _%seed161452%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock161611%_
                    (lambda (_%ht161986%_)
                      (let ((_%ht161989%_ _%ht161986%_))
                        (if _%lock161458%_
                            (let ((__tmp170470
                                   (let ((__tmp170471
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock161458%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht161989%_
                                      __tmp170471))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170470))
                            _%ht161989%_))))
                   (_%wrap-lock161612%_
                    (lambda (_%ht161974%_)
                      (let ((_%ht161977%_ _%ht161974%_))
                        (_%__wrap-lock161611%_ _%ht161977%_))))
                   (_%__wrap-checked161734%_
                    (lambda (_%ht161961%_ _%implicit161962%_)
                      (let ((_%ht161965%_ _%ht161961%_))
                        (if _%check161460%_
                            (let ((__tmp170472
                                   (let ((__tmp170473
                                          (if (procedure? _%check161460%_)
                                              _%check161460%_
                                              _%implicit161962%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht161965%_
                                      __tmp170473))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp170472))
                            _%ht161965%_))))
                   (_%wrap-checked161735%_
                    (lambda (_%ht161948%_ _%implicit161949%_)
                      (let ((_%ht161952%_ _%ht161948%_))
                        (_%__wrap-checked161734%_
                         _%ht161952%_
                         _%implicit161949%_))))
                   (_%make161736%_
                    (lambda (_%kons161899%_
                             _%key?161900%_
                             _%hash161901%_
                             _%test161902%_)
                      (let* ((_%size161905%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint161450%_)))
                             (_%table161907%_
                              (let ((__tmp170474 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size161905%_ __tmp170474)))
                             (_%ht161909%_
                              (let ((__tmp170475
                                     (_%kons161899%_
                                      _%table161907%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size161905%_ '2))
                                      _%hash161901%_
                                      _%test161902%_
                                      (_%table-seed161467%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170475)))
                             (_%ht161931%_
                              (let* ((_%ht161912%_ _%ht161909%_)
                                     (_%ht161916%_ _%ht161912%_))
                                (_%__wrap-lock161611%_ _%ht161916%_)))
                             (_%implicit161934%_ _%key?161900%_)
                             (_%ht161938%_ _%ht161931%_))
                        (_%__wrap-checked161734%_
                         _%ht161938%_
                         _%implicit161934%_))))
                   (_%make-gc-hash-table161737%_
                    (lambda ()
                      (let* ((_%ht161864%_
                              (let ((__tmp170476
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint161450%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170476)))
                             (_%ht161882%_
                              (let* ((_%ht161866%_ _%ht161864%_)
                                     (_%ht161870%_ _%ht161866%_))
                                (_%__wrap-lock161611%_ _%ht161870%_)))
                             (_%implicit161885%_ true)
                             (_%ht161889%_ _%ht161882%_))
                        (_%__wrap-checked161734%_
                         _%ht161889%_
                         _%implicit161885%_))))
                   (_%make-gambit-table161738%_
                    (lambda ()
                      (let* ((_%size161807%_
                              (let ((_%$e161804%_ _%size-hint161450%_))
                                (if _%$e161804%_
                                    _%$e161804%_
                                    (macro-absent-obj))))
                             (_%test161812%_
                              (let ((_%$e161809%_ _%test161454%_))
                                (if _%$e161809%_ _%$e161809%_ equal?)))
                             (_%hash161820%_
                              (let ((_%$e161814%_ _%hash161456%_))
                                (if _%$e161814%_
                                    _%$e161814%_
                                    (if (eq? _%test161812%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test161812%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht161822%_
                              (let ((__tmp170477
                                     (make-table
                                      'size:
                                      _%size161807%_
                                      'test:
                                      _%test161812%_
                                      'hash:
                                      _%hash161820%_
                                      'weak-keys:
                                      _%weak-keys161462%_
                                      'weak-values:
                                      _%weak-values161464%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp170477)))
                             (_%ht161845%_
                              (let* ((_%ht161825%_ _%ht161822%_)
                                     (_%ht161829%_ _%ht161825%_))
                                (_%__wrap-lock161611%_ _%ht161829%_)))
                             (_%implicit161848%_ true)
                             (_%ht161852%_ _%ht161845%_))
                        (_%__wrap-checked161734%_
                         _%ht161852%_
                         _%implicit161848%_)))))
            (if (or _%weak-keys161462%_ _%weak-values161464%_)
                (_%make-gambit-table161738%_)
                (if (and (or (eq? _%test161454%_ eq?)
                             (eq? _%test161454%_ ##eq?))
                         (or (not _%hash161456%_)
                             (eq? _%hash161456%_ eq?-hash)
                             (eq? _%hash161456%_ eq-hash))
                         (not _%seed161452%_))
                    (_%make-gc-hash-table161737%_)
                    (if (and (or (eq? _%test161454%_ eq?)
                                 (eq? _%test161454%_ ##eq?))
                             (or (not _%hash161456%_)
                                 (eq? _%hash161456%_ eq?-hash)
                                 (eq? _%hash161456%_ eq-hash)))
                        (_%make161736%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test161454%_ eqv?)
                                     (eq? _%test161454%_ ##eqv?))
                                 (or (not _%hash161456%_)
                                     (eq? _%hash161456%_ eqv?-hash)
                                     (eq? _%hash161456%_ eqv-hash)))
                            (_%make161736%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test161454%_ eq?)
                                         (eq? _%test161454%_ ##eq?))
                                     (or (eq? _%hash161456%_ symbolic-hash)
                                         (eq? _%hash161456%_ ##symbol-hash)))
                                (_%make161736%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test161454%_ eq?)
                                             (eq? _%test161454%_ ##eq?))
                                         (eq? _%hash161456%_ immediate-hash))
                                    (_%make161736%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test161454%_ equal?)
                                                 (eq? _%test161454%_ ##equal?)
                                                 (eq? _%test161454%_ string=?)
                                                 (eq? _%test161454%_
                                                      ##string=?))
                                             (or (eq? _%hash161456%_
                                                      string-hash)
                                                 (eq? _%hash161456%_
                                                      ##string=?-hash)))
                                        (_%make161736%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test161454%_ equal?)
                                                 (not _%hash161456%_))
                                            (_%make161736%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test161454%_)
                                                (if (procedure? _%hash161456%_)
                                                    (_%make161736%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash161456%_
                                                     _%test161454%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash161456%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test161454%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords162002%_ . _%args162003%_)
        (apply make-hash-table__%
               _%@@keywords162002%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162002%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162002%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162002%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162002%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords162002%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162002%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162002%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162002%_
                  'weak-values:
                  absent-value))
               _%args162003%_)))
    (define make-hash-table
      (lambda _%$%args161438162009%_
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
               _%$%args161438162009%_)))
    (define make-hash-table-eq
      (lambda _%args161427%_
        (apply make-hash-table 'test: eq? _%args161427%_)))
    (define make-hash-table-eqv
      (lambda _%args161425%_
        (apply make-hash-table 'test: eqv? _%args161425%_)))
    (define make-hash-table-symbolic
      (lambda _%args161423%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args161423%_)))
    (define make-hash-table-string
      (lambda _%args161421%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args161421%_)))
    (define make-hash-table-immediate
      (lambda _%args161419%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args161419%_)))
    (define list->hash-table
      (lambda (_%lst161416%_ . _%args161417%_)
        (list->hash-table!
         _%lst161416%_
         (apply make-hash-table
                'size:
                (length _%lst161416%_)
                _%args161417%_))))
    (define list->hash-table-eq
      (lambda (_%lst161413%_ . _%args161414%_)
        (list->hash-table!
         _%lst161413%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161413%_)
                _%args161414%_))))
    (define list->hash-table-eqv
      (lambda (_%lst161410%_ . _%args161411%_)
        (list->hash-table!
         _%lst161410%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161410%_)
                _%args161411%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst161407%_ . _%args161408%_)
        (list->hash-table!
         _%lst161407%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161407%_)
                _%args161408%_))))
    (define list->hash-table-string
      (lambda (_%lst161404%_ . _%args161405%_)
        (list->hash-table!
         _%lst161404%_
         (apply make-hash-table-string
                'size:
                (length _%lst161404%_)
                _%args161405%_))))
    (define list->hash-table-immediate
      (lambda (_%lst161401%_ . _%args161402%_)
        (list->hash-table!
         _%lst161401%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161401%_)
                _%args161402%_))))
    (define list->hash-table!
      (lambda (_%lst161352%_ _%h161353%_)
        (for-each
         (lambda (_%el161355%_)
           (let* ((_%$%el161356161363%_ _%el161355%_)
                  (_%$%E161358161366%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el161356161363%_
                              '([k . v])))
                     '#!void))
                  (_%$%K161359161389%_
                   (lambda (_%v161369%_ _%k161370%_)
                     (let* ((_%self154205161372%_ _%h161353%_)
                            (_%key161375%_ _%k161370%_)
                            (_%value161378%_ _%v161369%_))
                       (declare (not safe))
                       (let ((_%object161381161386%_
                              (##unchecked-structure-ref
                               _%self154205161372%_
                               '1
                               '#f
                               'set!))
                             (_%method161382161387%_
                              (##unchecked-structure-ref
                               _%self154205161372%_
                               '9
                               '#f
                               'set!)))
                         (_%method161382161387%_
                          _%object161381161386%_
                          _%key161375%_
                          _%value161378%_))))))
             (if (pair? _%$%el161356161363%_)
                 (let ((_%$%hd161360161392%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el161356161363%_)))
                       (_%$%tl161361161394%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el161356161363%_))))
                   (let* ((_%k161397%_ _%$%hd161360161392%_)
                          (_%v161399%_ _%$%tl161361161394%_))
                     (_%$%K161359161389%_ _%v161399%_ _%k161397%_)))
                 (_%$%E161358161366%_))))
         _%lst161352%_)
        _%h161353%_))
    (define plist->hash-table
      (lambda (_%lst161349%_ . _%args161350%_)
        (plist->hash-table!
         _%lst161349%_
         (apply make-hash-table
                'size:
                (length _%lst161349%_)
                _%args161350%_))))
    (define plist->hash-table-eq
      (lambda (_%lst161346%_ . _%args161347%_)
        (plist->hash-table!
         _%lst161346%_
         (apply make-hash-table-eq
                'size:
                (length _%lst161346%_)
                _%args161347%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst161343%_ . _%args161344%_)
        (plist->hash-table!
         _%lst161343%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst161343%_)
                _%args161344%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst161340%_ . _%args161341%_)
        (plist->hash-table!
         _%lst161340%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst161340%_)
                _%args161341%_))))
    (define plist->hash-table-string
      (lambda (_%lst161337%_ . _%args161338%_)
        (plist->hash-table!
         _%lst161337%_
         (apply make-hash-table-string
                'size:
                (length _%lst161337%_)
                _%args161338%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst161334%_ . _%args161335%_)
        (plist->hash-table!
         _%lst161334%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst161334%_)
                _%args161335%_))))
    (define plist->hash-table!
      (lambda (_%lst161257%_ _%h161258%_)
        (let _%loop161260%_ ((_%rest161262%_ _%lst161257%_))
          (let* ((_%$%rest161263161275%_ _%rest161262%_)
                 (_%$%else161266161283%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst161257%_)))))
            (let ((_%$%K161269161315%_
                   (lambda (_%rest161294%_ _%val161295%_ _%key161296%_)
                     (let* ((_%self154205161298%_ _%h161258%_)
                            (_%key161301%_ _%key161296%_)
                            (_%value161304%_ _%val161295%_))
                       (declare (not safe))
                       (let ((_%object161307161312%_
                              (##unchecked-structure-ref
                               _%self154205161298%_
                               '1
                               '#f
                               'set!))
                             (_%method161308161313%_
                              (##unchecked-structure-ref
                               _%self154205161298%_
                               '9
                               '#f
                               'set!)))
                         (_%method161308161313%_
                          _%object161307161312%_
                          _%key161301%_
                          _%value161304%_)))
                     (_%loop161260%_ _%rest161294%_)))
                  (_%$%K161268161288%_ (lambda () _%h161258%_)))
              (let ((_%$%try-match161265161291%_
                     (lambda ()
                       (if (null? _%$%rest161263161275%_)
                           (_%$%K161268161288%_)
                           (_%$%else161266161283%_)))))
                (if (pair? _%$%rest161263161275%_)
                    (let ((_%$%tl161271161320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest161263161275%_)))
                          (_%$%hd161270161318%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest161263161275%_))))
                      (if (pair? _%$%tl161271161320%_)
                          (let ((_%$%tl161273161327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl161271161320%_)))
                                (_%$%hd161272161325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl161271161320%_))))
                            (let ((_%key161323%_ _%$%hd161270161318%_)
                                  (_%val161330%_ _%$%hd161272161325%_)
                                  (_%rest161332%_ _%$%tl161273161327%_))
                              (_%$%K161269161315%_
                               _%rest161332%_
                               _%val161330%_
                               _%key161323%_)))
                          (_%$%else161266161283%_)))
                    (_%$%try-match161265161291%_))))))))
    (define __hash-length
      (lambda (_%h161209%_)
        (let* ((_%h161212%_ _%h161209%_)
               (_%self153474161221%_ _%h161212%_)
               (_%self153474161225%_ _%self153474161221%_)
               (_%self153474161227%_ _%self153474161225%_))
          (if __DEBUG
              (let ((_%val161247%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object161239161244%_
                              (##unchecked-structure-ref
                               _%self153474161227%_
                               '1
                               '#f
                               'length))
                             (_%method161240161245%_
                              (##unchecked-structure-ref
                               _%self153474161227%_
                               '6
                               '#f
                               'length)))
                         (_%method161240161245%_ _%object161239161244%_)))))
                (if (fixnum? _%val161247%_)
                    _%val161247%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val161247%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object161249161254%_
                       (##unchecked-structure-ref
                        _%self153474161227%_
                        '1
                        '#f
                        'length))
                      (_%method161250161255%_
                       (##unchecked-structure-ref
                        _%self153474161227%_
                        '6
                        '#f
                        'length)))
                  (_%method161250161255%_ _%object161249161254%_)))))))
    (define hash-length
      (lambda (_%h161194%_)
        (let* ((_%h161197%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161194%_)))
               (_%h161199%_ _%h161197%_))
          (__hash-length _%h161199%_))))
    (define __hash-ref__%
      (lambda (_%h161125%_ _%key161126%_ _%default161127%_)
        (let* ((_%h161130%_ _%h161125%_)
               (_%result161180%_
                (let* ((_%self153962161139%_ _%h161130%_)
                       (_%key161142%_ _%key161126%_)
                       (_%default161145%_ _%default161127%_)
                       (_%self153962161149%_ _%self153962161139%_)
                       (_%self153962161151%_ _%self153962161149%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object161165161170%_
                               (##unchecked-structure-ref
                                _%self153962161151%_
                                '1
                                '#f
                                'ref))
                              (_%method161166161171%_
                               (##unchecked-structure-ref
                                _%self153962161151%_
                                '8
                                '#f
                                'ref)))
                          (_%method161166161171%_
                           _%object161165161170%_
                           _%key161142%_
                           _%default161145%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161172161177%_
                               (##unchecked-structure-ref
                                _%self153962161151%_
                                '1
                                '#f
                                'ref))
                              (_%method161173161178%_
                               (##unchecked-structure-ref
                                _%self153962161151%_
                                '8
                                '#f
                                'ref)))
                          (_%method161173161178%_
                           _%object161172161177%_
                           _%key161142%_
                           _%default161145%_)))))))
          (if (eq? _%result161180%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h161130%_
               'key:
               _%key161126%_)
              _%result161180%_))))
    (define __hash-ref__0
      (lambda (_%h161185%_ _%key161186%_)
        (let ((_%default161188%_ absent-obj))
          (__hash-ref__% _%h161185%_ _%key161186%_ _%default161188%_))))
    (define __hash-ref
      (lambda _g170478_
        (let ((_g170479_ (let () (declare (not safe)) (##length _g170478_))))
          (cond ((let () (declare (not safe)) (##fx= _g170479_ 2))
                 (apply __hash-ref__0 _g170478_))
                ((let () (declare (not safe)) (##fx= _g170479_ 3))
                 (apply __hash-ref__% _g170478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g170478_))))))
    (define hash-ref__%
      (lambda (_%h161095%_ _%key161096%_ _%default161097%_)
        (let* ((_%h161100%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161095%_)))
               (_%h161102%_ _%h161100%_))
          (__hash-ref__% _%h161102%_ _%key161096%_ _%default161097%_))))
    (define hash-ref__0
      (lambda (_%h161115%_ _%key161116%_)
        (let ((_%default161118%_ absent-obj))
          (hash-ref__% _%h161115%_ _%key161116%_ _%default161118%_))))
    (define hash-ref
      (lambda _g170480_
        (let ((_g170481_ (let () (declare (not safe)) (##length _g170480_))))
          (cond ((let () (declare (not safe)) (##fx= _g170481_ 2))
                 (apply hash-ref__0 _g170480_))
                ((let () (declare (not safe)) (##fx= _g170481_ 3))
                 (apply hash-ref__% _g170480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g170480_))))))
    (define __hash-get
      (lambda (_%h161040%_ _%key161041%_)
        (let* ((_%h161044%_ _%h161040%_)
               (_%self153962161053%_ _%h161044%_)
               (_%key161056%_ _%key161041%_)
               (_%default161059%_ '#f)
               (_%self153962161063%_ _%self153962161053%_)
               (_%self153962161065%_ _%self153962161063%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161079161084%_
                       (##unchecked-structure-ref
                        _%self153962161065%_
                        '1
                        '#f
                        'ref))
                      (_%method161080161085%_
                       (##unchecked-structure-ref
                        _%self153962161065%_
                        '8
                        '#f
                        'ref)))
                  (_%method161080161085%_
                   _%object161079161084%_
                   _%key161056%_
                   _%default161059%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161086161091%_
                       (##unchecked-structure-ref
                        _%self153962161065%_
                        '1
                        '#f
                        'ref))
                      (_%method161087161092%_
                       (##unchecked-structure-ref
                        _%self153962161065%_
                        '8
                        '#f
                        'ref)))
                  (_%method161087161092%_
                   _%object161086161091%_
                   _%key161056%_
                   _%default161059%_)))))))
    (define hash-get
      (lambda (_%h161024%_ _%key161025%_)
        (let* ((_%h161028%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161024%_)))
               (_%h161030%_ _%h161028%_))
          (__hash-get _%h161030%_ _%key161025%_))))
    (define __hash-put!
      (lambda (_%h160969%_ _%key160970%_ _%value160971%_)
        (let* ((_%h160974%_ _%h160969%_)
               (_%self154206160983%_ _%h160974%_)
               (_%key160986%_ _%key160970%_)
               (_%value160989%_ _%value160971%_)
               (_%self154206160993%_ _%self154206160983%_)
               (_%self154206160995%_ _%self154206160993%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161009161014%_
                       (##unchecked-structure-ref
                        _%self154206160995%_
                        '1
                        '#f
                        'set!))
                      (_%method161010161015%_
                       (##unchecked-structure-ref
                        _%self154206160995%_
                        '9
                        '#f
                        'set!)))
                  (_%method161010161015%_
                   _%object161009161014%_
                   _%key160986%_
                   _%value160989%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161016161021%_
                       (##unchecked-structure-ref
                        _%self154206160995%_
                        '1
                        '#f
                        'set!))
                      (_%method161017161022%_
                       (##unchecked-structure-ref
                        _%self154206160995%_
                        '9
                        '#f
                        'set!)))
                  (_%method161017161022%_
                   _%object161016161021%_
                   _%key160986%_
                   _%value160989%_)))))))
    (define hash-put!
      (lambda (_%h160952%_ _%key160953%_ _%value160954%_)
        (let* ((_%h160957%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160952%_)))
               (_%h160959%_ _%h160957%_))
          (__hash-put! _%h160959%_ _%key160953%_ _%value160954%_))))
    (define __hash-update!__%
      (lambda (_%h160868%_ _%key160869%_ _%update160870%_ _%default160871%_)
        (let* ((_%h160874%_ _%h160868%_)
               (_%self154450160883%_ _%h160874%_)
               (_%key160886%_ _%key160869%_)
               (_%proc160889%_ _%update160870%_)
               (_%default160892%_ _%default160871%_)
               (_%self154450160896%_ _%self154450160883%_)
               (_%self154450160898%_ _%self154450160896%_))
          (if (procedure? _%proc160889%_)
              (let ((_%proc160914%_ _%proc160889%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object160923160928%_
                             (##unchecked-structure-ref
                              _%self154450160898%_
                              '1
                              '#f
                              'update!))
                            (_%method160924160929%_
                             (##unchecked-structure-ref
                              _%self154450160898%_
                              '10
                              '#f
                              'update!)))
                        (_%method160924160929%_
                         _%object160923160928%_
                         _%key160886%_
                         _%proc160914%_
                         _%default160892%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object160930160935%_
                             (##unchecked-structure-ref
                              _%self154450160898%_
                              '1
                              '#f
                              'update!))
                            (_%method160931160936%_
                             (##unchecked-structure-ref
                              _%self154450160898%_
                              '10
                              '#f
                              'update!)))
                        (_%method160931160936%_
                         _%object160930160935%_
                         _%key160886%_
                         _%proc160914%_
                         _%default160892%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc160889%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h160941%_ _%key160942%_ _%update160943%_)
        (let ((_%default160945%_ '#!void))
          (__hash-update!__%
           _%h160941%_
           _%key160942%_
           _%update160943%_
           _%default160945%_))))
    (define __hash-update!
      (lambda _g170482_
        (let ((_g170483_ (let () (declare (not safe)) (##length _g170482_))))
          (cond ((let () (declare (not safe)) (##fx= _g170483_ 3))
                 (apply __hash-update!__0 _g170482_))
                ((let () (declare (not safe)) (##fx= _g170483_ 4))
                 (apply __hash-update!__% _g170482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g170482_))))))
    (define hash-update!__%
      (lambda (_%h160835%_ _%key160836%_ _%update160837%_ _%default160838%_)
        (let* ((_%h160841%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160835%_)))
               (_%h160843%_ _%h160841%_))
          (__hash-update!__%
           _%h160843%_
           _%key160836%_
           _%update160837%_
           _%default160838%_))))
    (define hash-update!__0
      (lambda (_%h160856%_ _%key160857%_ _%update160858%_)
        (let ((_%default160860%_ '#!void))
          (hash-update!__%
           _%h160856%_
           _%key160857%_
           _%update160858%_
           _%default160860%_))))
    (define hash-update!
      (lambda _g170484_
        (let ((_g170485_ (let () (declare (not safe)) (##length _g170484_))))
          (cond ((let () (declare (not safe)) (##fx= _g170485_ 3))
                 (apply hash-update!__0 _g170484_))
                ((let () (declare (not safe)) (##fx= _g170485_ 4))
                 (apply hash-update!__% _g170484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g170484_))))))
    (define __hash-remove!
      (lambda (_%h160784%_ _%key160785%_)
        (let* ((_%h160788%_ _%h160784%_)
               (_%self152986160797%_ _%h160788%_)
               (_%key160800%_ _%key160785%_)
               (_%self152986160804%_ _%self152986160797%_)
               (_%self152986160806%_ _%self152986160804%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160819160824%_
                       (##unchecked-structure-ref
                        _%self152986160806%_
                        '1
                        '#f
                        'delete!))
                      (_%method160820160825%_
                       (##unchecked-structure-ref
                        _%self152986160806%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160820160825%_
                   _%object160819160824%_
                   _%key160800%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160826160831%_
                       (##unchecked-structure-ref
                        _%self152986160806%_
                        '1
                        '#f
                        'delete!))
                      (_%method160827160832%_
                       (##unchecked-structure-ref
                        _%self152986160806%_
                        '4
                        '#f
                        'delete!)))
                  (_%method160827160832%_
                   _%object160826160831%_
                   _%key160800%_)))))))
    (define hash-remove!
      (lambda (_%h160768%_ _%key160769%_)
        (let* ((_%h160772%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160768%_)))
               (_%h160774%_ _%h160772%_))
          (__hash-remove! _%h160774%_ _%key160769%_))))
    (define __hash-key?
      (lambda (_%h160714%_ _%k160715%_)
        (let ((_%h160718%_ _%h160714%_))
          (not (eq? (let* ((_%self153962160727%_ _%h160718%_)
                           (_%key160730%_ _%k160715%_)
                           (_%default160733%_ absent-value)
                           (_%self153962160737%_ _%self153962160727%_)
                           (_%self153962160739%_ _%self153962160737%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object160753160758%_
                                   (##unchecked-structure-ref
                                    _%self153962160739%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160754160759%_
                                   (##unchecked-structure-ref
                                    _%self153962160739%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160754160759%_
                               _%object160753160758%_
                               _%key160730%_
                               _%default160733%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object160760160765%_
                                   (##unchecked-structure-ref
                                    _%self153962160739%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method160761160766%_
                                   (##unchecked-structure-ref
                                    _%self153962160739%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method160761160766%_
                               _%object160760160765%_
                               _%key160730%_
                               _%default160733%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h160698%_ _%k160699%_)
        (let* ((_%h160702%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160698%_)))
               (_%h160704%_ _%h160702%_))
          (__hash-key? _%h160704%_ _%k160699%_))))
    (define __hash->list
      (lambda (_%h160633%_)
        (let* ((_%h160636%_ _%h160633%_) (_%lst160645%_ '()))
          (let* ((_%self153230160647%_ _%h160636%_)
                 (_%proc160653%_
                  (lambda (_%k160650%_ _%v160651%_)
                    (set! _%lst160645%_
                          (cons (cons _%k160650%_ _%v160651%_)
                                _%lst160645%_))))
                 (_%self153230160657%_ _%self153230160647%_)
                 (_%self153230160659%_ _%self153230160657%_)
                 (_%proc160674%_ _%proc160653%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160683160688%_
                         (##unchecked-structure-ref
                          _%self153230160659%_
                          '1
                          '#f
                          'for-each))
                        (_%method160684160689%_
                         (##unchecked-structure-ref
                          _%self153230160659%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160684160689%_
                     _%object160683160688%_
                     _%proc160674%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160690160695%_
                         (##unchecked-structure-ref
                          _%self153230160659%_
                          '1
                          '#f
                          'for-each))
                        (_%method160691160696%_
                         (##unchecked-structure-ref
                          _%self153230160659%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160691160696%_
                     _%object160690160695%_
                     _%proc160674%_)))))
          _%lst160645%_)))
    (define hash->list
      (lambda (_%h160618%_)
        (let* ((_%h160621%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160618%_)))
               (_%h160623%_ _%h160621%_))
          (__hash->list _%h160623%_))))
    (define __hash->plist
      (lambda (_%h160553%_)
        (let* ((_%h160556%_ _%h160553%_) (_%lst160565%_ '()))
          (let* ((_%self153230160567%_ _%h160556%_)
                 (_%proc160573%_
                  (lambda (_%k160570%_ _%v160571%_)
                    (set! _%lst160565%_
                          (cons _%k160570%_
                                (cons _%v160571%_ _%lst160565%_)))))
                 (_%self153230160577%_ _%self153230160567%_)
                 (_%self153230160579%_ _%self153230160577%_)
                 (_%proc160594%_ _%proc160573%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160603160608%_
                         (##unchecked-structure-ref
                          _%self153230160579%_
                          '1
                          '#f
                          'for-each))
                        (_%method160604160609%_
                         (##unchecked-structure-ref
                          _%self153230160579%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160604160609%_
                     _%object160603160608%_
                     _%proc160594%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160610160615%_
                         (##unchecked-structure-ref
                          _%self153230160579%_
                          '1
                          '#f
                          'for-each))
                        (_%method160611160616%_
                         (##unchecked-structure-ref
                          _%self153230160579%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160611160616%_
                     _%object160610160615%_
                     _%proc160594%_)))))
          _%lst160565%_)))
    (define hash->plist
      (lambda (_%h160538%_)
        (let* ((_%h160541%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160538%_)))
               (_%h160543%_ _%h160541%_))
          (__hash->plist _%h160543%_))))
    (define __hash-for-each
      (lambda (_%proc160470%_ _%h160471%_)
        (let* ((_%proc160474%_ _%proc160470%_)
               (_%h160482%_ _%h160471%_)
               (_%self153230160491%_ _%h160482%_)
               (_%proc160494%_ _%proc160474%_)
               (_%self153230160498%_ _%self153230160491%_)
               (_%self153230160500%_ _%self153230160498%_)
               (_%proc160514%_ _%proc160494%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object160523160528%_
                       (##unchecked-structure-ref
                        _%self153230160500%_
                        '1
                        '#f
                        'for-each))
                      (_%method160524160529%_
                       (##unchecked-structure-ref
                        _%self153230160500%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160524160529%_
                   _%object160523160528%_
                   _%proc160514%_)))
              (let ()
                (declare (not safe))
                (let ((_%object160530160535%_
                       (##unchecked-structure-ref
                        _%self153230160500%_
                        '1
                        '#f
                        'for-each))
                      (_%method160531160536%_
                       (##unchecked-structure-ref
                        _%self153230160500%_
                        '5
                        '#f
                        'for-each)))
                  (_%method160531160536%_
                   _%object160530160535%_
                   _%proc160514%_)))))))
    (define hash-for-each
      (lambda (_%proc160444%_ _%h160445%_)
        (if (procedure? _%proc160444%_)
            (let* ((_%proc160449%_ _%proc160444%_)
                   (_%h160458%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160445%_)))
                   (_%h160460%_ _%h160458%_))
              (__hash-for-each _%proc160449%_ _%h160460%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@602.22-602.26"
               'contract:
               'procedure?
               'value:
               _%proc160444%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc160370%_ _%h160371%_)
        (let* ((_%proc160374%_ _%proc160370%_)
               (_%h160382%_ _%h160371%_)
               (_%result160391%_ '()))
          (let* ((_%self153230160393%_ _%h160382%_)
                 (_%proc160399%_
                  (lambda (_%k160396%_ _%v160397%_)
                    (set! _%result160391%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc160374%_ _%k160396%_ _%v160397%_))
                                _%result160391%_))))
                 (_%self153230160403%_ _%self153230160393%_)
                 (_%self153230160405%_ _%self153230160403%_)
                 (_%proc160420%_ _%proc160399%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160429160434%_
                         (##unchecked-structure-ref
                          _%self153230160405%_
                          '1
                          '#f
                          'for-each))
                        (_%method160430160435%_
                         (##unchecked-structure-ref
                          _%self153230160405%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160430160435%_
                     _%object160429160434%_
                     _%proc160420%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160436160441%_
                         (##unchecked-structure-ref
                          _%self153230160405%_
                          '1
                          '#f
                          'for-each))
                        (_%method160437160442%_
                         (##unchecked-structure-ref
                          _%self153230160405%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160437160442%_
                     _%object160436160441%_
                     _%proc160420%_)))))
          _%result160391%_)))
    (define hash-map
      (lambda (_%proc160344%_ _%h160345%_)
        (if (procedure? _%proc160344%_)
            (let* ((_%proc160349%_ _%proc160344%_)
                   (_%h160358%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160345%_)))
                   (_%h160360%_ _%h160358%_))
              (__hash-map _%proc160349%_ _%h160360%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@605.17-605.21"
               'contract:
               'procedure?
               'value:
               _%proc160344%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc160269%_ _%iv160270%_ _%h160271%_)
        (let* ((_%proc160274%_ _%proc160269%_)
               (_%h160282%_ _%h160271%_)
               (_%result160291%_ _%iv160270%_))
          (let* ((_%self153230160293%_ _%h160282%_)
                 (_%proc160299%_
                  (lambda (_%k160296%_ _%v160297%_)
                    (set! _%result160291%_
                          (let ()
                            (declare (not safe))
                            (_%proc160274%_
                             _%k160296%_
                             _%v160297%_
                             _%result160291%_)))))
                 (_%self153230160303%_ _%self153230160293%_)
                 (_%self153230160305%_ _%self153230160303%_)
                 (_%proc160320%_ _%proc160299%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160329160334%_
                         (##unchecked-structure-ref
                          _%self153230160305%_
                          '1
                          '#f
                          'for-each))
                        (_%method160330160335%_
                         (##unchecked-structure-ref
                          _%self153230160305%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160330160335%_
                     _%object160329160334%_
                     _%proc160320%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160336160341%_
                         (##unchecked-structure-ref
                          _%self153230160305%_
                          '1
                          '#f
                          'for-each))
                        (_%method160337160342%_
                         (##unchecked-structure-ref
                          _%self153230160305%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160337160342%_
                     _%object160336160341%_
                     _%proc160320%_)))))
          _%result160291%_)))
    (define hash-fold
      (lambda (_%proc160242%_ _%iv160243%_ _%h160244%_)
        (if (procedure? _%proc160242%_)
            (let* ((_%proc160248%_ _%proc160242%_)
                   (_%h160257%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160244%_)))
                   (_%h160259%_ _%h160257%_))
              (__hash-fold _%proc160248%_ _%iv160243%_ _%h160259%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@611.18-611.22"
               'contract:
               'procedure?
               'value:
               _%proc160242%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc160152%_ _%h160153%_ _%default-value160154%_)
        (let* ((_%proc160157%_ _%proc160152%_)
               (_%h160165%_ _%h160153%_)
               (__tmp170486
                (lambda (_%return160174%_)
                  (let* ((_%self153230160176%_ _%h160165%_)
                         (_%proc160185%_
                          (lambda (_%k160179%_ _%v160180%_)
                            (let ((_%$e160182%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc160157%_
                                      _%k160179%_
                                      _%v160180%_))))
                              (if _%$e160182%_
                                  (_%return160174%_ _%$e160182%_)
                                  '#!void))))
                         (_%self153230160189%_ _%self153230160176%_)
                         (_%self153230160191%_ _%self153230160189%_)
                         (_%proc160206%_ _%proc160185%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object160215160220%_
                                 (##unchecked-structure-ref
                                  _%self153230160191%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160216160221%_
                                 (##unchecked-structure-ref
                                  _%self153230160191%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160216160221%_
                             _%object160215160220%_
                             _%proc160206%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object160222160227%_
                                 (##unchecked-structure-ref
                                  _%self153230160191%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method160223160228%_
                                 (##unchecked-structure-ref
                                  _%self153230160191%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method160223160228%_
                             _%object160222160227%_
                             _%proc160206%_)))))
                  _%default-value160154%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp170486))))
    (define __hash-find__0
      (lambda (_%proc160233%_ _%h160234%_)
        (let ((_%default-value160236%_ '#f))
          (__hash-find__%
           _%proc160233%_
           _%h160234%_
           _%default-value160236%_))))
    (define __hash-find
      (lambda _g170487_
        (let ((_g170488_ (let () (declare (not safe)) (##length _g170487_))))
          (cond ((let () (declare (not safe)) (##fx= _g170488_ 2))
                 (apply __hash-find__0 _g170487_))
                ((let () (declare (not safe)) (##fx= _g170488_ 3))
                 (apply __hash-find__% _g170487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g170487_))))))
    (define hash-find__%
      (lambda (_%proc160112%_ _%h160113%_ _%default-value160114%_)
        (if (procedure? _%proc160112%_)
            (let* ((_%proc160118%_ _%proc160112%_)
                   (_%h160127%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h160113%_)))
                   (_%h160129%_ _%h160127%_))
              (__hash-find__%
               _%proc160118%_
               _%h160129%_
               _%default-value160114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@616.18-616.22"
               'contract:
               'procedure?
               'value:
               _%proc160112%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc160142%_ _%h160143%_)
        (let ((_%default-value160145%_ '#f))
          (hash-find__% _%proc160142%_ _%h160143%_ _%default-value160145%_))))
    (define hash-find
      (lambda _g170489_
        (let ((_g170490_ (let () (declare (not safe)) (##length _g170489_))))
          (cond ((let () (declare (not safe)) (##fx= _g170490_ 2))
                 (apply hash-find__0 _g170489_))
                ((let () (declare (not safe)) (##fx= _g170490_ 3))
                 (apply hash-find__% _g170489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g170489_))))))
    (define __hash-keys
      (lambda (_%h160046%_)
        (let* ((_%h160049%_ _%h160046%_) (_%result160058%_ '()))
          (let* ((_%self153230160060%_ _%h160049%_)
                 (_%proc160066%_
                  (lambda (_%k160063%_ _%v160064%_)
                    (set! _%result160058%_
                          (cons _%k160063%_ _%result160058%_))))
                 (_%self153230160070%_ _%self153230160060%_)
                 (_%self153230160072%_ _%self153230160070%_)
                 (_%proc160087%_ _%proc160066%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160096160101%_
                         (##unchecked-structure-ref
                          _%self153230160072%_
                          '1
                          '#f
                          'for-each))
                        (_%method160097160102%_
                         (##unchecked-structure-ref
                          _%self153230160072%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160097160102%_
                     _%object160096160101%_
                     _%proc160087%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160103160108%_
                         (##unchecked-structure-ref
                          _%self153230160072%_
                          '1
                          '#f
                          'for-each))
                        (_%method160104160109%_
                         (##unchecked-structure-ref
                          _%self153230160072%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160104160109%_
                     _%object160103160108%_
                     _%proc160087%_)))))
          _%result160058%_)))
    (define hash-keys
      (lambda (_%h160031%_)
        (let* ((_%h160034%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h160031%_)))
               (_%h160036%_ _%h160034%_))
          (__hash-keys _%h160036%_))))
    (define __hash-values
      (lambda (_%h159966%_)
        (let* ((_%h159969%_ _%h159966%_) (_%result159978%_ '()))
          (let* ((_%self153230159980%_ _%h159969%_)
                 (_%proc159986%_
                  (lambda (_%k159983%_ _%v159984%_)
                    (set! _%result159978%_
                          (cons _%v159984%_ _%result159978%_))))
                 (_%self153230159990%_ _%self153230159980%_)
                 (_%self153230159992%_ _%self153230159990%_)
                 (_%proc160007%_ _%proc159986%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object160016160021%_
                         (##unchecked-structure-ref
                          _%self153230159992%_
                          '1
                          '#f
                          'for-each))
                        (_%method160017160022%_
                         (##unchecked-structure-ref
                          _%self153230159992%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160017160022%_
                     _%object160016160021%_
                     _%proc160007%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object160023160028%_
                         (##unchecked-structure-ref
                          _%self153230159992%_
                          '1
                          '#f
                          'for-each))
                        (_%method160024160029%_
                         (##unchecked-structure-ref
                          _%self153230159992%_
                          '5
                          '#f
                          'for-each)))
                    (_%method160024160029%_
                     _%object160023160028%_
                     _%proc160007%_)))))
          _%result159978%_)))
    (define hash-values
      (lambda (_%h159951%_)
        (let* ((_%h159954%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159951%_)))
               (_%h159956%_ _%h159954%_))
          (__hash-values _%h159956%_))))
    (define __hash-copy
      (lambda (_%h159906%_)
        (let* ((_%h159909%_ _%h159906%_)
               (_%self152742159918%_ _%h159909%_)
               (_%self152742159922%_ _%self152742159918%_)
               (_%self152742159924%_ _%self152742159922%_))
          (if __DEBUG
              (let ((__tmp170491
                     (let ()
                       (declare (not safe))
                       (let ((_%object159936159941%_
                              (##unchecked-structure-ref
                               _%self152742159924%_
                               '1
                               '#f
                               'copy))
                             (_%method159937159942%_
                              (##unchecked-structure-ref
                               _%self152742159924%_
                               '3
                               '#f
                               'copy)))
                         (_%method159937159942%_ _%object159936159941%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp170491))
              (let ()
                (declare (not safe))
                (let ((_%object159943159948%_
                       (##unchecked-structure-ref
                        _%self152742159924%_
                        '1
                        '#f
                        'copy))
                      (_%method159944159949%_
                       (##unchecked-structure-ref
                        _%self152742159924%_
                        '3
                        '#f
                        'copy)))
                  (_%method159944159949%_ _%object159943159948%_)))))))
    (define hash-copy
      (lambda (_%h159891%_)
        (let* ((_%h159894%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159891%_)))
               (_%h159896%_ _%h159894%_))
          (__hash-copy _%h159896%_))))
    (define __hash-new
      (lambda (_%h159826%_)
        (let* ((_%h159829%_ _%h159826%_)
               (_%self153718159838%_ _%h159829%_)
               (_%size-hint159841%_ '#f)
               (_%self153718159845%_ _%self153718159838%_)
               (_%self153718159847%_ _%self153718159845%_))
          (if (let ((_%$e159863%_ '#t)) (and _%$e159863%_ _%$e159863%_))
              (let ((_%size-hint159867%_ _%size-hint159841%_))
                (if __DEBUG
                    (let ((__tmp170492
                           (let ()
                             (declare (not safe))
                             (let ((_%object159876159881%_
                                    (##unchecked-structure-ref
                                     _%self153718159847%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method159877159882%_
                                    (##unchecked-structure-ref
                                     _%self153718159847%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method159877159882%_
                                _%object159876159881%_
                                _%size-hint159867%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp170492))
                    (let ()
                      (declare (not safe))
                      (let ((_%object159883159888%_
                             (##unchecked-structure-ref
                              _%self153718159847%_
                              '1
                              '#f
                              'new))
                            (_%method159884159889%_
                             (##unchecked-structure-ref
                              _%self153718159847%_
                              '7
                              '#f
                              'new)))
                        (_%method159884159889%_
                         _%object159883159888%_
                         _%size-hint159867%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint159841%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h159811%_)
        (let* ((_%h159814%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159811%_)))
               (_%h159816%_ _%h159814%_))
          (__hash-new _%h159816%_))))
    (define __hash-clear!
      (lambda (_%h159766%_)
        (let* ((_%h159769%_ _%h159766%_)
               (_%self152497159778%_ _%h159769%_)
               (_%self152497159782%_ _%self152497159778%_)
               (_%self152497159784%_ _%self152497159782%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object159796159801%_
                       (##unchecked-structure-ref
                        _%self152497159784%_
                        '1
                        '#f
                        'clear!))
                      (_%method159797159802%_
                       (##unchecked-structure-ref
                        _%self152497159784%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159797159802%_ _%object159796159801%_)))
              (let ()
                (declare (not safe))
                (let ((_%object159803159808%_
                       (##unchecked-structure-ref
                        _%self152497159784%_
                        '1
                        '#f
                        'clear!))
                      (_%method159804159809%_
                       (##unchecked-structure-ref
                        _%self152497159784%_
                        '2
                        '#f
                        'clear!)))
                  (_%method159804159809%_ _%object159803159808%_)))))))
    (define hash-clear!
      (lambda (_%h159751%_)
        (let* ((_%h159754%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159751%_)))
               (_%h159756%_ _%h159754%_))
          (__hash-clear! _%h159756%_))))
    (define __hash-merge
      (lambda (_%h159703%_ . _%rest159704%_)
        (let* ((_%h159707%_ _%h159703%_)
               (_%copy159749%_
                (let* ((_%self152742159716%_ _%h159707%_)
                       (_%self152742159720%_ _%self152742159716%_)
                       (_%self152742159722%_ _%self152742159720%_))
                  (if __DEBUG
                      (let ((__tmp170493
                             (let ()
                               (declare (not safe))
                               (let ((_%object159734159739%_
                                      (##unchecked-structure-ref
                                       _%self152742159722%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159735159740%_
                                      (##unchecked-structure-ref
                                       _%self152742159722%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159735159740%_
                                  _%object159734159739%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170493))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159741159746%_
                               (##unchecked-structure-ref
                                _%self152742159722%_
                                '1
                                '#f
                                'copy))
                              (_%method159742159747%_
                               (##unchecked-structure-ref
                                _%self152742159722%_
                                '3
                                '#f
                                'copy)))
                          (_%method159742159747%_ _%object159741159746%_)))))))
          (apply hash-merge! _%copy159749%_ _%rest159704%_)
          _%copy159749%_)))
    (define hash-merge
      (lambda (_%h159687%_ . _%rest159688%_)
        (let* ((_%h159691%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159687%_)))
               (_%h159693%_ _%h159691%_))
          (declare (not safe))
          (##apply __hash-merge _%h159693%_ _%rest159688%_))))
    (define __hash-merge-right
      (lambda (_%h159639%_ . _%rest159640%_)
        (let* ((_%h159643%_ _%h159639%_)
               (_%copy159685%_
                (let* ((_%self152742159652%_ _%h159643%_)
                       (_%self152742159656%_ _%self152742159652%_)
                       (_%self152742159658%_ _%self152742159656%_))
                  (if __DEBUG
                      (let ((__tmp170494
                             (let ()
                               (declare (not safe))
                               (let ((_%object159670159675%_
                                      (##unchecked-structure-ref
                                       _%self152742159658%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method159671159676%_
                                      (##unchecked-structure-ref
                                       _%self152742159658%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method159671159676%_
                                  _%object159670159675%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp170494))
                      (let ()
                        (declare (not safe))
                        (let ((_%object159677159682%_
                               (##unchecked-structure-ref
                                _%self152742159658%_
                                '1
                                '#f
                                'copy))
                              (_%method159678159683%_
                               (##unchecked-structure-ref
                                _%self152742159658%_
                                '3
                                '#f
                                'copy)))
                          (_%method159678159683%_ _%object159677159682%_)))))))
          (apply hash-merge-right! _%copy159685%_ _%rest159640%_)
          _%copy159685%_)))
    (define hash-merge-right
      (lambda (_%h159623%_ . _%rest159624%_)
        (let* ((_%h159627%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159623%_)))
               (_%h159629%_ _%h159627%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h159629%_ _%rest159624%_))))
    (define __hash-merge!
      (lambda (_%h159483%_ . _%rest159484%_)
        (let ((_%h159487%_ _%h159483%_))
          (let ((__tmp170495
                 (lambda (_%hr159496%_)
                   (let* ((_%hr159499%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159496%_)))
                          (_%hr159501%_ _%hr159499%_)
                          (_%self153230159514%_ _%hr159501%_)
                          (_%proc159583%_
                           (lambda (_%k159517%_ _%v159518%_)
                             (if (let* ((_%h159520%_ _%h159487%_)
                                        (_%k159523%_ _%k159517%_)
                                        (_%h159527%_ _%h159520%_)
                                        (_%h159529%_ _%h159527%_))
                                   (__hash-key? _%h159529%_ _%k159523%_))
                                 '#!void
                                 (let* ((_%self154206159545%_ _%h159487%_)
                                        (_%key159548%_ _%k159517%_)
                                        (_%value159551%_ _%v159518%_)
                                        (_%self154206159555%_
                                         _%self154206159545%_)
                                        (_%self154206159557%_
                                         _%self154206159555%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159568159573%_
                                                (##unchecked-structure-ref
                                                 _%self154206159557%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159569159574%_
                                                (##unchecked-structure-ref
                                                 _%self154206159557%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159569159574%_
                                            _%object159568159573%_
                                            _%key159548%_
                                            _%value159551%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object159575159580%_
                                                (##unchecked-structure-ref
                                                 _%self154206159557%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method159576159581%_
                                                (##unchecked-structure-ref
                                                 _%self154206159557%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method159576159581%_
                                            _%object159575159580%_
                                            _%key159548%_
                                            _%value159551%_))))))))
                          (_%self153230159587%_ _%self153230159514%_)
                          (_%self153230159589%_ _%self153230159587%_)
                          (_%proc159599%_ _%proc159583%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159608159613%_
                                  (##unchecked-structure-ref
                                   _%self153230159589%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159609159614%_
                                  (##unchecked-structure-ref
                                   _%self153230159589%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159609159614%_
                              _%object159608159613%_
                              _%proc159599%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159615159620%_
                                  (##unchecked-structure-ref
                                   _%self153230159589%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159616159621%_
                                  (##unchecked-structure-ref
                                   _%self153230159589%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159616159621%_
                              _%object159615159620%_
                              _%proc159599%_))))))))
            (declare (not safe))
            (##for-each __tmp170495 _%rest159484%_))
          _%h159487%_)))
    (define hash-merge!
      (lambda (_%h159467%_ . _%rest159468%_)
        (let* ((_%h159471%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159467%_)))
               (_%h159473%_ _%h159471%_))
          (declare (not safe))
          (##apply __hash-merge! _%h159473%_ _%rest159468%_))))
    (define __hash-merge-right!
      (lambda (_%h159347%_ . _%rest159348%_)
        (let ((_%h159351%_ _%h159347%_))
          (let ((__tmp170496
                 (lambda (_%hr159360%_)
                   (let* ((_%hr159363%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr159360%_)))
                          (_%hr159365%_ _%hr159363%_)
                          (_%self153230159378%_ _%hr159365%_)
                          (_%proc159427%_
                           (lambda (_%k159381%_ _%v159382%_)
                             (let* ((_%self154206159384%_ _%h159351%_)
                                    (_%key159387%_ _%k159381%_)
                                    (_%value159390%_ _%v159382%_)
                                    (_%self154206159394%_ _%self154206159384%_)
                                    (_%self154206159396%_
                                     _%self154206159394%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159412159417%_
                                            (##unchecked-structure-ref
                                             _%self154206159396%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159413159418%_
                                            (##unchecked-structure-ref
                                             _%self154206159396%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159413159418%_
                                        _%object159412159417%_
                                        _%key159387%_
                                        _%value159390%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object159419159424%_
                                            (##unchecked-structure-ref
                                             _%self154206159396%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method159420159425%_
                                            (##unchecked-structure-ref
                                             _%self154206159396%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method159420159425%_
                                        _%object159419159424%_
                                        _%key159387%_
                                        _%value159390%_)))))))
                          (_%self153230159431%_ _%self153230159378%_)
                          (_%self153230159433%_ _%self153230159431%_)
                          (_%proc159443%_ _%proc159427%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object159452159457%_
                                  (##unchecked-structure-ref
                                   _%self153230159433%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159453159458%_
                                  (##unchecked-structure-ref
                                   _%self153230159433%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159453159458%_
                              _%object159452159457%_
                              _%proc159443%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object159459159464%_
                                  (##unchecked-structure-ref
                                   _%self153230159433%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method159460159465%_
                                  (##unchecked-structure-ref
                                   _%self153230159433%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method159460159465%_
                              _%object159459159464%_
                              _%proc159443%_))))))))
            (declare (not safe))
            (##for-each __tmp170496 _%rest159348%_))
          _%h159351%_)))
    (define hash-merge-right!
      (lambda (_%h159331%_ . _%rest159332%_)
        (let* ((_%h159335%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h159331%_)))
               (_%h159337%_ _%h159335%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h159337%_ _%rest159332%_))))))
