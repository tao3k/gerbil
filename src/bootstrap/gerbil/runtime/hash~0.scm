(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/hash::timestamp 1789552474)
  (begin
    (define UnboundKeyError::t
      (let ((__tmp172408 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'UnboundKeyError::t
         'UnboundKeyError
         __tmp172408
         '()
         '()
         ':init!)))
    (define UnboundKeyError?
      (let ()
        (declare (not safe))
        (__make-class-predicate UnboundKeyError::t)))
    (define make-UnboundKeyError
      (lambda _%$args171020%_
        (apply make-instance UnboundKeyError::t _%$args171020%_)))
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
      (lambda (_%where170894%_ _%message170895%_ . _%irritants170896%_)
        (let ((__tmp172409
               (let ((__obj172400
                      (let ()
                        (declare (not safe))
                        (##structure UnboundKeyError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (UnboundKeyError:::init!
                    __obj172400
                    _%message170895%_
                    'where:
                    _%where170894%_
                    'irritants:
                    _%irritants170896%_))
                 __obj172400)))
          (declare (not safe))
          (raise __tmp172409))))
    (define unbound-key-error? UnboundKeyError?)
    (define HashTable::t
      (let ((__tmp172410 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'HashTable::t
         'HashTable
         __tmp172410
         '(clear! copy delete! for-each length new ref set! update!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define HashTable::interface
      (let ((__obj172402
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj172402
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
        __obj172402))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       HashTable::t
       'interface-descriptor:
       HashTable::interface))
    (define make-HashTable
      (lambda (_%obj170892%_)
        (let ()
          (declare (not safe))
          (cast HashTable::interface _%obj170892%_))))
    (define try-HashTable
      (lambda (_%obj170890%_)
        (let ()
          (declare (not safe))
          (try-cast HashTable::interface _%obj170890%_))))
    (define HashTable?
      (lambda (_%obj170888%_)
        (let ((__tmp172411
               (let () (declare (not safe)) (##type-id HashTable::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj170888%_ __tmp172411))))
    (define is-HashTable?
      (lambda (_%obj170885%_)
        (if (let ()
              (declare (not safe))
              (satisfies? HashTable::interface _%obj170885%_))
            '#t
            '#f)))
    (define __HashTable-clear!
      (lambda (_%self154508170868%_)
        (let ((_%self154508170870%_ _%self154508170868%_))
          (declare (not safe))
          (let ((_%object170877170882%_
                 (##unchecked-structure-ref
                  _%self154508170870%_
                  '1
                  '#f
                  'clear!))
                (_%method170878170883%_
                 (##unchecked-structure-ref
                  _%self154508170870%_
                  '2
                  '#f
                  'clear!)))
            (_%method170878170883%_ _%object170877170882%_)))))
    (define ::HashTable-clear!
      (lambda (_%self154509170841%_)
        (let* ((_%self154509170843%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154509170841%_)))
               (_%self154509170845%_ _%self154509170843%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170853170858%_
                       (##unchecked-structure-ref
                        _%self154509170845%_
                        '1
                        '#f
                        'clear!))
                      (_%method170854170859%_
                       (##unchecked-structure-ref
                        _%self154509170845%_
                        '2
                        '#f
                        'clear!)))
                  (_%method170854170859%_ _%object170853170858%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170860170865%_
                       (##unchecked-structure-ref
                        _%self154509170845%_
                        '1
                        '#f
                        'clear!))
                      (_%method170861170866%_
                       (##unchecked-structure-ref
                        _%self154509170845%_
                        '2
                        '#f
                        'clear!)))
                  (_%method170861170866%_ _%object170860170865%_)))))))
    (define __HashTable-copy
      (lambda (_%self154753170824%_)
        (let ((_%self154753170826%_ _%self154753170824%_))
          (declare (not safe))
          (let ((_%object170833170838%_
                 (##unchecked-structure-ref _%self154753170826%_ '1 '#f 'copy))
                (_%method170834170839%_
                 (##unchecked-structure-ref
                  _%self154753170826%_
                  '3
                  '#f
                  'copy)))
            (_%method170834170839%_ _%object170833170838%_)))))
    (define ::HashTable-copy
      (lambda (_%self154754170797%_)
        (let* ((_%self154754170799%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154754170797%_)))
               (_%self154754170801%_ _%self154754170799%_))
          (if __DEBUG
              (let ((__tmp172412
                     (let ()
                       (declare (not safe))
                       (let ((_%object170809170814%_
                              (##unchecked-structure-ref
                               _%self154754170801%_
                               '1
                               '#f
                               'copy))
                             (_%method170810170815%_
                              (##unchecked-structure-ref
                               _%self154754170801%_
                               '3
                               '#f
                               'copy)))
                         (_%method170810170815%_ _%object170809170814%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp172412))
              (let ()
                (declare (not safe))
                (let ((_%object170816170821%_
                       (##unchecked-structure-ref
                        _%self154754170801%_
                        '1
                        '#f
                        'copy))
                      (_%method170817170822%_
                       (##unchecked-structure-ref
                        _%self154754170801%_
                        '3
                        '#f
                        'copy)))
                  (_%method170817170822%_ _%object170816170821%_)))))))
    (define __HashTable-delete!
      (lambda (_%self154997170779%_ _%key170780%_)
        (let ((_%self154997170782%_ _%self154997170779%_))
          (declare (not safe))
          (let ((_%object170789170794%_
                 (##unchecked-structure-ref
                  _%self154997170782%_
                  '1
                  '#f
                  'delete!))
                (_%method170790170795%_
                 (##unchecked-structure-ref
                  _%self154997170782%_
                  '4
                  '#f
                  'delete!)))
            (_%method170790170795%_ _%object170789170794%_ _%key170780%_)))))
    (define ::HashTable-delete!
      (lambda (_%self154998170751%_ _%key170752%_)
        (let* ((_%self154998170754%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self154998170751%_)))
               (_%self154998170756%_ _%self154998170754%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170764170769%_
                       (##unchecked-structure-ref
                        _%self154998170756%_
                        '1
                        '#f
                        'delete!))
                      (_%method170765170770%_
                       (##unchecked-structure-ref
                        _%self154998170756%_
                        '4
                        '#f
                        'delete!)))
                  (_%method170765170770%_
                   _%object170764170769%_
                   _%key170752%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170771170776%_
                       (##unchecked-structure-ref
                        _%self154998170756%_
                        '1
                        '#f
                        'delete!))
                      (_%method170772170777%_
                       (##unchecked-structure-ref
                        _%self154998170756%_
                        '4
                        '#f
                        'delete!)))
                  (_%method170772170777%_
                   _%object170771170776%_
                   _%key170752%_)))))))
    (define __HashTable-for-each
      (lambda (_%self155241170725%_ _%proc170726%_)
        (let* ((_%self155241170728%_ _%self155241170725%_)
               (_%proc170735%_ _%proc170726%_))
          (declare (not safe))
          (let ((_%object170743170748%_
                 (##unchecked-structure-ref
                  _%self155241170728%_
                  '1
                  '#f
                  'for-each))
                (_%method170744170749%_
                 (##unchecked-structure-ref
                  _%self155241170728%_
                  '5
                  '#f
                  'for-each)))
            (_%method170744170749%_ _%object170743170748%_ _%proc170735%_)))))
    (define ::HashTable-for-each
      (lambda (_%self155242170687%_ _%proc170688%_)
        (let* ((_%self155242170690%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155242170687%_)))
               (_%self155242170692%_ _%self155242170690%_))
          (if (procedure? _%proc170688%_)
              (let ((_%proc170701%_ _%proc170688%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object170710170715%_
                             (##unchecked-structure-ref
                              _%self155242170692%_
                              '1
                              '#f
                              'for-each))
                            (_%method170711170716%_
                             (##unchecked-structure-ref
                              _%self155242170692%_
                              '5
                              '#f
                              'for-each)))
                        (_%method170711170716%_
                         _%object170710170715%_
                         _%proc170701%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170717170722%_
                             (##unchecked-structure-ref
                              _%self155242170692%_
                              '1
                              '#f
                              'for-each))
                            (_%method170718170723%_
                             (##unchecked-structure-ref
                              _%self155242170692%_
                              '5
                              '#f
                              'for-each)))
                        (_%method170718170723%_
                         _%object170717170722%_
                         _%proc170701%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@30.14-30.18"
                 'contract:
                 'procedure?
                 'value:
                 _%proc170688%_)
                '#!void)))))
    (define __HashTable-length
      (lambda (_%self155485170670%_)
        (let ((_%self155485170672%_ _%self155485170670%_))
          (declare (not safe))
          (let ((_%object170679170684%_
                 (##unchecked-structure-ref
                  _%self155485170672%_
                  '1
                  '#f
                  'length))
                (_%method170680170685%_
                 (##unchecked-structure-ref
                  _%self155485170672%_
                  '6
                  '#f
                  'length)))
            (_%method170680170685%_ _%object170679170684%_)))))
    (define ::HashTable-length
      (lambda (_%self155486170640%_)
        (let* ((_%self155486170642%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155486170640%_)))
               (_%self155486170644%_ _%self155486170642%_))
          (if __DEBUG
              (let ((_%val170660%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object170652170657%_
                              (##unchecked-structure-ref
                               _%self155486170644%_
                               '1
                               '#f
                               'length))
                             (_%method170653170658%_
                              (##unchecked-structure-ref
                               _%self155486170644%_
                               '6
                               '#f
                               'length)))
                         (_%method170653170658%_ _%object170652170657%_)))))
                (if (fixnum? _%val170660%_)
                    _%val170660%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val170660%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object170662170667%_
                       (##unchecked-structure-ref
                        _%self155486170644%_
                        '1
                        '#f
                        'length))
                      (_%method170663170668%_
                       (##unchecked-structure-ref
                        _%self155486170644%_
                        '6
                        '#f
                        'length)))
                  (_%method170663170668%_ _%object170662170667%_)))))))
    (define __HashTable-new__%
      (lambda (_%self155729170604%_ _%size-hint170605%_)
        (let* ((_%self155729170607%_ _%self155729170604%_)
               (_%size-hint170614%_ _%size-hint170605%_))
          (declare (not safe))
          (let ((_%object170622170627%_
                 (##unchecked-structure-ref _%self155729170607%_ '1 '#f 'new))
                (_%method170623170628%_
                 (##unchecked-structure-ref _%self155729170607%_ '7 '#f 'new)))
            (_%method170623170628%_
             _%object170622170627%_
             _%size-hint170614%_)))))
    (define __HashTable-new__0
      (lambda (_%self155729170633%_)
        (let ((_%size-hint170635%_ '#f))
          (__HashTable-new__% _%self155729170633%_ _%size-hint170635%_))))
    (define __HashTable-new
      (lambda _g172413_
        (let ((_g172414_ (let () (declare (not safe)) (##length _g172413_))))
          (cond ((let () (declare (not safe)) (##fx= _g172414_ 1))
                 (apply __HashTable-new__0 _g172413_))
                ((let () (declare (not safe)) (##fx= _g172414_ 2))
                 (apply __HashTable-new__% _g172413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __HashTable-new
                  _g172413_))))))
    (define ::HashTable-new__%
      (lambda (_%self155730170549%_ _%size-hint170550%_)
        (let* ((_%self155730170552%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155730170549%_)))
               (_%self155730170554%_ _%self155730170552%_))
          (if (or (not _%size-hint170550%_) (fixnum? _%size-hint170550%_))
              (let ((_%size-hint170569%_ _%size-hint170550%_))
                (if __DEBUG
                    (let ((__tmp172415
                           (let ()
                             (declare (not safe))
                             (let ((_%object170578170583%_
                                    (##unchecked-structure-ref
                                     _%self155730170554%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method170579170584%_
                                    (##unchecked-structure-ref
                                     _%self155730170554%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method170579170584%_
                                _%object170578170583%_
                                _%size-hint170569%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp172415))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170585170590%_
                             (##unchecked-structure-ref
                              _%self155730170554%_
                              '1
                              '#f
                              'new))
                            (_%method170586170591%_
                             (##unchecked-structure-ref
                              _%self155730170554%_
                              '7
                              '#f
                              'new)))
                        (_%method170586170591%_
                         _%object170585170590%_
                         _%size-hint170569%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@32.9-32.18"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint170550%_)
                '#!void)))))
    (define ::HashTable-new__0
      (lambda (_%self155730170596%_)
        (let ((_%size-hint170598%_ '#f))
          (::HashTable-new__% _%self155730170596%_ _%size-hint170598%_))))
    (define ::HashTable-new
      (lambda _g172416_
        (let ((_g172417_ (let () (declare (not safe)) (##length _g172416_))))
          (cond ((let () (declare (not safe)) (##fx= _g172417_ 1))
                 (apply ::HashTable-new__0 _g172416_))
                ((let () (declare (not safe)) (##fx= _g172417_ 2))
                 (apply ::HashTable-new__% _g172416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ::HashTable-new
                  _g172416_))))))
    (define __HashTable-ref
      (lambda (_%self155973170529%_ _%key170530%_ _%default170531%_)
        (let ((_%self155973170533%_ _%self155973170529%_))
          (declare (not safe))
          (let ((_%object170540170545%_
                 (##unchecked-structure-ref _%self155973170533%_ '1 '#f 'ref))
                (_%method170541170546%_
                 (##unchecked-structure-ref _%self155973170533%_ '8 '#f 'ref)))
            (_%method170541170546%_
             _%object170540170545%_
             _%key170530%_
             _%default170531%_)))))
    (define ::HashTable-ref
      (lambda (_%self155974170500%_ _%key170501%_ _%default170502%_)
        (let* ((_%self155974170504%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self155974170500%_)))
               (_%self155974170506%_ _%self155974170504%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170514170519%_
                       (##unchecked-structure-ref
                        _%self155974170506%_
                        '1
                        '#f
                        'ref))
                      (_%method170515170520%_
                       (##unchecked-structure-ref
                        _%self155974170506%_
                        '8
                        '#f
                        'ref)))
                  (_%method170515170520%_
                   _%object170514170519%_
                   _%key170501%_
                   _%default170502%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170521170526%_
                       (##unchecked-structure-ref
                        _%self155974170506%_
                        '1
                        '#f
                        'ref))
                      (_%method170522170527%_
                       (##unchecked-structure-ref
                        _%self155974170506%_
                        '8
                        '#f
                        'ref)))
                  (_%method170522170527%_
                   _%object170521170526%_
                   _%key170501%_
                   _%default170502%_)))))))
    (define __HashTable-set!
      (lambda (_%self156217170481%_ _%key170482%_ _%value170483%_)
        (let ((_%self156217170485%_ _%self156217170481%_))
          (declare (not safe))
          (let ((_%object170492170497%_
                 (##unchecked-structure-ref _%self156217170485%_ '1 '#f 'set!))
                (_%method170493170498%_
                 (##unchecked-structure-ref
                  _%self156217170485%_
                  '9
                  '#f
                  'set!)))
            (_%method170493170498%_
             _%object170492170497%_
             _%key170482%_
             _%value170483%_)))))
    (define ::HashTable-set!
      (lambda (_%self156218170452%_ _%key170453%_ _%value170454%_)
        (let* ((_%self156218170456%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self156218170452%_)))
               (_%self156218170458%_ _%self156218170456%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170466170471%_
                       (##unchecked-structure-ref
                        _%self156218170458%_
                        '1
                        '#f
                        'set!))
                      (_%method170467170472%_
                       (##unchecked-structure-ref
                        _%self156218170458%_
                        '9
                        '#f
                        'set!)))
                  (_%method170467170472%_
                   _%object170466170471%_
                   _%key170453%_
                   _%value170454%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170473170478%_
                       (##unchecked-structure-ref
                        _%self156218170458%_
                        '1
                        '#f
                        'set!))
                      (_%method170474170479%_
                       (##unchecked-structure-ref
                        _%self156218170458%_
                        '9
                        '#f
                        'set!)))
                  (_%method170474170479%_
                   _%object170473170478%_
                   _%key170453%_
                   _%value170454%_)))))))
    (define __HashTable-update!
      (lambda (_%self156461170424%_
               _%key170425%_
               _%proc170426%_
               _%default170427%_)
        (let* ((_%self156461170429%_ _%self156461170424%_)
               (_%proc170436%_ _%proc170426%_))
          (declare (not safe))
          (let ((_%object170444170449%_
                 (##unchecked-structure-ref
                  _%self156461170429%_
                  '1
                  '#f
                  'update!))
                (_%method170445170450%_
                 (##unchecked-structure-ref
                  _%self156461170429%_
                  '10
                  '#f
                  'update!)))
            (_%method170445170450%_
             _%object170444170449%_
             _%key170425%_
             _%proc170436%_
             _%default170427%_)))))
    (define ::HashTable-update!
      (lambda (_%self156462170384%_
               _%key170385%_
               _%proc170386%_
               _%default170387%_)
        (let* ((_%self156462170389%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%self156462170384%_)))
               (_%self156462170391%_ _%self156462170389%_))
          (if (procedure? _%proc170386%_)
              (let ((_%proc170400%_ _%proc170386%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object170409170414%_
                             (##unchecked-structure-ref
                              _%self156462170391%_
                              '1
                              '#f
                              'update!))
                            (_%method170410170415%_
                             (##unchecked-structure-ref
                              _%self156462170391%_
                              '10
                              '#f
                              'update!)))
                        (_%method170410170415%_
                         _%object170409170414%_
                         _%key170385%_
                         _%proc170400%_
                         _%default170387%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object170416170421%_
                             (##unchecked-structure-ref
                              _%self156462170391%_
                              '1
                              '#f
                              'update!))
                            (_%method170417170422%_
                             (##unchecked-structure-ref
                              _%self156462170391%_
                              '10
                              '#f
                              'update!)))
                        (_%method170417170422%_
                         _%object170416170421%_
                         _%key170385%_
                         _%proc170400%_
                         _%default170387%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@28.17-28.21"
                 'contract:
                 'procedure?
                 'value:
                 _%proc170386%_)
                '#!void)))))
    (define Locker::t
      (let ((__tmp172418 (cons interface-instance::t '())))
        (declare (not safe))
        (make-class-type
         'Locker::t
         'Locker
         __tmp172418
         '(read-lock! read-unlock! write-lock! write-unlock!)
         '((final: . #t) (struct: . #t))
         '#f)))
    (define Locker::interface
      (let ((__obj172404
             (let ()
               (declare (not safe))
               (##structure interface-descriptor::t '#f '#f '#f))))
        (let ()
          (declare (not safe))
          (interface-descriptor:::init!
           __obj172404
           Locker::t
           '((Locker::read-lock! read-lock!)
             (Locker::read-unlock! read-unlock!)
             (Locker::write-lock! write-lock!)
             (Locker::write-unlock! write-unlock!))))
        __obj172404))
    (let ()
      (declare (not safe))
      (__class-type-properties-put!
       Locker::t
       'interface-descriptor:
       Locker::interface))
    (define make-Locker
      (lambda (_%obj170382%_)
        (let () (declare (not safe)) (cast Locker::interface _%obj170382%_))))
    (define try-Locker
      (lambda (_%obj170380%_)
        (let ()
          (declare (not safe))
          (try-cast Locker::interface _%obj170380%_))))
    (define Locker?
      (lambda (_%obj170378%_)
        (let ((__tmp172419
               (let () (declare (not safe)) (##type-id Locker::t))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj170378%_ __tmp172419))))
    (define is-Locker?
      (lambda (_%obj170375%_)
        (if (let ()
              (declare (not safe))
              (satisfies? Locker::interface _%obj170375%_))
            '#t
            '#f)))
    (define __Locker-read-lock!
      (lambda (_%self156705170358%_)
        (let ((_%self156705170360%_ _%self156705170358%_))
          (declare (not safe))
          (let ((_%object170367170372%_
                 (##unchecked-structure-ref
                  _%self156705170360%_
                  '1
                  '#f
                  'read-lock!))
                (_%method170368170373%_
                 (##unchecked-structure-ref
                  _%self156705170360%_
                  '2
                  '#f
                  'read-lock!)))
            (_%method170368170373%_ _%object170367170372%_)))))
    (define ::Locker-read-lock!
      (lambda (_%self156706170331%_)
        (let* ((_%self156706170333%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self156706170331%_)))
               (_%self156706170335%_ _%self156706170333%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170343170348%_
                       (##unchecked-structure-ref
                        _%self156706170335%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method170344170349%_
                       (##unchecked-structure-ref
                        _%self156706170335%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method170344170349%_ _%object170343170348%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170350170355%_
                       (##unchecked-structure-ref
                        _%self156706170335%_
                        '1
                        '#f
                        'read-lock!))
                      (_%method170351170356%_
                       (##unchecked-structure-ref
                        _%self156706170335%_
                        '2
                        '#f
                        'read-lock!)))
                  (_%method170351170356%_ _%object170350170355%_)))))))
    (define __Locker-read-unlock!
      (lambda (_%self156949170314%_)
        (let ((_%self156949170316%_ _%self156949170314%_))
          (declare (not safe))
          (let ((_%object170323170328%_
                 (##unchecked-structure-ref
                  _%self156949170316%_
                  '1
                  '#f
                  'read-unlock!))
                (_%method170324170329%_
                 (##unchecked-structure-ref
                  _%self156949170316%_
                  '3
                  '#f
                  'read-unlock!)))
            (_%method170324170329%_ _%object170323170328%_)))))
    (define ::Locker-read-unlock!
      (lambda (_%self156950170287%_)
        (let* ((_%self156950170289%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self156950170287%_)))
               (_%self156950170291%_ _%self156950170289%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170299170304%_
                       (##unchecked-structure-ref
                        _%self156950170291%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method170300170305%_
                       (##unchecked-structure-ref
                        _%self156950170291%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method170300170305%_ _%object170299170304%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170306170311%_
                       (##unchecked-structure-ref
                        _%self156950170291%_
                        '1
                        '#f
                        'read-unlock!))
                      (_%method170307170312%_
                       (##unchecked-structure-ref
                        _%self156950170291%_
                        '3
                        '#f
                        'read-unlock!)))
                  (_%method170307170312%_ _%object170306170311%_)))))))
    (define __Locker-write-lock!
      (lambda (_%self157193170270%_)
        (let ((_%self157193170272%_ _%self157193170270%_))
          (declare (not safe))
          (let ((_%object170279170284%_
                 (##unchecked-structure-ref
                  _%self157193170272%_
                  '1
                  '#f
                  'write-lock!))
                (_%method170280170285%_
                 (##unchecked-structure-ref
                  _%self157193170272%_
                  '4
                  '#f
                  'write-lock!)))
            (_%method170280170285%_ _%object170279170284%_)))))
    (define ::Locker-write-lock!
      (lambda (_%self157194170243%_)
        (let* ((_%self157194170245%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self157194170243%_)))
               (_%self157194170247%_ _%self157194170245%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170255170260%_
                       (##unchecked-structure-ref
                        _%self157194170247%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method170256170261%_
                       (##unchecked-structure-ref
                        _%self157194170247%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method170256170261%_ _%object170255170260%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170262170267%_
                       (##unchecked-structure-ref
                        _%self157194170247%_
                        '1
                        '#f
                        'write-lock!))
                      (_%method170263170268%_
                       (##unchecked-structure-ref
                        _%self157194170247%_
                        '4
                        '#f
                        'write-lock!)))
                  (_%method170263170268%_ _%object170262170267%_)))))))
    (define __Locker-write-unlock!
      (lambda (_%self157437170226%_)
        (let ((_%self157437170228%_ _%self157437170226%_))
          (declare (not safe))
          (let ((_%object170235170240%_
                 (##unchecked-structure-ref
                  _%self157437170228%_
                  '1
                  '#f
                  'write-unlock!))
                (_%method170236170241%_
                 (##unchecked-structure-ref
                  _%self157437170228%_
                  '5
                  '#f
                  'write-unlock!)))
            (_%method170236170241%_ _%object170235170240%_)))))
    (define ::Locker-write-unlock!
      (lambda (_%self157438170199%_)
        (let* ((_%self157438170201%_
                (let ()
                  (declare (not safe))
                  (cast Locker::interface _%self157438170199%_)))
               (_%self157438170203%_ _%self157438170201%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object170211170216%_
                       (##unchecked-structure-ref
                        _%self157438170203%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method170212170217%_
                       (##unchecked-structure-ref
                        _%self157438170203%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method170212170217%_ _%object170211170216%_)))
              (let ()
                (declare (not safe))
                (let ((_%object170218170223%_
                       (##unchecked-structure-ref
                        _%self157438170203%_
                        '1
                        '#f
                        'write-unlock!))
                      (_%method170219170224%_
                       (##unchecked-structure-ref
                        _%self157438170203%_
                        '5
                        '#f
                        'write-unlock!)))
                  (_%method170219170224%_ _%object170218170223%_)))))))
    (define __wrap-hash
      (lambda (_%proc170185%_)
        (let ((_%proc170188%_ _%proc170185%_))
          (lambda (_%self170197%_)
            (let ((__tmp172420
                   (let ()
                     (declare (not safe))
                     (_%proc170188%_ _%self170197%_))))
              (declare (not safe))
              (cast HashTable::interface __tmp172420))))))
    (define wrap-hash
      (lambda (_%proc170171%_)
        (if (procedure? _%proc170171%_)
            (let ((_%proc170175%_ _%proc170171%_))
              (__wrap-hash _%proc170175%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@42.18-42.22"
               'contract:
               'procedure?
               'value:
               _%proc170171%_)
              '#!void))))
    (define __wrap-hash-new
      (lambda (_%proc170145%_)
        (let* ((_%proc170148%_ _%proc170145%_)
               (_%$%opt-lambda170156170161%_
                (lambda (_%self170158%_ _%size-hint170159%_)
                  (let ((__tmp172421
                         (let ()
                           (declare (not safe))
                           (_%proc170148%_
                            _%self170158%_
                            _%size-hint170159%_))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp172421)))))
          (lambda _g172422_
            (let ((_g172423_
                   (let () (declare (not safe)) (##length _g172422_))))
              (cond ((let () (declare (not safe)) (##fx= _g172423_ 1))
                     (apply (lambda (_%self170164%_)
                              (let ((_%size-hint170166%_ '#f))
                                (_%$%opt-lambda170156170161%_
                                 _%self170164%_
                                 _%size-hint170166%_)))
                            _g172422_))
                    ((let () (declare (not safe)) (##fx= _g172423_ 2))
                     (apply _%$%opt-lambda170156170161%_ _g172422_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g172422_))))))))
    (define wrap-hash-new
      (lambda (_%proc170131%_)
        (if (procedure? _%proc170131%_)
            (let ((_%proc170135%_ _%proc170131%_))
              (__wrap-hash-new _%proc170135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@46.22-46.26"
               'contract:
               'procedure?
               'value:
               _%proc170131%_)
              '#!void))))
    (let* ((_%klass170094%_ __table::t)
           (_%id170097%_ 'HashTable::ref)
           (_%proc170100%_ raw-table-ref)
           (_%rebind?170103%_ '#f)
           (_%id170108%_ _%id170097%_)
           (_%proc170121%_ _%proc170100%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170094%_
       _%id170108%_
       _%proc170121%_
       _%rebind?170103%_))
    (let* ((_%klass170057%_ __table::t)
           (_%id170060%_ 'HashTable::set!)
           (_%proc170063%_ raw-table-set!)
           (_%rebind?170066%_ '#f)
           (_%id170071%_ _%id170060%_)
           (_%proc170084%_ _%proc170063%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170057%_
       _%id170071%_
       _%proc170084%_
       _%rebind?170066%_))
    (let* ((_%klass170020%_ __table::t)
           (_%id170023%_ 'HashTable::update!)
           (_%proc170026%_ raw-table-update!)
           (_%rebind?170029%_ '#f)
           (_%id170034%_ _%id170023%_)
           (_%proc170047%_ _%proc170026%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass170020%_
       _%id170034%_
       _%proc170047%_
       _%rebind?170029%_))
    (let* ((_%klass169983%_ __table::t)
           (_%id169986%_ 'HashTable::delete!)
           (_%proc169989%_ raw-table-delete!)
           (_%rebind?169992%_ '#f)
           (_%id169997%_ _%id169986%_)
           (_%proc170010%_ _%proc169989%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169983%_
       _%id169997%_
       _%proc170010%_
       _%rebind?169992%_))
    (let* ((_%klass169946%_ __table::t)
           (_%id169949%_ 'HashTable::for-each)
           (_%proc169952%_ raw-table-for-each)
           (_%rebind?169955%_ '#f)
           (_%id169960%_ _%id169949%_)
           (_%proc169973%_ _%proc169952%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169946%_
       _%id169960%_
       _%proc169973%_
       _%rebind?169955%_))
    (let* ((_%klass169909%_ __table::t)
           (_%id169912%_ 'HashTable::length)
           (_%proc169915%_ &raw-table-count)
           (_%rebind?169918%_ '#f)
           (_%id169923%_ _%id169912%_)
           (_%proc169936%_ _%proc169915%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169909%_
       _%id169923%_
       _%proc169936%_
       _%rebind?169918%_))
    (let* ((_%klass169857%_ __table::t)
           (_%id169860%_ 'HashTable::copy)
           (_%proc169880%_
            (let* ((_%proc169863%_ raw-table-copy)
                   (_%proc169868%_ _%proc169863%_))
              (__wrap-hash _%proc169868%_)))
           (_%rebind?169883%_ '#f)
           (_%id169888%_ _%id169860%_))
      (if (procedure? _%proc169880%_)
          (let ((_%proc169899%_ _%proc169880%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169857%_
             _%id169888%_
             _%proc169899%_
             _%rebind?169883%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169880%_)
            '#!void)))
    (let* ((_%klass169805%_ __table::t)
           (_%id169808%_ 'HashTable::new)
           (_%proc169828%_
            (let* ((_%proc169811%_ raw-table-new)
                   (_%proc169816%_ _%proc169811%_))
              (__wrap-hash-new _%proc169816%_)))
           (_%rebind?169831%_ '#f)
           (_%id169836%_ _%id169808%_))
      (if (procedure? _%proc169828%_)
          (let ((_%proc169847%_ _%proc169828%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169805%_
             _%id169836%_
             _%proc169847%_
             _%rebind?169831%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169828%_)
            '#!void)))
    (let* ((_%klass169768%_ __table::t)
           (_%id169771%_ 'HashTable::clear!)
           (_%proc169774%_ raw-table-clear!)
           (_%rebind?169777%_ '#f)
           (_%id169782%_ _%id169771%_)
           (_%proc169795%_ _%proc169774%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169768%_
       _%id169782%_
       _%proc169795%_
       _%rebind?169777%_))
    (let* ((_%klass169731%_ __gc-table::t)
           (_%id169734%_ 'HashTable::ref)
           (_%proc169737%_ gc-table-ref)
           (_%rebind?169740%_ '#f)
           (_%id169745%_ _%id169734%_)
           (_%proc169758%_ _%proc169737%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169731%_
       _%id169745%_
       _%proc169758%_
       _%rebind?169740%_))
    (let* ((_%klass169694%_ __gc-table::t)
           (_%id169697%_ 'HashTable::set!)
           (_%proc169700%_ gc-table-set!)
           (_%rebind?169703%_ '#f)
           (_%id169708%_ _%id169697%_)
           (_%proc169721%_ _%proc169700%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169694%_
       _%id169708%_
       _%proc169721%_
       _%rebind?169703%_))
    (let* ((_%klass169657%_ __gc-table::t)
           (_%id169660%_ 'HashTable::update!)
           (_%proc169663%_ gc-table-update!)
           (_%rebind?169666%_ '#f)
           (_%id169671%_ _%id169660%_)
           (_%proc169684%_ _%proc169663%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169657%_
       _%id169671%_
       _%proc169684%_
       _%rebind?169666%_))
    (let* ((_%klass169620%_ __gc-table::t)
           (_%id169623%_ 'HashTable::delete!)
           (_%proc169626%_ gc-table-delete!)
           (_%rebind?169629%_ '#f)
           (_%id169634%_ _%id169623%_)
           (_%proc169647%_ _%proc169626%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169620%_
       _%id169634%_
       _%proc169647%_
       _%rebind?169629%_))
    (let* ((_%klass169583%_ __gc-table::t)
           (_%id169586%_ 'HashTable::for-each)
           (_%proc169589%_ gc-table-for-each)
           (_%rebind?169592%_ '#f)
           (_%id169597%_ _%id169586%_)
           (_%proc169610%_ _%proc169589%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169583%_
       _%id169597%_
       _%proc169610%_
       _%rebind?169592%_))
    (let* ((_%klass169546%_ __gc-table::t)
           (_%id169549%_ 'HashTable::length)
           (_%proc169552%_ gc-table-length)
           (_%rebind?169555%_ '#f)
           (_%id169560%_ _%id169549%_)
           (_%proc169573%_ _%proc169552%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169546%_
       _%id169560%_
       _%proc169573%_
       _%rebind?169555%_))
    (let* ((_%klass169494%_ __gc-table::t)
           (_%id169497%_ 'HashTable::copy)
           (_%proc169517%_
            (let* ((_%proc169500%_ gc-table-copy)
                   (_%proc169505%_ _%proc169500%_))
              (__wrap-hash _%proc169505%_)))
           (_%rebind?169520%_ '#f)
           (_%id169525%_ _%id169497%_))
      (if (procedure? _%proc169517%_)
          (let ((_%proc169536%_ _%proc169517%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169494%_
             _%id169525%_
             _%proc169536%_
             _%rebind?169520%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169517%_)
            '#!void)))
    (let* ((_%klass169442%_ __gc-table::t)
           (_%id169445%_ 'HashTable::new)
           (_%proc169465%_
            (let* ((_%proc169448%_ gc-table-new)
                   (_%proc169453%_ _%proc169448%_))
              (__wrap-hash-new _%proc169453%_)))
           (_%rebind?169468%_ '#f)
           (_%id169473%_ _%id169445%_))
      (if (procedure? _%proc169465%_)
          (let ((_%proc169484%_ _%proc169465%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169442%_
             _%id169473%_
             _%proc169484%_
             _%rebind?169468%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169465%_)
            '#!void)))
    (let* ((_%klass169405%_ __gc-table::t)
           (_%id169408%_ 'HashTable::clear!)
           (_%proc169411%_ gc-table-clear!)
           (_%rebind?169414%_ '#f)
           (_%id169419%_ _%id169408%_)
           (_%proc169432%_ _%proc169411%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169405%_
       _%id169419%_
       _%proc169432%_
       _%rebind?169414%_))
    (define gambit-table-update!
      (lambda (_%table169398%_
               _%key169399%_
               _%update169400%_
               _%default169401%_)
        (let ((_%result169403%_
               (table-ref _%table169398%_ _%key169399%_ _%default169401%_)))
          (table-set!
           _%table169398%_
           _%key169399%_
           (_%update169400%_ _%result169403%_)))))
    (define gambit-table-for-each
      (lambda (_%table169395%_ _%proc169396%_)
        (table-for-each _%proc169396%_ _%table169395%_)))
    (define gambit-table-clear!
      (lambda (_%table169393%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _%table169393%_ '0 '5 '#f '#f))))
    (let* ((_%klass169356%_ (macro-type-table))
           (_%id169359%_ 'HashTable::ref)
           (_%proc169362%_ table-ref)
           (_%rebind?169365%_ '#f)
           (_%id169370%_ _%id169359%_)
           (_%proc169383%_ _%proc169362%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169356%_
       _%id169370%_
       _%proc169383%_
       _%rebind?169365%_))
    (let* ((_%klass169319%_ (macro-type-table))
           (_%id169322%_ 'HashTable::set!)
           (_%proc169325%_ table-set!)
           (_%rebind?169328%_ '#f)
           (_%id169333%_ _%id169322%_)
           (_%proc169346%_ _%proc169325%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169319%_
       _%id169333%_
       _%proc169346%_
       _%rebind?169328%_))
    (let* ((_%klass169282%_ (macro-type-table))
           (_%id169285%_ 'HashTable::update!)
           (_%proc169288%_ gambit-table-update!)
           (_%rebind?169291%_ '#f)
           (_%id169296%_ _%id169285%_)
           (_%proc169309%_ _%proc169288%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169282%_
       _%id169296%_
       _%proc169309%_
       _%rebind?169291%_))
    (let* ((_%klass169245%_ (macro-type-table))
           (_%id169248%_ 'HashTable::delete!)
           (_%proc169251%_ table-set!)
           (_%rebind?169254%_ '#f)
           (_%id169259%_ _%id169248%_)
           (_%proc169272%_ _%proc169251%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169245%_
       _%id169259%_
       _%proc169272%_
       _%rebind?169254%_))
    (let* ((_%klass169208%_ (macro-type-table))
           (_%id169211%_ 'HashTable::for-each)
           (_%proc169214%_ gambit-table-for-each)
           (_%rebind?169217%_ '#f)
           (_%id169222%_ _%id169211%_)
           (_%proc169235%_ _%proc169214%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169208%_
       _%id169222%_
       _%proc169235%_
       _%rebind?169217%_))
    (let* ((_%klass169171%_ (macro-type-table))
           (_%id169174%_ 'HashTable::length)
           (_%proc169177%_ table-length)
           (_%rebind?169180%_ '#f)
           (_%id169185%_ _%id169174%_)
           (_%proc169198%_ _%proc169177%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169171%_
       _%id169185%_
       _%proc169198%_
       _%rebind?169180%_))
    (let* ((_%klass169119%_ (macro-type-table))
           (_%id169122%_ 'HashTable::copy)
           (_%proc169142%_
            (let* ((_%proc169125%_ table-copy) (_%proc169130%_ _%proc169125%_))
              (__wrap-hash _%proc169130%_)))
           (_%rebind?169145%_ '#f)
           (_%id169150%_ _%id169122%_))
      (if (procedure? _%proc169142%_)
          (let ((_%proc169161%_ _%proc169142%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169119%_
             _%id169150%_
             _%proc169161%_
             _%rebind?169145%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169142%_)
            '#!void)))
    (let* ((_%klass169067%_ (macro-type-table))
           (_%id169070%_ 'HashTable::new)
           (_%proc169090%_
            (let* ((_%proc169073%_ table-new) (_%proc169078%_ _%proc169073%_))
              (__wrap-hash-new _%proc169078%_)))
           (_%rebind?169093%_ '#f)
           (_%id169098%_ _%id169070%_))
      (if (procedure? _%proc169090%_)
          (let ((_%proc169109%_ _%proc169090%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass169067%_
             _%id169098%_
             _%proc169109%_
             _%rebind?169093%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc169090%_)
            '#!void)))
    (let* ((_%klass169030%_ (macro-type-table))
           (_%id169033%_ 'HashTable::clear!)
           (_%proc169036%_ gambit-table-clear!)
           (_%rebind?169039%_ '#f)
           (_%id169044%_ _%id169033%_)
           (_%proc169057%_ _%proc169036%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass169030%_
       _%id169044%_
       _%proc169057%_
       _%rebind?169039%_))
    (define hash-table::t
      (let* ((_%slots168993%_ '(table count free hash test seed lock))
             (_%slot-vector168995%_ (list->vector (cons '#f _%slots168993%_)))
             (_%slot-table169021%_
              (let ((_%slot-table168997%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp172426
                       (lambda (_%slot168999%_ _%field169000%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table168997%_
                            _%slot168999%_
                            _%field169000%_))
                         (let ((__tmp172427
                                (let ((_%sym169002%_ _%slot168999%_))
                                  (if (symbol? _%sym169002%_)
                                      (let ((_%sym169007%_ _%sym169002%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym169007%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym169002%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table168997%_
                            __tmp172427
                            _%field169000%_))))
                      (__tmp172424
                       (let ((__tmp172425
                              (let ()
                                (declare (not safe))
                                (##length _%slots168993%_))))
                         (declare (not safe))
                         (##iota __tmp172425 '1))))
                  (declare (not safe))
                  (##for-each __tmp172426 _%slots168993%_ __tmp172424))
                _%slot-table168997%_))
             (_%flags169023%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields169025%_ '#())
             (_%properties169027%_
              (cons (cons 'direct-slots: _%slots168993%_) '((struct: . #t))))
             (__tmp172428 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'hash-table::t
         'hash-table
         _%flags169023%_
         __table::t
         _%fields169025%_
         __tmp172428
         _%slot-vector168995%_
         _%slot-table169021%_
         _%properties169027%_
         '#f
         '#f
         '#f
         '#f)))
    (define gc-hash-table::t
      (let* ((_%slots168956%_ '(gcht immediate))
             (_%slot-vector168958%_ (list->vector (cons '#f _%slots168956%_)))
             (_%slot-table168984%_
              (let ((_%slot-table168960%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp172431
                       (lambda (_%slot168962%_ _%field168963%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table168960%_
                            _%slot168962%_
                            _%field168963%_))
                         (let ((__tmp172432
                                (let ((_%sym168965%_ _%slot168962%_))
                                  (if (symbol? _%sym168965%_)
                                      (let ((_%sym168970%_ _%sym168965%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym168970%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/hash
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym168965%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table168960%_
                            __tmp172432
                            _%field168963%_))))
                      (__tmp172429
                       (let ((__tmp172430
                              (let ()
                                (declare (not safe))
                                (##length _%slots168956%_))))
                         (declare (not safe))
                         (##iota __tmp172430 '1))))
                  (declare (not safe))
                  (##for-each __tmp172431 _%slots168956%_ __tmp172429))
                _%slot-table168960%_))
             (_%flags168986%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields168988%_ '#())
             (_%properties168990%_
              (cons (cons 'direct-slots: _%slots168956%_) '((struct: . #t))))
             (__tmp172433 (cons object::t (cons t::t '()))))
        (declare (not safe))
        (##structure
         class::t
         'gc-hash-table::t
         'gc-hash-table
         _%flags168986%_
         __gc-table::t
         _%fields168988%_
         __tmp172433
         _%slot-vector168958%_
         _%slot-table168984%_
         _%properties168990%_
         '#f
         '#f
         '#f
         '#f)))
    (define locked-hash-table::t
      (let ((__tmp172435 (list))
            (__tmp172434
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'locked-hash-table::t
         'locked-hash-table
         __tmp172435
         '(table lock)
         __tmp172434
         '#f)))
    (define locked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate locked-hash-table::t)))
    (define make-locked-hash-table
      (lambda _%$args168953%_
        (apply make-instance locked-hash-table::t _%$args168953%_)))
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
      (let ((__tmp172437 (list))
            (__tmp172436
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'checked-hash-table::t
         'checked-hash-table
         __tmp172437
         '(table key-check)
         __tmp172436
         '#f)))
    (define checked-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate checked-hash-table::t)))
    (define make-checked-hash-table
      (lambda _%$args168950%_
        (apply make-instance checked-hash-table::t _%$args168950%_)))
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
      (let ((__tmp172439 (list hash-table::t))
            (__tmp172438 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'eq-hash-table::t::t
         'eq-hash-table
         __tmp172439
         '()
         __tmp172438
         '#f)))
    (define eq-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eq-hash-table::t)))
    (define make-eq-hash-table
      (lambda _%$args168947%_
        (apply make-instance eq-hash-table::t _%$args168947%_)))
    (define eqv-hash-table::t
      (let ((__tmp172441 (list hash-table::t))
            (__tmp172440 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'eqv-hash-table::t::t
         'eqv-hash-table
         __tmp172441
         '()
         __tmp172440
         '#f)))
    (define eqv-hash-table?
      (let () (declare (not safe)) (__make-class-predicate eqv-hash-table::t)))
    (define make-eqv-hash-table
      (lambda _%$args168944%_
        (apply make-instance eqv-hash-table::t _%$args168944%_)))
    (define symbol-hash-table::t
      (let ((__tmp172443 (list hash-table::t))
            (__tmp172442 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'symbol-hash-table::t::t
         'symbol-hash-table
         __tmp172443
         '()
         __tmp172442
         '#f)))
    (define symbol-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate symbol-hash-table::t)))
    (define make-symbol-hash-table
      (lambda _%$args168941%_
        (apply make-instance symbol-hash-table::t _%$args168941%_)))
    (define string-hash-table::t
      (let ((__tmp172445 (list hash-table::t))
            (__tmp172444 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'string-hash-table::t::t
         'string-hash-table
         __tmp172445
         '()
         __tmp172444
         '#f)))
    (define string-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate string-hash-table::t)))
    (define make-string-hash-table
      (lambda _%$args168938%_
        (apply make-instance string-hash-table::t _%$args168938%_)))
    (define immediate-hash-table::t
      (let ((__tmp172447 (list hash-table::t))
            (__tmp172446 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'immediate-hash-table::t::t
         'immediate-hash-table
         __tmp172447
         '()
         __tmp172446
         '#f)))
    (define immediate-hash-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate immediate-hash-table::t)))
    (define make-immediate-hash-table
      (lambda _%$args168935%_
        (apply make-instance immediate-hash-table::t _%$args168935%_)))
    (let* ((_%klass168898%_ hash-table::t)
           (_%id168901%_ 'HashTable::ref)
           (_%proc168904%_ raw-table-ref)
           (_%rebind?168907%_ '#f)
           (_%id168912%_ _%id168901%_)
           (_%proc168925%_ _%proc168904%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168898%_
       _%id168912%_
       _%proc168925%_
       _%rebind?168907%_))
    (let* ((_%klass168861%_ hash-table::t)
           (_%id168864%_ 'HashTable::set!)
           (_%proc168867%_ raw-table-set!)
           (_%rebind?168870%_ '#f)
           (_%id168875%_ _%id168864%_)
           (_%proc168888%_ _%proc168867%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168861%_
       _%id168875%_
       _%proc168888%_
       _%rebind?168870%_))
    (let* ((_%klass168824%_ hash-table::t)
           (_%id168827%_ 'HashTable::update!)
           (_%proc168830%_ raw-table-update!)
           (_%rebind?168833%_ '#f)
           (_%id168838%_ _%id168827%_)
           (_%proc168851%_ _%proc168830%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168824%_
       _%id168838%_
       _%proc168851%_
       _%rebind?168833%_))
    (let* ((_%klass168787%_ hash-table::t)
           (_%id168790%_ 'HashTable::delete!)
           (_%proc168793%_ raw-table-delete!)
           (_%rebind?168796%_ '#f)
           (_%id168801%_ _%id168790%_)
           (_%proc168814%_ _%proc168793%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168787%_
       _%id168801%_
       _%proc168814%_
       _%rebind?168796%_))
    (let* ((_%klass168750%_ hash-table::t)
           (_%id168753%_ 'HashTable::for-each)
           (_%proc168756%_ raw-table-for-each)
           (_%rebind?168759%_ '#f)
           (_%id168764%_ _%id168753%_)
           (_%proc168777%_ _%proc168756%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168750%_
       _%id168764%_
       _%proc168777%_
       _%rebind?168759%_))
    (let* ((_%klass168713%_ hash-table::t)
           (_%id168716%_ 'HashTable::length)
           (_%proc168719%_ &raw-table-count)
           (_%rebind?168722%_ '#f)
           (_%id168727%_ _%id168716%_)
           (_%proc168740%_ _%proc168719%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168713%_
       _%id168727%_
       _%proc168740%_
       _%rebind?168722%_))
    (let* ((_%klass168661%_ hash-table::t)
           (_%id168664%_ 'HashTable::copy)
           (_%proc168684%_
            (let* ((_%proc168667%_ raw-table-copy)
                   (_%proc168672%_ _%proc168667%_))
              (__wrap-hash _%proc168672%_)))
           (_%rebind?168687%_ '#f)
           (_%id168692%_ _%id168664%_))
      (if (procedure? _%proc168684%_)
          (let ((_%proc168703%_ _%proc168684%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass168661%_
             _%id168692%_
             _%proc168703%_
             _%rebind?168687%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc168684%_)
            '#!void)))
    (let* ((_%klass168609%_ hash-table::t)
           (_%id168612%_ 'HashTable::new)
           (_%proc168632%_
            (let* ((_%proc168615%_ raw-table-new)
                   (_%proc168620%_ _%proc168615%_))
              (__wrap-hash-new _%proc168620%_)))
           (_%rebind?168635%_ '#f)
           (_%id168640%_ _%id168612%_))
      (if (procedure? _%proc168632%_)
          (let ((_%proc168651%_ _%proc168632%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass168609%_
             _%id168640%_
             _%proc168651%_
             _%rebind?168635%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc168632%_)
            '#!void)))
    (let* ((_%klass168572%_ hash-table::t)
           (_%id168575%_ 'HashTable::clear!)
           (_%proc168578%_ raw-table-clear!)
           (_%rebind?168581%_ '#f)
           (_%id168586%_ _%id168575%_)
           (_%proc168599%_ _%proc168578%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168572%_
       _%id168586%_
       _%proc168599%_
       _%rebind?168581%_))
    (let* ((_%klass168535%_ eq-hash-table::t)
           (_%id168538%_ 'HashTable::ref)
           (_%proc168541%_ eq-table-ref)
           (_%rebind?168544%_ '#f)
           (_%id168549%_ _%id168538%_)
           (_%proc168562%_ _%proc168541%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168535%_
       _%id168549%_
       _%proc168562%_
       _%rebind?168544%_))
    (let* ((_%klass168498%_ eq-hash-table::t)
           (_%id168501%_ 'HashTable::set!)
           (_%proc168504%_ eq-table-set!)
           (_%rebind?168507%_ '#f)
           (_%id168512%_ _%id168501%_)
           (_%proc168525%_ _%proc168504%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168498%_
       _%id168512%_
       _%proc168525%_
       _%rebind?168507%_))
    (let* ((_%klass168461%_ eq-hash-table::t)
           (_%id168464%_ 'HashTable::update!)
           (_%proc168467%_ eq-table-update!)
           (_%rebind?168470%_ '#f)
           (_%id168475%_ _%id168464%_)
           (_%proc168488%_ _%proc168467%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168461%_
       _%id168475%_
       _%proc168488%_
       _%rebind?168470%_))
    (let* ((_%klass168424%_ eq-hash-table::t)
           (_%id168427%_ 'HashTable::delete!)
           (_%proc168430%_ eq-table-delete!)
           (_%rebind?168433%_ '#f)
           (_%id168438%_ _%id168427%_)
           (_%proc168451%_ _%proc168430%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168424%_
       _%id168438%_
       _%proc168451%_
       _%rebind?168433%_))
    (let* ((_%klass168387%_ eqv-hash-table::t)
           (_%id168390%_ 'HashTable::ref)
           (_%proc168393%_ eqv-table-ref)
           (_%rebind?168396%_ '#f)
           (_%id168401%_ _%id168390%_)
           (_%proc168414%_ _%proc168393%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168387%_
       _%id168401%_
       _%proc168414%_
       _%rebind?168396%_))
    (let* ((_%klass168350%_ eqv-hash-table::t)
           (_%id168353%_ 'HashTable::set!)
           (_%proc168356%_ eqv-table-set!)
           (_%rebind?168359%_ '#f)
           (_%id168364%_ _%id168353%_)
           (_%proc168377%_ _%proc168356%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168350%_
       _%id168364%_
       _%proc168377%_
       _%rebind?168359%_))
    (let* ((_%klass168313%_ eqv-hash-table::t)
           (_%id168316%_ 'HashTable::update!)
           (_%proc168319%_ eqv-table-update!)
           (_%rebind?168322%_ '#f)
           (_%id168327%_ _%id168316%_)
           (_%proc168340%_ _%proc168319%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168313%_
       _%id168327%_
       _%proc168340%_
       _%rebind?168322%_))
    (let* ((_%klass168276%_ eqv-hash-table::t)
           (_%id168279%_ 'HashTable::delete!)
           (_%proc168282%_ eqv-table-delete!)
           (_%rebind?168285%_ '#f)
           (_%id168290%_ _%id168279%_)
           (_%proc168303%_ _%proc168282%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168276%_
       _%id168290%_
       _%proc168303%_
       _%rebind?168285%_))
    (let* ((_%klass168239%_ symbol-hash-table::t)
           (_%id168242%_ 'HashTable::ref)
           (_%proc168245%_ symbolic-table-ref)
           (_%rebind?168248%_ '#f)
           (_%id168253%_ _%id168242%_)
           (_%proc168266%_ _%proc168245%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168239%_
       _%id168253%_
       _%proc168266%_
       _%rebind?168248%_))
    (let* ((_%klass168202%_ symbol-hash-table::t)
           (_%id168205%_ 'HashTable::set!)
           (_%proc168208%_ symbolic-table-set!)
           (_%rebind?168211%_ '#f)
           (_%id168216%_ _%id168205%_)
           (_%proc168229%_ _%proc168208%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168202%_
       _%id168216%_
       _%proc168229%_
       _%rebind?168211%_))
    (let* ((_%klass168165%_ symbol-hash-table::t)
           (_%id168168%_ 'HashTable::update!)
           (_%proc168171%_ symbolic-table-update!)
           (_%rebind?168174%_ '#f)
           (_%id168179%_ _%id168168%_)
           (_%proc168192%_ _%proc168171%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168165%_
       _%id168179%_
       _%proc168192%_
       _%rebind?168174%_))
    (let* ((_%klass168128%_ symbol-hash-table::t)
           (_%id168131%_ 'HashTable::delete!)
           (_%proc168134%_ symbolic-table-delete!)
           (_%rebind?168137%_ '#f)
           (_%id168142%_ _%id168131%_)
           (_%proc168155%_ _%proc168134%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168128%_
       _%id168142%_
       _%proc168155%_
       _%rebind?168137%_))
    (let* ((_%klass168091%_ string-hash-table::t)
           (_%id168094%_ 'HashTable::ref)
           (_%proc168097%_ string-table-ref)
           (_%rebind?168100%_ '#f)
           (_%id168105%_ _%id168094%_)
           (_%proc168118%_ _%proc168097%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168091%_
       _%id168105%_
       _%proc168118%_
       _%rebind?168100%_))
    (let* ((_%klass168054%_ string-hash-table::t)
           (_%id168057%_ 'HashTable::set!)
           (_%proc168060%_ string-table-set!)
           (_%rebind?168063%_ '#f)
           (_%id168068%_ _%id168057%_)
           (_%proc168081%_ _%proc168060%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168054%_
       _%id168068%_
       _%proc168081%_
       _%rebind?168063%_))
    (let* ((_%klass168017%_ string-hash-table::t)
           (_%id168020%_ 'HashTable::update!)
           (_%proc168023%_ string-table-update!)
           (_%rebind?168026%_ '#f)
           (_%id168031%_ _%id168020%_)
           (_%proc168044%_ _%proc168023%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass168017%_
       _%id168031%_
       _%proc168044%_
       _%rebind?168026%_))
    (let* ((_%klass167980%_ string-hash-table::t)
           (_%id167983%_ 'HashTable::delete!)
           (_%proc167986%_ string-table-delete!)
           (_%rebind?167989%_ '#f)
           (_%id167994%_ _%id167983%_)
           (_%proc168007%_ _%proc167986%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167980%_
       _%id167994%_
       _%proc168007%_
       _%rebind?167989%_))
    (let* ((_%klass167943%_ immediate-hash-table::t)
           (_%id167946%_ 'HashTable::ref)
           (_%proc167949%_ immediate-table-ref)
           (_%rebind?167952%_ '#f)
           (_%id167957%_ _%id167946%_)
           (_%proc167970%_ _%proc167949%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167943%_
       _%id167957%_
       _%proc167970%_
       _%rebind?167952%_))
    (let* ((_%klass167906%_ immediate-hash-table::t)
           (_%id167909%_ 'HashTable::set!)
           (_%proc167912%_ immediate-table-set!)
           (_%rebind?167915%_ '#f)
           (_%id167920%_ _%id167909%_)
           (_%proc167933%_ _%proc167912%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167906%_
       _%id167920%_
       _%proc167933%_
       _%rebind?167915%_))
    (let* ((_%klass167869%_ immediate-hash-table::t)
           (_%id167872%_ 'HashTable::update!)
           (_%proc167875%_ immediate-table-update!)
           (_%rebind?167878%_ '#f)
           (_%id167883%_ _%id167872%_)
           (_%proc167896%_ _%proc167875%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167869%_
       _%id167883%_
       _%proc167896%_
       _%rebind?167878%_))
    (let* ((_%klass167832%_ immediate-hash-table::t)
           (_%id167835%_ 'HashTable::delete!)
           (_%proc167838%_ immediate-table-delete!)
           (_%rebind?167841%_ '#f)
           (_%id167846%_ _%id167835%_)
           (_%proc167859%_ _%proc167838%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167832%_
       _%id167846%_
       _%proc167859%_
       _%rebind?167841%_))
    (let* ((_%klass167795%_ gc-hash-table::t)
           (_%id167798%_ 'HashTable::ref)
           (_%proc167801%_ gc-table-ref)
           (_%rebind?167804%_ '#f)
           (_%id167809%_ _%id167798%_)
           (_%proc167822%_ _%proc167801%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167795%_
       _%id167809%_
       _%proc167822%_
       _%rebind?167804%_))
    (let* ((_%klass167758%_ gc-hash-table::t)
           (_%id167761%_ 'HashTable::set!)
           (_%proc167764%_ gc-table-set!)
           (_%rebind?167767%_ '#f)
           (_%id167772%_ _%id167761%_)
           (_%proc167785%_ _%proc167764%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167758%_
       _%id167772%_
       _%proc167785%_
       _%rebind?167767%_))
    (let* ((_%klass167721%_ gc-hash-table::t)
           (_%id167724%_ 'HashTable::update!)
           (_%proc167727%_ gc-table-update!)
           (_%rebind?167730%_ '#f)
           (_%id167735%_ _%id167724%_)
           (_%proc167748%_ _%proc167727%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167721%_
       _%id167735%_
       _%proc167748%_
       _%rebind?167730%_))
    (let* ((_%klass167684%_ gc-hash-table::t)
           (_%id167687%_ 'HashTable::delete!)
           (_%proc167690%_ gc-table-delete!)
           (_%rebind?167693%_ '#f)
           (_%id167698%_ _%id167687%_)
           (_%proc167711%_ _%proc167690%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167684%_
       _%id167698%_
       _%proc167711%_
       _%rebind?167693%_))
    (let* ((_%klass167647%_ gc-hash-table::t)
           (_%id167650%_ 'HashTable::for-each)
           (_%proc167653%_ gc-table-for-each)
           (_%rebind?167656%_ '#f)
           (_%id167661%_ _%id167650%_)
           (_%proc167674%_ _%proc167653%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167647%_
       _%id167661%_
       _%proc167674%_
       _%rebind?167656%_))
    (let* ((_%klass167610%_ gc-hash-table::t)
           (_%id167613%_ 'HashTable::length)
           (_%proc167616%_ gc-table-length)
           (_%rebind?167619%_ '#f)
           (_%id167624%_ _%id167613%_)
           (_%proc167637%_ _%proc167616%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167610%_
       _%id167624%_
       _%proc167637%_
       _%rebind?167619%_))
    (let* ((_%klass167558%_ gc-hash-table::t)
           (_%id167561%_ 'HashTable::copy)
           (_%proc167581%_
            (let* ((_%proc167564%_ gc-table-copy)
                   (_%proc167569%_ _%proc167564%_))
              (__wrap-hash _%proc167569%_)))
           (_%rebind?167584%_ '#f)
           (_%id167589%_ _%id167561%_))
      (if (procedure? _%proc167581%_)
          (let ((_%proc167600%_ _%proc167581%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167558%_
             _%id167589%_
             _%proc167600%_
             _%rebind?167584%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167581%_)
            '#!void)))
    (let* ((_%klass167506%_ gc-hash-table::t)
           (_%id167509%_ 'HashTable::new)
           (_%proc167529%_
            (let* ((_%proc167512%_ gc-table-new)
                   (_%proc167517%_ _%proc167512%_))
              (__wrap-hash-new _%proc167517%_)))
           (_%rebind?167532%_ '#f)
           (_%id167537%_ _%id167509%_))
      (if (procedure? _%proc167529%_)
          (let ((_%proc167548%_ _%proc167529%_))
            (declare (not safe))
            (__bind-method!__%
             _%klass167506%_
             _%id167537%_
             _%proc167548%_
             _%rebind?167532%_))
          (begin
            (raise-contract-violation-error
             '"contract violation"
             'context:
             'gerbil/runtime/hash
             'contract:
             'procedure?
             'value:
             _%proc167529%_)
            '#!void)))
    (let* ((_%klass167469%_ gc-hash-table::t)
           (_%id167472%_ 'HashTable::clear!)
           (_%proc167475%_ gc-table-clear!)
           (_%rebind?167478%_ '#f)
           (_%id167483%_ _%id167472%_)
           (_%proc167496%_ _%proc167475%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass167469%_
       _%id167483%_
       _%proc167496%_
       _%rebind?167478%_))
    (define hash-table? HashTable?)
    (define is-hash-table? is-HashTable?)
    (define _%locked-hash-table::HashTable::ref158303%_
      (lambda (_%self167390%_ _%key167392%_ _%default167393%_)
        (let* ((_%self167396%_ _%self167390%_)
               (_%key167405%_ _%key167392%_)
               (_%default167413%_ _%default167393%_))
          (let ((_%h167422%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167396%_ '1 '#f '#f)))
                (_%l167424%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167396%_ '2 '#f '#f))))
            (let ((__tmp172450
                   (lambda ()
                     (let ((_%self156703167428%_ _%l167424%_))
                       (declare (not safe))
                       (let ((_%object167431167436%_
                              (##unchecked-structure-ref
                               _%self156703167428%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method167432167437%_
                              (##unchecked-structure-ref
                               _%self156703167428%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method167432167437%_ _%object167431167436%_)))))
                  (__tmp172449
                   (lambda ()
                     (let* ((_%self155971167440%_ _%h167422%_)
                            (_%key167443%_ _%key167405%_)
                            (_%default167446%_ _%default167413%_))
                       (declare (not safe))
                       (let ((_%object167449167454%_
                              (##unchecked-structure-ref
                               _%self155971167440%_
                               '1
                               '#f
                               'ref))
                             (_%method167450167455%_
                              (##unchecked-structure-ref
                               _%self155971167440%_
                               '8
                               '#f
                               'ref)))
                         (_%method167450167455%_
                          _%object167449167454%_
                          _%key167443%_
                          _%default167446%_)))))
                  (__tmp172448
                   (lambda ()
                     (let ((_%self156947167458%_ _%l167424%_))
                       (declare (not safe))
                       (let ((_%object167461167466%_
                              (##unchecked-structure-ref
                               _%self156947167458%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method167462167467%_
                              (##unchecked-structure-ref
                               _%self156947167458%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method167462167467%_ _%object167461167466%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172450 __tmp172449 __tmp172448))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::ref
       _%locked-hash-table::HashTable::ref158303%_
       '#f))
    (define _%locked-hash-table::HashTable::set!158305%_
      (lambda (_%self167188%_ _%key167190%_ _%value167191%_)
        (let* ((_%self167194%_ _%self167188%_)
               (_%key167203%_ _%key167190%_)
               (_%value167211%_ _%value167191%_))
          (let ((_%h167220%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167194%_ '1 '#f '#f)))
                (_%l167222%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self167194%_ '2 '#f '#f))))
            (let ((__tmp172453
                   (lambda ()
                     (let ((_%self157191167226%_ _%l167222%_))
                       (declare (not safe))
                       (let ((_%object167229167234%_
                              (##unchecked-structure-ref
                               _%self157191167226%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method167230167235%_
                              (##unchecked-structure-ref
                               _%self157191167226%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method167230167235%_ _%object167229167234%_)))))
                  (__tmp172452
                   (lambda ()
                     (let* ((_%self156215167238%_ _%h167220%_)
                            (_%key167241%_ _%key167203%_)
                            (_%value167244%_ _%value167211%_))
                       (declare (not safe))
                       (let ((_%object167247167252%_
                              (##unchecked-structure-ref
                               _%self156215167238%_
                               '1
                               '#f
                               'set!))
                             (_%method167248167253%_
                              (##unchecked-structure-ref
                               _%self156215167238%_
                               '9
                               '#f
                               'set!)))
                         (_%method167248167253%_
                          _%object167247167252%_
                          _%key167241%_
                          _%value167244%_)))))
                  (__tmp172451
                   (lambda ()
                     (let ((_%self157435167256%_ _%l167222%_))
                       (declare (not safe))
                       (let ((_%object167259167264%_
                              (##unchecked-structure-ref
                               _%self157435167256%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method167260167265%_
                              (##unchecked-structure-ref
                               _%self157435167256%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method167260167265%_ _%object167259167264%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172453 __tmp172452 __tmp172451))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::set!
       _%locked-hash-table::HashTable::set!158305%_
       '#f))
    (define _%locked-hash-table::HashTable::update!158307%_
      (lambda (_%self166974%_ _%key166976%_ _%update166977%_ _%default166978%_)
        (let* ((_%self166981%_ _%self166974%_)
               (_%key166990%_ _%key166976%_)
               (_%update166998%_ _%update166977%_)
               (_%default167006%_ _%default166978%_))
          (let ((_%h167015%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166981%_ '1 '#f '#f)))
                (_%l167017%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166981%_ '2 '#f '#f))))
            (let ((__tmp172456
                   (lambda ()
                     (let ((_%self157191167021%_ _%l167017%_))
                       (declare (not safe))
                       (let ((_%object167024167029%_
                              (##unchecked-structure-ref
                               _%self157191167021%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method167025167030%_
                              (##unchecked-structure-ref
                               _%self157191167021%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method167025167030%_ _%object167024167029%_)))))
                  (__tmp172455
                   (lambda ()
                     (let* ((_%self156459167033%_ _%h167015%_)
                            (_%key167036%_ _%key166990%_)
                            (_%proc167039%_ _%update166998%_)
                            (_%default167042%_ _%default167006%_))
                       (declare (not safe))
                       (let ((_%object167045167050%_
                              (##unchecked-structure-ref
                               _%self156459167033%_
                               '1
                               '#f
                               'update!))
                             (_%method167046167051%_
                              (##unchecked-structure-ref
                               _%self156459167033%_
                               '10
                               '#f
                               'update!)))
                         (_%method167046167051%_
                          _%object167045167050%_
                          _%key167036%_
                          _%proc167039%_
                          _%default167042%_)))))
                  (__tmp172454
                   (lambda ()
                     (let ((_%self157435167054%_ _%l167017%_))
                       (declare (not safe))
                       (let ((_%object167057167062%_
                              (##unchecked-structure-ref
                               _%self157435167054%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method167058167063%_
                              (##unchecked-structure-ref
                               _%self157435167054%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method167058167063%_ _%object167057167062%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172456 __tmp172455 __tmp172454))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::update!
       _%locked-hash-table::HashTable::update!158307%_
       '#f))
    (define _%locked-hash-table::HashTable::delete!158309%_
      (lambda (_%self166784%_ _%key166786%_)
        (let* ((_%self166789%_ _%self166784%_) (_%key166798%_ _%key166786%_))
          (let ((_%h166807%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166789%_ '1 '#f '#f)))
                (_%l166809%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166789%_ '2 '#f '#f))))
            (let ((__tmp172459
                   (lambda ()
                     (let ((_%self157191166813%_ _%l166809%_))
                       (declare (not safe))
                       (let ((_%object166816166821%_
                              (##unchecked-structure-ref
                               _%self157191166813%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method166817166822%_
                              (##unchecked-structure-ref
                               _%self157191166813%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method166817166822%_ _%object166816166821%_)))))
                  (__tmp172458
                   (lambda ()
                     (let* ((_%self154995166825%_ _%h166807%_)
                            (_%key166828%_ _%key166798%_))
                       (declare (not safe))
                       (let ((_%object166831166836%_
                              (##unchecked-structure-ref
                               _%self154995166825%_
                               '1
                               '#f
                               'delete!))
                             (_%method166832166837%_
                              (##unchecked-structure-ref
                               _%self154995166825%_
                               '4
                               '#f
                               'delete!)))
                         (_%method166832166837%_
                          _%object166831166836%_
                          _%key166828%_)))))
                  (__tmp172457
                   (lambda ()
                     (let ((_%self157435166840%_ _%l166809%_))
                       (declare (not safe))
                       (let ((_%object166843166848%_
                              (##unchecked-structure-ref
                               _%self157435166840%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method166844166849%_
                              (##unchecked-structure-ref
                               _%self157435166840%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method166844166849%_ _%object166843166848%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172459 __tmp172458 __tmp172457))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::delete!
       _%locked-hash-table::HashTable::delete!158309%_
       '#f))
    (define _%locked-hash-table::HashTable::for-each158311%_
      (lambda (_%self166594%_ _%proc166596%_)
        (let* ((_%self166599%_ _%self166594%_) (_%proc166608%_ _%proc166596%_))
          (let ((_%h166617%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166599%_ '1 '#f '#f)))
                (_%l166619%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166599%_ '2 '#f '#f))))
            (let ((__tmp172462
                   (lambda ()
                     (let ((_%self156703166623%_ _%l166619%_))
                       (declare (not safe))
                       (let ((_%object166626166631%_
                              (##unchecked-structure-ref
                               _%self156703166623%_
                               '1
                               '#f
                               'read-lock!))
                             (_%method166627166632%_
                              (##unchecked-structure-ref
                               _%self156703166623%_
                               '2
                               '#f
                               'read-lock!)))
                         (_%method166627166632%_ _%object166626166631%_)))))
                  (__tmp172461
                   (lambda ()
                     (let* ((_%self155239166635%_ _%h166617%_)
                            (_%proc166638%_ _%proc166608%_))
                       (declare (not safe))
                       (let ((_%object166641166646%_
                              (##unchecked-structure-ref
                               _%self155239166635%_
                               '1
                               '#f
                               'for-each))
                             (_%method166642166647%_
                              (##unchecked-structure-ref
                               _%self155239166635%_
                               '5
                               '#f
                               'for-each)))
                         (_%method166642166647%_
                          _%object166641166646%_
                          _%proc166638%_)))))
                  (__tmp172460
                   (lambda ()
                     (let ((_%self156947166650%_ _%l166619%_))
                       (declare (not safe))
                       (let ((_%object166653166658%_
                              (##unchecked-structure-ref
                               _%self156947166650%_
                               '1
                               '#f
                               'read-unlock!))
                             (_%method166654166659%_
                              (##unchecked-structure-ref
                               _%self156947166650%_
                               '3
                               '#f
                               'read-unlock!)))
                         (_%method166654166659%_ _%object166653166658%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172462 __tmp172461 __tmp172460))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::for-each
       _%locked-hash-table::HashTable::for-each158311%_
       '#f))
    (define _%locked-hash-table::HashTable::length158313%_
      (lambda (_%self166409%_)
        (let ((_%self166413%_ _%self166409%_))
          (let ((_%h166423%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166413%_ '1 '#f '#f)))
                (_%l166425%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166413%_ '2 '#f '#f))))
            (let* ((_%$%g166427166429%_
                    (let ((__tmp172465
                           (lambda ()
                             (let ((_%self156703166436%_ _%l166425%_))
                               (declare (not safe))
                               (let ((_%object166439166444%_
                                      (##unchecked-structure-ref
                                       _%self156703166436%_
                                       '1
                                       '#f
                                       'read-lock!))
                                     (_%method166440166445%_
                                      (##unchecked-structure-ref
                                       _%self156703166436%_
                                       '2
                                       '#f
                                       'read-lock!)))
                                 (_%method166440166445%_
                                  _%object166439166444%_)))))
                          (__tmp172464
                           (lambda ()
                             (let ((_%self155483166448%_ _%h166423%_))
                               (declare (not safe))
                               (let ((_%object166451166456%_
                                      (##unchecked-structure-ref
                                       _%self155483166448%_
                                       '1
                                       '#f
                                       'length))
                                     (_%method166452166457%_
                                      (##unchecked-structure-ref
                                       _%self155483166448%_
                                       '6
                                       '#f
                                       'length)))
                                 (_%method166452166457%_
                                  _%object166451166456%_)))))
                          (__tmp172463
                           (lambda ()
                             (let ((_%self156947166460%_ _%l166425%_))
                               (declare (not safe))
                               (let ((_%object166463166468%_
                                      (##unchecked-structure-ref
                                       _%self156947166460%_
                                       '1
                                       '#f
                                       'read-unlock!))
                                     (_%method166464166469%_
                                      (##unchecked-structure-ref
                                       _%self156947166460%_
                                       '3
                                       '#f
                                       'read-unlock!)))
                                 (_%method166464166469%_
                                  _%object166463166468%_))))))
                      (declare (not safe))
                      (##dynamic-wind __tmp172465 __tmp172464 __tmp172463)))
                   (_%val166432%_ _%$%g166427166429%_))
              (if (fixnum? _%val166432%_)
                  _%val166432%_
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/hash
                     'contract:
                     '(fixnum? val)
                     'value:
                     _%val166432%_)
                    '#!void)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::length
       _%locked-hash-table::HashTable::length158313%_
       '#f))
    (define _%locked-hash-table::HashTable::copy158315%_
      (lambda (_%self166231%_)
        (let ((_%self166235%_ _%self166231%_))
          (let ((_%h166245%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166235%_ '1 '#f '#f)))
                (_%l166247%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self166235%_ '2 '#f '#f))))
            (let ((__tmp172466
                   (let ((__tmp172469
                          (lambda ()
                            (let ((_%self156703166251%_ _%l166247%_))
                              (declare (not safe))
                              (let ((_%object166254166259%_
                                     (##unchecked-structure-ref
                                      _%self156703166251%_
                                      '1
                                      '#f
                                      'read-lock!))
                                    (_%method166255166260%_
                                     (##unchecked-structure-ref
                                      _%self156703166251%_
                                      '2
                                      '#f
                                      'read-lock!)))
                                (_%method166255166260%_
                                 _%object166254166259%_)))))
                         (__tmp172468
                          (lambda ()
                            (let ((_%self154751166263%_ _%h166245%_))
                              (declare (not safe))
                              (let ((_%object166266166271%_
                                     (##unchecked-structure-ref
                                      _%self154751166263%_
                                      '1
                                      '#f
                                      'copy))
                                    (_%method166267166272%_
                                     (##unchecked-structure-ref
                                      _%self154751166263%_
                                      '3
                                      '#f
                                      'copy)))
                                (_%method166267166272%_
                                 _%object166266166271%_)))))
                         (__tmp172467
                          (lambda ()
                            (let ((_%self156947166275%_ _%l166247%_))
                              (declare (not safe))
                              (let ((_%object166278166283%_
                                     (##unchecked-structure-ref
                                      _%self156947166275%_
                                      '1
                                      '#f
                                      'read-unlock!))
                                    (_%method166279166284%_
                                     (##unchecked-structure-ref
                                      _%self156947166275%_
                                      '3
                                      '#f
                                      'read-unlock!)))
                                (_%method166279166284%_
                                 _%object166278166283%_))))))
                     (declare (not safe))
                     (##dynamic-wind __tmp172469 __tmp172468 __tmp172467))))
              (declare (not safe))
              (cast HashTable::interface __tmp172466))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::copy
       _%locked-hash-table::HashTable::copy158315%_
       '#f))
    (define _%locked-hash-table::HashTable::new158317%_
      (lambda (_%self166033%_ _%size-hint166035%_)
        (let ((_%self166038%_ _%self166033%_))
          (if (or (not _%size-hint166035%_) (fixnum? _%size-hint166035%_))
              (let ((_%size-hint166054%_ _%size-hint166035%_))
                (let ((_%h166064%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self166038%_
                          '1
                          '#f
                          '#f)))
                      (_%l166066%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self166038%_
                          '2
                          '#f
                          '#f))))
                  (let ((__tmp172470
                         (let ((__tmp172473
                                (lambda ()
                                  (let ((_%self156703166070%_ _%l166066%_))
                                    (declare (not safe))
                                    (let ((_%object166073166078%_
                                           (##unchecked-structure-ref
                                            _%self156703166070%_
                                            '1
                                            '#f
                                            'read-lock!))
                                          (_%method166074166079%_
                                           (##unchecked-structure-ref
                                            _%self156703166070%_
                                            '2
                                            '#f
                                            'read-lock!)))
                                      (_%method166074166079%_
                                       _%object166073166078%_)))))
                               (__tmp172472
                                (lambda ()
                                  (let* ((_%self155727166082%_ _%h166064%_)
                                         (_%size-hint166085%_
                                          _%size-hint166054%_))
                                    (declare (not safe))
                                    (let ((_%object166088166093%_
                                           (##unchecked-structure-ref
                                            _%self155727166082%_
                                            '1
                                            '#f
                                            'new))
                                          (_%method166089166094%_
                                           (##unchecked-structure-ref
                                            _%self155727166082%_
                                            '7
                                            '#f
                                            'new)))
                                      (_%method166089166094%_
                                       _%object166088166093%_
                                       _%size-hint166085%_)))))
                               (__tmp172471
                                (lambda ()
                                  (let ((_%self156947166097%_ _%l166066%_))
                                    (declare (not safe))
                                    (let ((_%object166100166105%_
                                           (##unchecked-structure-ref
                                            _%self156947166097%_
                                            '1
                                            '#f
                                            'read-unlock!))
                                          (_%method166101166106%_
                                           (##unchecked-structure-ref
                                            _%self156947166097%_
                                            '3
                                            '#f
                                            'read-unlock!)))
                                      (_%method166101166106%_
                                       _%object166100166105%_))))))
                           (declare (not safe))
                           (##dynamic-wind
                            __tmp172473
                            __tmp172472
                            __tmp172471))))
                    (declare (not safe))
                    (cast HashTable::interface __tmp172470))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@317.29-317.38"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint166035%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::new
       _%locked-hash-table::HashTable::new158317%_
       '#f))
    (define _%locked-hash-table::HashTable::clear!158319%_
      (lambda (_%self165855%_)
        (let ((_%self165859%_ _%self165855%_))
          (let ((_%h165869%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165859%_ '1 '#f '#f)))
                (_%l165871%_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%self165859%_ '2 '#f '#f))))
            (let ((__tmp172476
                   (lambda ()
                     (let ((_%self157191165875%_ _%l165871%_))
                       (declare (not safe))
                       (let ((_%object165878165883%_
                              (##unchecked-structure-ref
                               _%self157191165875%_
                               '1
                               '#f
                               'write-lock!))
                             (_%method165879165884%_
                              (##unchecked-structure-ref
                               _%self157191165875%_
                               '4
                               '#f
                               'write-lock!)))
                         (_%method165879165884%_ _%object165878165883%_)))))
                  (__tmp172475
                   (lambda ()
                     (let ((_%self154506165887%_ _%h165869%_))
                       (declare (not safe))
                       (let ((_%object165890165895%_
                              (##unchecked-structure-ref
                               _%self154506165887%_
                               '1
                               '#f
                               'clear!))
                             (_%method165891165896%_
                              (##unchecked-structure-ref
                               _%self154506165887%_
                               '2
                               '#f
                               'clear!)))
                         (_%method165891165896%_ _%object165890165895%_)))))
                  (__tmp172474
                   (lambda ()
                     (let ((_%self157435165899%_ _%l165871%_))
                       (declare (not safe))
                       (let ((_%object165902165907%_
                              (##unchecked-structure-ref
                               _%self157435165899%_
                               '1
                               '#f
                               'write-unlock!))
                             (_%method165903165908%_
                              (##unchecked-structure-ref
                               _%self157435165899%_
                               '5
                               '#f
                               'write-unlock!)))
                         (_%method165903165908%_ _%object165902165907%_))))))
              (declare (not safe))
              (##dynamic-wind __tmp172476 __tmp172475 __tmp172474))
            '#!void))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       locked-hash-table::t
       'HashTable::clear!
       _%locked-hash-table::HashTable::clear!158319%_
       '#f))
    (let* ((_%klass165695%_ (macro-type-mutex))
           (_%id165698%_ 'Locker::read-lock!)
           (_%proc165701%_ mutex-lock!)
           (_%rebind?165704%_ '#f)
           (_%id165709%_ _%id165698%_)
           (_%proc165722%_ _%proc165701%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165695%_
       _%id165709%_
       _%proc165722%_
       _%rebind?165704%_))
    (let* ((_%klass165658%_ (macro-type-mutex))
           (_%id165661%_ 'Locker::read-unlock!)
           (_%proc165664%_ mutex-unlock!)
           (_%rebind?165667%_ '#f)
           (_%id165672%_ _%id165661%_)
           (_%proc165685%_ _%proc165664%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165658%_
       _%id165672%_
       _%proc165685%_
       _%rebind?165667%_))
    (let* ((_%klass165621%_ (macro-type-mutex))
           (_%id165624%_ 'Locker::write-lock!)
           (_%proc165627%_ mutex-lock!)
           (_%rebind?165630%_ '#f)
           (_%id165635%_ _%id165624%_)
           (_%proc165648%_ _%proc165627%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165621%_
       _%id165635%_
       _%proc165648%_
       _%rebind?165630%_))
    (let* ((_%klass165584%_ (macro-type-mutex))
           (_%id165587%_ 'Locker::write-unlock!)
           (_%proc165590%_ mutex-unlock!)
           (_%rebind?165593%_ '#f)
           (_%id165598%_ _%id165587%_)
           (_%proc165611%_ _%proc165590%_))
      (declare (not safe))
      (__bind-method!__%
       _%klass165584%_
       _%id165598%_
       _%proc165611%_
       _%rebind?165593%_))
    (define _%checked-hash-table::HashTable::ref158530%_
      (lambda (_%self165525%_ _%key165526%_ _%default165527%_)
        (let* ((_%self165530%_ _%self165525%_)
               (_%key165539%_ _%key165526%_)
               (_%default165547%_ _%default165527%_))
          (declare (not safe))
          (let ((_%h165558%_
                 (##unchecked-structure-ref _%self165530%_ '1 '#f '#f))
                (_%key?165560%_
                 (##unchecked-structure-ref _%self165530%_ '2 '#f '#f)))
            (if (_%key?165560%_ _%key165539%_)
                (let* ((_%self155971165567%_ _%h165558%_)
                       (_%key165570%_ _%key165539%_)
                       (_%default165573%_ _%default165547%_))
                  (declare (not safe))
                  (let ((_%object165576165581%_
                         (##unchecked-structure-ref
                          _%self155971165567%_
                          '1
                          '#f
                          'ref))
                        (_%method165577165582%_
                         (##unchecked-structure-ref
                          _%self155971165567%_
                          '8
                          '#f
                          'ref)))
                    (_%method165577165582%_
                     _%object165576165581%_
                     _%key165570%_
                     _%default165573%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-ref
                   'value:
                   (cons _%key165539%_ (cons _%default165547%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::ref
       _%checked-hash-table::HashTable::ref158530%_
       '#f))
    (define _%checked-hash-table::HashTable::set!158532%_
      (lambda (_%self165343%_ _%key165344%_ _%value165345%_)
        (let* ((_%self165348%_ _%self165343%_)
               (_%key165357%_ _%key165344%_)
               (_%value165365%_ _%value165345%_))
          (declare (not safe))
          (let ((_%h165376%_
                 (##unchecked-structure-ref _%self165348%_ '1 '#f '#f))
                (_%key?165378%_
                 (##unchecked-structure-ref _%self165348%_ '2 '#f '#f)))
            (if (_%key?165378%_ _%key165357%_)
                (let* ((_%self156215165385%_ _%h165376%_)
                       (_%key165388%_ _%key165357%_)
                       (_%value165391%_ _%value165365%_))
                  (declare (not safe))
                  (let ((_%object165394165399%_
                         (##unchecked-structure-ref
                          _%self156215165385%_
                          '1
                          '#f
                          'set!))
                        (_%method165395165400%_
                         (##unchecked-structure-ref
                          _%self156215165385%_
                          '9
                          '#f
                          'set!)))
                    (_%method165395165400%_
                     _%object165394165399%_
                     _%key165388%_
                     _%value165391%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-set!
                   'value:
                   (cons _%key165357%_ (cons _%value165365%_ '())))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::set!
       _%checked-hash-table::HashTable::set!158532%_
       '#f))
    (define _%checked-hash-table::HashTable::update!158534%_
      (lambda (_%self165148%_ _%key165149%_ _%update165150%_ _%default165151%_)
        (let* ((_%self165154%_ _%self165148%_)
               (_%key165163%_ _%key165149%_)
               (_%update165171%_ _%update165150%_)
               (_%default165179%_ _%default165151%_))
          (declare (not safe))
          (let ((_%h165190%_
                 (##unchecked-structure-ref _%self165154%_ '1 '#f '#f))
                (_%key?165192%_
                 (##unchecked-structure-ref _%self165154%_ '2 '#f '#f)))
            (if (_%key?165192%_ _%key165163%_)
                (let* ((_%self156459165200%_ _%h165190%_)
                       (_%key165203%_ _%key165163%_)
                       (_%proc165206%_ _%update165171%_)
                       (_%default165209%_ _%default165179%_))
                  (declare (not safe))
                  (let ((_%object165212165217%_
                         (##unchecked-structure-ref
                          _%self156459165200%_
                          '1
                          '#f
                          'update!))
                        (_%method165213165218%_
                         (##unchecked-structure-ref
                          _%self156459165200%_
                          '10
                          '#f
                          'update!)))
                    (_%method165213165218%_
                     _%object165212165217%_
                     _%key165203%_
                     _%proc165206%_
                     _%default165209%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-update!
                   'value:
                   (cons _%key165163%_
                         (cons _%update165171%_ (cons _%default165179%_ '()))))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::update!
       _%checked-hash-table::HashTable::update!158534%_
       '#f))
    (define _%checked-hash-table::HashTable::delete!158536%_
      (lambda (_%self164979%_ _%key164980%_)
        (let* ((_%self164983%_ _%self164979%_) (_%key164992%_ _%key164980%_))
          (declare (not safe))
          (let ((_%h165003%_
                 (##unchecked-structure-ref _%self164983%_ '1 '#f '#f))
                (_%key?165005%_
                 (##unchecked-structure-ref _%self164983%_ '2 '#f '#f)))
            (if (_%key?165005%_ _%key164992%_)
                (let* ((_%self154995165011%_ _%h165003%_)
                       (_%key165014%_ _%key164992%_))
                  (declare (not safe))
                  (let ((_%object165017165022%_
                         (##unchecked-structure-ref
                          _%self154995165011%_
                          '1
                          '#f
                          'delete!))
                        (_%method165018165023%_
                         (##unchecked-structure-ref
                          _%self154995165011%_
                          '4
                          '#f
                          'delete!)))
                    (_%method165018165023%_
                     _%object165017165022%_
                     _%key165014%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-delete!
                   'value:
                   (cons _%key164992%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::delete!
       _%checked-hash-table::HashTable::delete!158536%_
       '#f))
    (define _%checked-hash-table::HashTable::for-each158538%_
      (lambda (_%self164810%_ _%proc164811%_)
        (let* ((_%self164814%_ _%self164810%_) (_%proc164823%_ _%proc164811%_))
          (declare (not safe))
          (let ((_%h164834%_
                 (##unchecked-structure-ref _%self164814%_ '1 '#f '#f))
                (_%key?164836%_
                 (##unchecked-structure-ref _%self164814%_ '2 '#f '#f)))
            (if '#t
                (let* ((_%self155239164842%_ _%h164834%_)
                       (_%proc164845%_ _%proc164823%_))
                  (declare (not safe))
                  (let ((_%object164848164853%_
                         (##unchecked-structure-ref
                          _%self155239164842%_
                          '1
                          '#f
                          'for-each))
                        (_%method164849164854%_
                         (##unchecked-structure-ref
                          _%self155239164842%_
                          '5
                          '#f
                          'for-each)))
                    (_%method164849164854%_
                     _%object164848164853%_
                     _%proc164845%_)))
                (begin
                  (raise-contract-violation-error
                   '"invalid key"
                   'context:
                   '&HashTable-for-each
                   'value:
                   (cons _%proc164823%_ '()))
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::for-each
       _%checked-hash-table::HashTable::for-each158538%_
       '#f))
    (define _%checked-hash-table::HashTable::length158540%_
      (lambda (_%self164656%_)
        (let ((_%self164659%_ _%self164656%_))
          (declare (not safe))
          (let ((_%h164671%_
                 (##unchecked-structure-ref _%self164659%_ '1 '#f '#f))
                (_%key?164673%_
                 (##unchecked-structure-ref _%self164659%_ '2 '#f '#f)))
            (let ((_%self155483164676%_ _%h164671%_))
              (declare (not safe))
              (let ((_%object164679164684%_
                     (##unchecked-structure-ref
                      _%self155483164676%_
                      '1
                      '#f
                      'length))
                    (_%method164680164685%_
                     (##unchecked-structure-ref
                      _%self155483164676%_
                      '6
                      '#f
                      'length)))
                (_%method164680164685%_ _%object164679164684%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::length
       _%checked-hash-table::HashTable::length158540%_
       '#f))
    (define _%checked-hash-table::HashTable::copy158542%_
      (lambda (_%self164502%_)
        (let ((_%self164505%_ _%self164502%_))
          (declare (not safe))
          (let ((_%h164517%_
                 (##unchecked-structure-ref _%self164505%_ '1 '#f '#f))
                (_%key?164519%_
                 (##unchecked-structure-ref _%self164505%_ '2 '#f '#f)))
            (let ((_%self154751164522%_ _%h164517%_))
              (declare (not safe))
              (let ((_%object164525164530%_
                     (##unchecked-structure-ref
                      _%self154751164522%_
                      '1
                      '#f
                      'copy))
                    (_%method164526164531%_
                     (##unchecked-structure-ref
                      _%self154751164522%_
                      '3
                      '#f
                      'copy)))
                (_%method164526164531%_ _%object164525164530%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::copy
       _%checked-hash-table::HashTable::copy158542%_
       '#f))
    (define _%checked-hash-table::HashTable::new158544%_
      (lambda (_%self164328%_ _%size-hint164329%_)
        (let ((_%self164332%_ _%self164328%_))
          (if (or (not _%size-hint164329%_) (fixnum? _%size-hint164329%_))
              (let ((_%size-hint164348%_ _%size-hint164329%_))
                (declare (not safe))
                (let ((_%h164360%_
                       (##unchecked-structure-ref _%self164332%_ '1 '#f '#f))
                      (_%key?164362%_
                       (##unchecked-structure-ref _%self164332%_ '2 '#f '#f)))
                  (let* ((_%self155727164365%_ _%h164360%_)
                         (_%size-hint164368%_ _%size-hint164348%_))
                    (declare (not safe))
                    (let ((_%object164371164376%_
                           (##unchecked-structure-ref
                            _%self155727164365%_
                            '1
                            '#f
                            'new))
                          (_%method164372164377%_
                           (##unchecked-structure-ref
                            _%self155727164365%_
                            '7
                            '#f
                            'new)))
                      (_%method164372164377%_
                       _%object164371164376%_
                       _%size-hint164368%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/hash.ss\"@376.35-376.44"
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint164329%_)
                '#!void)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::new
       _%checked-hash-table::HashTable::new158544%_
       '#f))
    (define _%checked-hash-table::HashTable::clear!158546%_
      (lambda (_%self164174%_)
        (let ((_%self164177%_ _%self164174%_))
          (declare (not safe))
          (let ((_%h164189%_
                 (##unchecked-structure-ref _%self164177%_ '1 '#f '#f))
                (_%key?164191%_
                 (##unchecked-structure-ref _%self164177%_ '2 '#f '#f)))
            (let ((_%self154506164194%_ _%h164189%_))
              (declare (not safe))
              (let ((_%object164197164202%_
                     (##unchecked-structure-ref
                      _%self154506164194%_
                      '1
                      '#f
                      'clear!))
                    (_%method164198164203%_
                     (##unchecked-structure-ref
                      _%self154506164194%_
                      '2
                      '#f
                      'clear!)))
                (_%method164198164203%_ _%object164197164202%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       checked-hash-table::t
       'HashTable::clear!
       _%checked-hash-table::HashTable::clear!158546%_
       '#f))
    (define make-generic-hash-table__%
      (lambda (_%table164023%_
               _%count164024%_
               _%free164025%_
               _%hash164026%_
               _%test164027%_
               _%seed164028%_
               _%lock164029%_)
        (let ((__tmp172477
               (let () (declare (not safe)) (ensure-lock _%lock164029%_))))
          (declare (not safe))
          (##structure
           hash-table::t
           _%table164023%_
           _%count164024%_
           _%free164025%_
           _%hash164026%_
           _%test164027%_
           _%seed164028%_
           __tmp172477))))
    (define make-generic-hash-table__0
      (lambda (_%table164034%_
               _%count164035%_
               _%free164036%_
               _%hash164037%_
               _%test164038%_
               _%seed164039%_)
        (let ((_%lock164041%_ '#f))
          (make-generic-hash-table__%
           _%table164034%_
           _%count164035%_
           _%free164036%_
           _%hash164037%_
           _%test164038%_
           _%seed164039%_
           _%lock164041%_))))
    (define make-generic-hash-table
      (lambda _g172478_
        (let ((_g172479_ (let () (declare (not safe)) (##length _g172478_))))
          (cond ((let () (declare (not safe)) (##fx= _g172479_ 6))
                 (apply make-generic-hash-table__0 _g172478_))
                ((let () (declare (not safe)) (##fx= _g172479_ 7))
                 (apply make-generic-hash-table__% _g172478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-generic-hash-table
                  _g172478_))))))
    (define make-hash-table__%
      (lambda (_%@@keywords163450%_
               _%$%size-hint163440163451%_
               _%$%seed163441163452%_
               _%$%test163442163453%_
               _%$%hash163443163454%_
               _%$%lock163444163455%_
               _%$%check163445163456%_
               _%$%weak-keys163446163457%_
               _%$%weak-values163447163458%_)
        (let* ((_%size-hint163460%_
                (if (eq? _%$%size-hint163440163451%_ absent-value)
                    '#f
                    _%$%size-hint163440163451%_))
               (_%seed163462%_
                (if (eq? _%$%seed163441163452%_ absent-value)
                    '#f
                    _%$%seed163441163452%_))
               (_%test163464%_
                (if (eq? _%$%test163442163453%_ absent-value)
                    equal?
                    _%$%test163442163453%_))
               (_%hash163466%_
                (if (eq? _%$%hash163443163454%_ absent-value)
                    '#f
                    _%$%hash163443163454%_))
               (_%lock163468%_
                (if (eq? _%$%lock163444163455%_ absent-value)
                    '#f
                    _%$%lock163444163455%_))
               (_%check163470%_
                (if (eq? _%$%check163445163456%_ absent-value)
                    '#f
                    _%$%check163445163456%_))
               (_%weak-keys163472%_
                (if (eq? _%$%weak-keys163446163457%_ absent-value)
                    '#f
                    _%$%weak-keys163446163457%_))
               (_%weak-values163474%_
                (if (eq? _%$%weak-values163447163458%_ absent-value)
                    '#f
                    _%$%weak-values163447163458%_)))
          (letrec ((_%table-seed163477%_
                    (lambda ()
                      (if (fixnum? _%seed163462%_)
                          _%seed163462%_
                          (random-integer (macro-max-fixnum32)))))
                   (_%__wrap-lock163621%_
                    (lambda (_%ht163996%_)
                      (let ((_%ht163999%_ _%ht163996%_))
                        (if _%lock163468%_
                            (let ((__tmp172480
                                   (let ((__tmp172481
                                          (let ()
                                            (declare (not safe))
                                            (cast Locker::interface
                                                  _%lock163468%_))))
                                     (declare (not safe))
                                     (##structure
                                      locked-hash-table::t
                                      _%ht163999%_
                                      __tmp172481))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp172480))
                            _%ht163999%_))))
                   (_%wrap-lock163622%_
                    (lambda (_%ht163984%_)
                      (let ((_%ht163987%_ _%ht163984%_))
                        (_%__wrap-lock163621%_ _%ht163987%_))))
                   (_%__wrap-checked163744%_
                    (lambda (_%ht163971%_ _%implicit163972%_)
                      (let ((_%ht163975%_ _%ht163971%_))
                        (if _%check163470%_
                            (let ((__tmp172482
                                   (let ((__tmp172483
                                          (if (procedure? _%check163470%_)
                                              _%check163470%_
                                              _%implicit163972%_)))
                                     (declare (not safe))
                                     (##structure
                                      checked-hash-table::t
                                      _%ht163975%_
                                      __tmp172483))))
                              (declare (not safe))
                              (cast HashTable::interface __tmp172482))
                            _%ht163975%_))))
                   (_%wrap-checked163745%_
                    (lambda (_%ht163958%_ _%implicit163959%_)
                      (let ((_%ht163962%_ _%ht163958%_))
                        (_%__wrap-checked163744%_
                         _%ht163962%_
                         _%implicit163959%_))))
                   (_%make163746%_
                    (lambda (_%kons163909%_
                             _%key?163910%_
                             _%hash163911%_
                             _%test163912%_)
                      (let* ((_%size163915%_
                              (let ()
                                (declare (not safe))
                                (raw-table-size-hint->size
                                 _%size-hint163460%_)))
                             (_%table163917%_
                              (let ((__tmp172484 (macro-unused-obj)))
                                (declare (not safe))
                                (##make-vector _%size163915%_ __tmp172484)))
                             (_%ht163919%_
                              (let ((__tmp172485
                                     (_%kons163909%_
                                      _%table163917%_
                                      '0
                                      (let ()
                                        (declare (not safe))
                                        (##fxquotient _%size163915%_ '2))
                                      _%hash163911%_
                                      _%test163912%_
                                      (_%table-seed163477%_)
                                      '#f)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172485)))
                             (_%ht163941%_
                              (let* ((_%ht163922%_ _%ht163919%_)
                                     (_%ht163926%_ _%ht163922%_))
                                (_%__wrap-lock163621%_ _%ht163926%_)))
                             (_%implicit163944%_ _%key?163910%_)
                             (_%ht163948%_ _%ht163941%_))
                        (_%__wrap-checked163744%_
                         _%ht163948%_
                         _%implicit163944%_))))
                   (_%make-gc-hash-table163747%_
                    (lambda ()
                      (let* ((_%ht163874%_
                              (let ((__tmp172486
                                     (let ()
                                       (declare (not safe))
                                       (make-gc-table__1
                                        _%size-hint163460%_
                                        gc-hash-table::t))))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172486)))
                             (_%ht163892%_
                              (let* ((_%ht163876%_ _%ht163874%_)
                                     (_%ht163880%_ _%ht163876%_))
                                (_%__wrap-lock163621%_ _%ht163880%_)))
                             (_%implicit163895%_ true)
                             (_%ht163899%_ _%ht163892%_))
                        (_%__wrap-checked163744%_
                         _%ht163899%_
                         _%implicit163895%_))))
                   (_%make-gambit-table163748%_
                    (lambda ()
                      (let* ((_%size163817%_
                              (let ((_%$e163814%_ _%size-hint163460%_))
                                (if _%$e163814%_
                                    _%$e163814%_
                                    (macro-absent-obj))))
                             (_%test163822%_
                              (let ((_%$e163819%_ _%test163464%_))
                                (if _%$e163819%_ _%$e163819%_ equal?)))
                             (_%hash163830%_
                              (let ((_%$e163824%_ _%hash163466%_))
                                (if _%$e163824%_
                                    _%$e163824%_
                                    (if (eq? _%test163822%_ eq?)
                                        eq?-hash
                                        (if (eq? _%test163822%_ eqv?)
                                            eqv?-hash
                                            equal?-hash)))))
                             (_%ht163832%_
                              (let ((__tmp172487
                                     (make-table
                                      'size:
                                      _%size163817%_
                                      'test:
                                      _%test163822%_
                                      'hash:
                                      _%hash163830%_
                                      'weak-keys:
                                      _%weak-keys163472%_
                                      'weak-values:
                                      _%weak-values163474%_)))
                                (declare (not safe))
                                (cast HashTable::interface __tmp172487)))
                             (_%ht163855%_
                              (let* ((_%ht163835%_ _%ht163832%_)
                                     (_%ht163839%_ _%ht163835%_))
                                (_%__wrap-lock163621%_ _%ht163839%_)))
                             (_%implicit163858%_ true)
                             (_%ht163862%_ _%ht163855%_))
                        (_%__wrap-checked163744%_
                         _%ht163862%_
                         _%implicit163858%_)))))
            (if (or _%weak-keys163472%_ _%weak-values163474%_)
                (_%make-gambit-table163748%_)
                (if (and (or (eq? _%test163464%_ eq?)
                             (eq? _%test163464%_ ##eq?))
                         (or (not _%hash163466%_)
                             (eq? _%hash163466%_ eq?-hash)
                             (eq? _%hash163466%_ eq-hash))
                         (not _%seed163462%_))
                    (_%make-gc-hash-table163747%_)
                    (if (and (or (eq? _%test163464%_ eq?)
                                 (eq? _%test163464%_ ##eq?))
                             (or (not _%hash163466%_)
                                 (eq? _%hash163466%_ eq?-hash)
                                 (eq? _%hash163466%_ eq-hash)))
                        (_%make163746%_ make-eq-hash-table true eq-hash eq?)
                        (if (and (or (eq? _%test163464%_ eqv?)
                                     (eq? _%test163464%_ ##eqv?))
                                 (or (not _%hash163466%_)
                                     (eq? _%hash163466%_ eqv?-hash)
                                     (eq? _%hash163466%_ eqv-hash)))
                            (_%make163746%_
                             make-eqv-hash-table
                             true
                             eqv-hash
                             eqv?)
                            (if (and (or (eq? _%test163464%_ eq?)
                                         (eq? _%test163464%_ ##eq?))
                                     (or (eq? _%hash163466%_ symbolic-hash)
                                         (eq? _%hash163466%_ ##symbol-hash)))
                                (_%make163746%_
                                 make-symbol-hash-table
                                 symbolic?
                                 symbolic-hash
                                 eq?)
                                (if (and (or (eq? _%test163464%_ eq?)
                                             (eq? _%test163464%_ ##eq?))
                                         (eq? _%hash163466%_ immediate-hash))
                                    (_%make163746%_
                                     make-immediate-hash-table
                                     immediate?
                                     immediate-hash
                                     eq?)
                                    (if (and (or (eq? _%test163464%_ equal?)
                                                 (eq? _%test163464%_ ##equal?)
                                                 (eq? _%test163464%_ string=?)
                                                 (eq? _%test163464%_
                                                      ##string=?))
                                             (or (eq? _%hash163466%_
                                                      string-hash)
                                                 (eq? _%hash163466%_
                                                      ##string=?-hash)))
                                        (_%make163746%_
                                         make-string-hash-table
                                         string?
                                         string-hash
                                         ##string=?)
                                        (if (and (eq? _%test163464%_ equal?)
                                                 (not _%hash163466%_))
                                            (_%make163746%_
                                             make-generic-hash-table
                                             true
                                             equal?-hash
                                             equal?)
                                            (if (procedure? _%test163464%_)
                                                (if (procedure? _%hash163466%_)
                                                    (_%make163746%_
                                                     make-generic-hash-table
                                                     true
                                                     _%hash163466%_
                                                     _%test163464%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (error '"bad hash table hash function; expected procedure"
                                                               _%hash163466%_))
                                                      '#!void))
                                                (let ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"bad hash table test function; expected procedure"
                                                           _%test163464%_))
                                                  '#!void))))))))))))))
    (define make-hash-table__@
      (lambda (_%@@keywords164012%_ . _%args164013%_)
        (apply make-hash-table__%
               _%@@keywords164012%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164012%_ 'size: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164012%_ 'seed: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164012%_ 'test: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164012%_ 'hash: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords164012%_ 'lock: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164012%_
                  'check:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164012%_
                  'weak-keys:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords164012%_
                  'weak-values:
                  absent-value))
               _%args164013%_)))
    (define make-hash-table
      (lambda _%$%args163448164019%_
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
               _%$%args163448164019%_)))
    (define make-hash-table-eq
      (lambda _%args163437%_
        (apply make-hash-table 'test: eq? _%args163437%_)))
    (define make-hash-table-eqv
      (lambda _%args163435%_
        (apply make-hash-table 'test: eqv? _%args163435%_)))
    (define make-hash-table-symbolic
      (lambda _%args163433%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               symbolic-hash
               _%args163433%_)))
    (define make-hash-table-string
      (lambda _%args163431%_
        (apply make-hash-table
               'test:
               string=?
               'hash:
               string-hash
               _%args163431%_)))
    (define make-hash-table-immediate
      (lambda _%args163429%_
        (apply make-hash-table
               'test:
               eq?
               'hash:
               immediate-hash
               _%args163429%_)))
    (define list->hash-table
      (lambda (_%lst163426%_ . _%args163427%_)
        (list->hash-table!
         _%lst163426%_
         (apply make-hash-table
                'size:
                (length _%lst163426%_)
                _%args163427%_))))
    (define list->hash-table-eq
      (lambda (_%lst163423%_ . _%args163424%_)
        (list->hash-table!
         _%lst163423%_
         (apply make-hash-table-eq
                'size:
                (length _%lst163423%_)
                _%args163424%_))))
    (define list->hash-table-eqv
      (lambda (_%lst163420%_ . _%args163421%_)
        (list->hash-table!
         _%lst163420%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst163420%_)
                _%args163421%_))))
    (define list->hash-table-symbolic
      (lambda (_%lst163417%_ . _%args163418%_)
        (list->hash-table!
         _%lst163417%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst163417%_)
                _%args163418%_))))
    (define list->hash-table-string
      (lambda (_%lst163414%_ . _%args163415%_)
        (list->hash-table!
         _%lst163414%_
         (apply make-hash-table-string
                'size:
                (length _%lst163414%_)
                _%args163415%_))))
    (define list->hash-table-immediate
      (lambda (_%lst163411%_ . _%args163412%_)
        (list->hash-table!
         _%lst163411%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst163411%_)
                _%args163412%_))))
    (define list->hash-table!
      (lambda (_%lst163362%_ _%h163363%_)
        (for-each
         (lambda (_%el163365%_)
           (let* ((_%$%el163366163373%_ _%el163365%_)
                  (_%$%E163368163376%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (error '"No clause matching"
                              _%$%el163366163373%_
                              '([k . v])))
                     '#!void))
                  (_%$%K163369163399%_
                   (lambda (_%v163379%_ _%k163380%_)
                     (let* ((_%self156215163382%_ _%h163363%_)
                            (_%key163385%_ _%k163380%_)
                            (_%value163388%_ _%v163379%_))
                       (declare (not safe))
                       (let ((_%object163391163396%_
                              (##unchecked-structure-ref
                               _%self156215163382%_
                               '1
                               '#f
                               'set!))
                             (_%method163392163397%_
                              (##unchecked-structure-ref
                               _%self156215163382%_
                               '9
                               '#f
                               'set!)))
                         (_%method163392163397%_
                          _%object163391163396%_
                          _%key163385%_
                          _%value163388%_))))))
             (if (pair? _%$%el163366163373%_)
                 (let ((_%$%hd163370163402%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%el163366163373%_)))
                       (_%$%tl163371163404%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%el163366163373%_))))
                   (let* ((_%k163407%_ _%$%hd163370163402%_)
                          (_%v163409%_ _%$%tl163371163404%_))
                     (_%$%K163369163399%_ _%v163409%_ _%k163407%_)))
                 (_%$%E163368163376%_))))
         _%lst163362%_)
        _%h163363%_))
    (define plist->hash-table
      (lambda (_%lst163359%_ . _%args163360%_)
        (plist->hash-table!
         _%lst163359%_
         (apply make-hash-table
                'size:
                (length _%lst163359%_)
                _%args163360%_))))
    (define plist->hash-table-eq
      (lambda (_%lst163356%_ . _%args163357%_)
        (plist->hash-table!
         _%lst163356%_
         (apply make-hash-table-eq
                'size:
                (length _%lst163356%_)
                _%args163357%_))))
    (define plist->hash-table-eqv
      (lambda (_%lst163353%_ . _%args163354%_)
        (plist->hash-table!
         _%lst163353%_
         (apply make-hash-table-eqv
                'size:
                (length _%lst163353%_)
                _%args163354%_))))
    (define plist->hash-table-symbolic
      (lambda (_%lst163350%_ . _%args163351%_)
        (plist->hash-table!
         _%lst163350%_
         (apply make-hash-table-symbolic
                'size:
                (length _%lst163350%_)
                _%args163351%_))))
    (define plist->hash-table-string
      (lambda (_%lst163347%_ . _%args163348%_)
        (plist->hash-table!
         _%lst163347%_
         (apply make-hash-table-string
                'size:
                (length _%lst163347%_)
                _%args163348%_))))
    (define plist->hash-table-immediate
      (lambda (_%lst163344%_ . _%args163345%_)
        (plist->hash-table!
         _%lst163344%_
         (apply make-hash-table-immediate
                'size:
                (length _%lst163344%_)
                _%args163345%_))))
    (define plist->hash-table!
      (lambda (_%lst163267%_ _%h163268%_)
        (let _%loop163270%_ ((_%rest163272%_ _%lst163267%_))
          (let* ((_%$%rest163273163285%_ _%rest163272%_)
                 (_%$%else163276163293%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"bad property list -- uneven list"
                             _%lst163267%_)))))
            (let ((_%$%K163279163325%_
                   (lambda (_%rest163304%_ _%val163305%_ _%key163306%_)
                     (let* ((_%self156215163308%_ _%h163268%_)
                            (_%key163311%_ _%key163306%_)
                            (_%value163314%_ _%val163305%_))
                       (declare (not safe))
                       (let ((_%object163317163322%_
                              (##unchecked-structure-ref
                               _%self156215163308%_
                               '1
                               '#f
                               'set!))
                             (_%method163318163323%_
                              (##unchecked-structure-ref
                               _%self156215163308%_
                               '9
                               '#f
                               'set!)))
                         (_%method163318163323%_
                          _%object163317163322%_
                          _%key163311%_
                          _%value163314%_)))
                     (_%loop163270%_ _%rest163304%_)))
                  (_%$%K163278163298%_ (lambda () _%h163268%_)))
              (let ((_%$%try-match163275163301%_
                     (lambda ()
                       (if (null? _%$%rest163273163285%_)
                           (_%$%K163278163298%_)
                           (_%$%else163276163293%_)))))
                (if (pair? _%$%rest163273163285%_)
                    (let ((_%$%tl163281163330%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest163273163285%_)))
                          (_%$%hd163280163328%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest163273163285%_))))
                      (if (pair? _%$%tl163281163330%_)
                          (let ((_%$%tl163283163337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl163281163330%_)))
                                (_%$%hd163282163335%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl163281163330%_))))
                            (let ((_%key163333%_ _%$%hd163280163328%_)
                                  (_%val163340%_ _%$%hd163282163335%_)
                                  (_%rest163342%_ _%$%tl163283163337%_))
                              (_%$%K163279163325%_
                               _%rest163342%_
                               _%val163340%_
                               _%key163333%_)))
                          (_%$%else163276163293%_)))
                    (_%$%try-match163275163301%_))))))))
    (define __hash-length
      (lambda (_%h163219%_)
        (let* ((_%h163222%_ _%h163219%_)
               (_%self155484163231%_ _%h163222%_)
               (_%self155484163235%_ _%self155484163231%_)
               (_%self155484163237%_ _%self155484163235%_))
          (if __DEBUG
              (let ((_%val163257%_
                     (let ()
                       (declare (not safe))
                       (let ((_%object163249163254%_
                              (##unchecked-structure-ref
                               _%self155484163237%_
                               '1
                               '#f
                               'length))
                             (_%method163250163255%_
                              (##unchecked-structure-ref
                               _%self155484163237%_
                               '6
                               '#f
                               'length)))
                         (_%method163250163255%_ _%object163249163254%_)))))
                (if (fixnum? _%val163257%_)
                    _%val163257%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/hash
                       'contract:
                       '(fixnum? val)
                       'value:
                       _%val163257%_)
                      '#!void)))
              (let ()
                (declare (not safe))
                (let ((_%object163259163264%_
                       (##unchecked-structure-ref
                        _%self155484163237%_
                        '1
                        '#f
                        'length))
                      (_%method163260163265%_
                       (##unchecked-structure-ref
                        _%self155484163237%_
                        '6
                        '#f
                        'length)))
                  (_%method163260163265%_ _%object163259163264%_)))))))
    (define hash-length
      (lambda (_%h163204%_)
        (let* ((_%h163207%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163204%_)))
               (_%h163209%_ _%h163207%_))
          (__hash-length _%h163209%_))))
    (define __hash-ref__%
      (lambda (_%h163135%_ _%key163136%_ _%default163137%_)
        (let* ((_%h163140%_ _%h163135%_)
               (_%result163190%_
                (let* ((_%self155972163149%_ _%h163140%_)
                       (_%key163152%_ _%key163136%_)
                       (_%default163155%_ _%default163137%_)
                       (_%self155972163159%_ _%self155972163149%_)
                       (_%self155972163161%_ _%self155972163159%_))
                  (if __DEBUG
                      (let ()
                        (declare (not safe))
                        (let ((_%object163175163180%_
                               (##unchecked-structure-ref
                                _%self155972163161%_
                                '1
                                '#f
                                'ref))
                              (_%method163176163181%_
                               (##unchecked-structure-ref
                                _%self155972163161%_
                                '8
                                '#f
                                'ref)))
                          (_%method163176163181%_
                           _%object163175163180%_
                           _%key163152%_
                           _%default163155%_)))
                      (let ()
                        (declare (not safe))
                        (let ((_%object163182163187%_
                               (##unchecked-structure-ref
                                _%self155972163161%_
                                '1
                                '#f
                                'ref))
                              (_%method163183163188%_
                               (##unchecked-structure-ref
                                _%self155972163161%_
                                '8
                                '#f
                                'ref)))
                          (_%method163183163188%_
                           _%object163182163187%_
                           _%key163152%_
                           _%default163155%_)))))))
          (if (eq? _%result163190%_ (macro-absent-obj))
              (raise-unbound-key-error
               'hash-ref
               '"unknown hash key"
               'hash:
               _%h163140%_
               'key:
               _%key163136%_)
              _%result163190%_))))
    (define __hash-ref__0
      (lambda (_%h163195%_ _%key163196%_)
        (let ((_%default163198%_ absent-obj))
          (__hash-ref__% _%h163195%_ _%key163196%_ _%default163198%_))))
    (define __hash-ref
      (lambda _g172488_
        (let ((_g172489_ (let () (declare (not safe)) (##length _g172488_))))
          (cond ((let () (declare (not safe)) (##fx= _g172489_ 2))
                 (apply __hash-ref__0 _g172488_))
                ((let () (declare (not safe)) (##fx= _g172489_ 3))
                 (apply __hash-ref__% _g172488_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-ref
                  _g172488_))))))
    (define hash-ref__%
      (lambda (_%h163105%_ _%key163106%_ _%default163107%_)
        (let* ((_%h163110%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163105%_)))
               (_%h163112%_ _%h163110%_))
          (__hash-ref__% _%h163112%_ _%key163106%_ _%default163107%_))))
    (define hash-ref__0
      (lambda (_%h163125%_ _%key163126%_)
        (let ((_%default163128%_ absent-obj))
          (hash-ref__% _%h163125%_ _%key163126%_ _%default163128%_))))
    (define hash-ref
      (lambda _g172490_
        (let ((_g172491_ (let () (declare (not safe)) (##length _g172490_))))
          (cond ((let () (declare (not safe)) (##fx= _g172491_ 2))
                 (apply hash-ref__0 _g172490_))
                ((let () (declare (not safe)) (##fx= _g172491_ 3))
                 (apply hash-ref__% _g172490_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-ref
                  _g172490_))))))
    (define __hash-get
      (lambda (_%h163050%_ _%key163051%_)
        (let* ((_%h163054%_ _%h163050%_)
               (_%self155972163063%_ _%h163054%_)
               (_%key163066%_ _%key163051%_)
               (_%default163069%_ '#f)
               (_%self155972163073%_ _%self155972163063%_)
               (_%self155972163075%_ _%self155972163073%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163089163094%_
                       (##unchecked-structure-ref
                        _%self155972163075%_
                        '1
                        '#f
                        'ref))
                      (_%method163090163095%_
                       (##unchecked-structure-ref
                        _%self155972163075%_
                        '8
                        '#f
                        'ref)))
                  (_%method163090163095%_
                   _%object163089163094%_
                   _%key163066%_
                   _%default163069%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163096163101%_
                       (##unchecked-structure-ref
                        _%self155972163075%_
                        '1
                        '#f
                        'ref))
                      (_%method163097163102%_
                       (##unchecked-structure-ref
                        _%self155972163075%_
                        '8
                        '#f
                        'ref)))
                  (_%method163097163102%_
                   _%object163096163101%_
                   _%key163066%_
                   _%default163069%_)))))))
    (define hash-get
      (lambda (_%h163034%_ _%key163035%_)
        (let* ((_%h163038%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h163034%_)))
               (_%h163040%_ _%h163038%_))
          (__hash-get _%h163040%_ _%key163035%_))))
    (define __hash-put!
      (lambda (_%h162979%_ _%key162980%_ _%value162981%_)
        (let* ((_%h162984%_ _%h162979%_)
               (_%self156216162993%_ _%h162984%_)
               (_%key162996%_ _%key162980%_)
               (_%value162999%_ _%value162981%_)
               (_%self156216163003%_ _%self156216162993%_)
               (_%self156216163005%_ _%self156216163003%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object163019163024%_
                       (##unchecked-structure-ref
                        _%self156216163005%_
                        '1
                        '#f
                        'set!))
                      (_%method163020163025%_
                       (##unchecked-structure-ref
                        _%self156216163005%_
                        '9
                        '#f
                        'set!)))
                  (_%method163020163025%_
                   _%object163019163024%_
                   _%key162996%_
                   _%value162999%_)))
              (let ()
                (declare (not safe))
                (let ((_%object163026163031%_
                       (##unchecked-structure-ref
                        _%self156216163005%_
                        '1
                        '#f
                        'set!))
                      (_%method163027163032%_
                       (##unchecked-structure-ref
                        _%self156216163005%_
                        '9
                        '#f
                        'set!)))
                  (_%method163027163032%_
                   _%object163026163031%_
                   _%key162996%_
                   _%value162999%_)))))))
    (define hash-put!
      (lambda (_%h162962%_ _%key162963%_ _%value162964%_)
        (let* ((_%h162967%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162962%_)))
               (_%h162969%_ _%h162967%_))
          (__hash-put! _%h162969%_ _%key162963%_ _%value162964%_))))
    (define __hash-update!__%
      (lambda (_%h162878%_ _%key162879%_ _%update162880%_ _%default162881%_)
        (let* ((_%h162884%_ _%h162878%_)
               (_%self156460162893%_ _%h162884%_)
               (_%key162896%_ _%key162879%_)
               (_%proc162899%_ _%update162880%_)
               (_%default162902%_ _%default162881%_)
               (_%self156460162906%_ _%self156460162893%_)
               (_%self156460162908%_ _%self156460162906%_))
          (if (procedure? _%proc162899%_)
              (let ((_%proc162924%_ _%proc162899%_))
                (if __DEBUG
                    (let ()
                      (declare (not safe))
                      (let ((_%object162933162938%_
                             (##unchecked-structure-ref
                              _%self156460162908%_
                              '1
                              '#f
                              'update!))
                            (_%method162934162939%_
                             (##unchecked-structure-ref
                              _%self156460162908%_
                              '10
                              '#f
                              'update!)))
                        (_%method162934162939%_
                         _%object162933162938%_
                         _%key162896%_
                         _%proc162924%_
                         _%default162902%_)))
                    (let ()
                      (declare (not safe))
                      (let ((_%object162940162945%_
                             (##unchecked-structure-ref
                              _%self156460162908%_
                              '1
                              '#f
                              'update!))
                            (_%method162941162946%_
                             (##unchecked-structure-ref
                              _%self156460162908%_
                              '10
                              '#f
                              'update!)))
                        (_%method162941162946%_
                         _%object162940162945%_
                         _%key162896%_
                         _%proc162924%_
                         _%default162902%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 'procedure?
                 'value:
                 _%proc162899%_)
                '#!void)))))
    (define __hash-update!__0
      (lambda (_%h162951%_ _%key162952%_ _%update162953%_)
        (let ((_%default162955%_ '#!void))
          (__hash-update!__%
           _%h162951%_
           _%key162952%_
           _%update162953%_
           _%default162955%_))))
    (define __hash-update!
      (lambda _g172492_
        (let ((_g172493_ (let () (declare (not safe)) (##length _g172492_))))
          (cond ((let () (declare (not safe)) (##fx= _g172493_ 3))
                 (apply __hash-update!__0 _g172492_))
                ((let () (declare (not safe)) (##fx= _g172493_ 4))
                 (apply __hash-update!__% _g172492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-update!
                  _g172492_))))))
    (define hash-update!__%
      (lambda (_%h162845%_ _%key162846%_ _%update162847%_ _%default162848%_)
        (let* ((_%h162851%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162845%_)))
               (_%h162853%_ _%h162851%_))
          (__hash-update!__%
           _%h162853%_
           _%key162846%_
           _%update162847%_
           _%default162848%_))))
    (define hash-update!__0
      (lambda (_%h162866%_ _%key162867%_ _%update162868%_)
        (let ((_%default162870%_ '#!void))
          (hash-update!__%
           _%h162866%_
           _%key162867%_
           _%update162868%_
           _%default162870%_))))
    (define hash-update!
      (lambda _g172494_
        (let ((_g172495_ (let () (declare (not safe)) (##length _g172494_))))
          (cond ((let () (declare (not safe)) (##fx= _g172495_ 3))
                 (apply hash-update!__0 _g172494_))
                ((let () (declare (not safe)) (##fx= _g172495_ 4))
                 (apply hash-update!__% _g172494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-update!
                  _g172494_))))))
    (define __hash-remove!
      (lambda (_%h162794%_ _%key162795%_)
        (let* ((_%h162798%_ _%h162794%_)
               (_%self154996162807%_ _%h162798%_)
               (_%key162810%_ _%key162795%_)
               (_%self154996162814%_ _%self154996162807%_)
               (_%self154996162816%_ _%self154996162814%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162829162834%_
                       (##unchecked-structure-ref
                        _%self154996162816%_
                        '1
                        '#f
                        'delete!))
                      (_%method162830162835%_
                       (##unchecked-structure-ref
                        _%self154996162816%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162830162835%_
                   _%object162829162834%_
                   _%key162810%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162836162841%_
                       (##unchecked-structure-ref
                        _%self154996162816%_
                        '1
                        '#f
                        'delete!))
                      (_%method162837162842%_
                       (##unchecked-structure-ref
                        _%self154996162816%_
                        '4
                        '#f
                        'delete!)))
                  (_%method162837162842%_
                   _%object162836162841%_
                   _%key162810%_)))))))
    (define hash-remove!
      (lambda (_%h162778%_ _%key162779%_)
        (let* ((_%h162782%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162778%_)))
               (_%h162784%_ _%h162782%_))
          (__hash-remove! _%h162784%_ _%key162779%_))))
    (define __hash-key?
      (lambda (_%h162724%_ _%k162725%_)
        (let ((_%h162728%_ _%h162724%_))
          (not (eq? (let* ((_%self155972162737%_ _%h162728%_)
                           (_%key162740%_ _%k162725%_)
                           (_%default162743%_ absent-value)
                           (_%self155972162747%_ _%self155972162737%_)
                           (_%self155972162749%_ _%self155972162747%_))
                      (if __DEBUG
                          (let ()
                            (declare (not safe))
                            (let ((_%object162763162768%_
                                   (##unchecked-structure-ref
                                    _%self155972162749%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162764162769%_
                                   (##unchecked-structure-ref
                                    _%self155972162749%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method162764162769%_
                               _%object162763162768%_
                               _%key162740%_
                               _%default162743%_)))
                          (let ()
                            (declare (not safe))
                            (let ((_%object162770162775%_
                                   (##unchecked-structure-ref
                                    _%self155972162749%_
                                    '1
                                    '#f
                                    'ref))
                                  (_%method162771162776%_
                                   (##unchecked-structure-ref
                                    _%self155972162749%_
                                    '8
                                    '#f
                                    'ref)))
                              (_%method162771162776%_
                               _%object162770162775%_
                               _%key162740%_
                               _%default162743%_)))))
                    absent-value)))))
    (define hash-key?
      (lambda (_%h162708%_ _%k162709%_)
        (let* ((_%h162712%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162708%_)))
               (_%h162714%_ _%h162712%_))
          (__hash-key? _%h162714%_ _%k162709%_))))
    (define __hash->list
      (lambda (_%h162643%_)
        (let* ((_%h162646%_ _%h162643%_) (_%lst162655%_ '()))
          (let* ((_%self155240162657%_ _%h162646%_)
                 (_%proc162663%_
                  (lambda (_%k162660%_ _%v162661%_)
                    (set! _%lst162655%_
                          (cons (cons _%k162660%_ _%v162661%_)
                                _%lst162655%_))))
                 (_%self155240162667%_ _%self155240162657%_)
                 (_%self155240162669%_ _%self155240162667%_)
                 (_%proc162684%_ _%proc162663%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162693162698%_
                         (##unchecked-structure-ref
                          _%self155240162669%_
                          '1
                          '#f
                          'for-each))
                        (_%method162694162699%_
                         (##unchecked-structure-ref
                          _%self155240162669%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162694162699%_
                     _%object162693162698%_
                     _%proc162684%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162700162705%_
                         (##unchecked-structure-ref
                          _%self155240162669%_
                          '1
                          '#f
                          'for-each))
                        (_%method162701162706%_
                         (##unchecked-structure-ref
                          _%self155240162669%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162701162706%_
                     _%object162700162705%_
                     _%proc162684%_)))))
          _%lst162655%_)))
    (define hash->list
      (lambda (_%h162628%_)
        (let* ((_%h162631%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162628%_)))
               (_%h162633%_ _%h162631%_))
          (__hash->list _%h162633%_))))
    (define __hash->plist
      (lambda (_%h162563%_)
        (let* ((_%h162566%_ _%h162563%_) (_%lst162575%_ '()))
          (let* ((_%self155240162577%_ _%h162566%_)
                 (_%proc162583%_
                  (lambda (_%k162580%_ _%v162581%_)
                    (set! _%lst162575%_
                          (cons _%k162580%_
                                (cons _%v162581%_ _%lst162575%_)))))
                 (_%self155240162587%_ _%self155240162577%_)
                 (_%self155240162589%_ _%self155240162587%_)
                 (_%proc162604%_ _%proc162583%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162613162618%_
                         (##unchecked-structure-ref
                          _%self155240162589%_
                          '1
                          '#f
                          'for-each))
                        (_%method162614162619%_
                         (##unchecked-structure-ref
                          _%self155240162589%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162614162619%_
                     _%object162613162618%_
                     _%proc162604%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162620162625%_
                         (##unchecked-structure-ref
                          _%self155240162589%_
                          '1
                          '#f
                          'for-each))
                        (_%method162621162626%_
                         (##unchecked-structure-ref
                          _%self155240162589%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162621162626%_
                     _%object162620162625%_
                     _%proc162604%_)))))
          _%lst162575%_)))
    (define hash->plist
      (lambda (_%h162548%_)
        (let* ((_%h162551%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162548%_)))
               (_%h162553%_ _%h162551%_))
          (__hash->plist _%h162553%_))))
    (define __hash-for-each
      (lambda (_%proc162480%_ _%h162481%_)
        (let* ((_%proc162484%_ _%proc162480%_)
               (_%h162492%_ _%h162481%_)
               (_%self155240162501%_ _%h162492%_)
               (_%proc162504%_ _%proc162484%_)
               (_%self155240162508%_ _%self155240162501%_)
               (_%self155240162510%_ _%self155240162508%_)
               (_%proc162524%_ _%proc162504%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object162533162538%_
                       (##unchecked-structure-ref
                        _%self155240162510%_
                        '1
                        '#f
                        'for-each))
                      (_%method162534162539%_
                       (##unchecked-structure-ref
                        _%self155240162510%_
                        '5
                        '#f
                        'for-each)))
                  (_%method162534162539%_
                   _%object162533162538%_
                   _%proc162524%_)))
              (let ()
                (declare (not safe))
                (let ((_%object162540162545%_
                       (##unchecked-structure-ref
                        _%self155240162510%_
                        '1
                        '#f
                        'for-each))
                      (_%method162541162546%_
                       (##unchecked-structure-ref
                        _%self155240162510%_
                        '5
                        '#f
                        'for-each)))
                  (_%method162541162546%_
                   _%object162540162545%_
                   _%proc162524%_)))))))
    (define hash-for-each
      (lambda (_%proc162454%_ _%h162455%_)
        (if (procedure? _%proc162454%_)
            (let* ((_%proc162459%_ _%proc162454%_)
                   (_%h162468%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162455%_)))
                   (_%h162470%_ _%h162468%_))
              (__hash-for-each _%proc162459%_ _%h162470%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@602.22-602.26"
               'contract:
               'procedure?
               'value:
               _%proc162454%_)
              '#!void))))
    (define __hash-map
      (lambda (_%proc162380%_ _%h162381%_)
        (let* ((_%proc162384%_ _%proc162380%_)
               (_%h162392%_ _%h162381%_)
               (_%result162401%_ '()))
          (let* ((_%self155240162403%_ _%h162392%_)
                 (_%proc162409%_
                  (lambda (_%k162406%_ _%v162407%_)
                    (set! _%result162401%_
                          (cons (let ()
                                  (declare (not safe))
                                  (_%proc162384%_ _%k162406%_ _%v162407%_))
                                _%result162401%_))))
                 (_%self155240162413%_ _%self155240162403%_)
                 (_%self155240162415%_ _%self155240162413%_)
                 (_%proc162430%_ _%proc162409%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162439162444%_
                         (##unchecked-structure-ref
                          _%self155240162415%_
                          '1
                          '#f
                          'for-each))
                        (_%method162440162445%_
                         (##unchecked-structure-ref
                          _%self155240162415%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162440162445%_
                     _%object162439162444%_
                     _%proc162430%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162446162451%_
                         (##unchecked-structure-ref
                          _%self155240162415%_
                          '1
                          '#f
                          'for-each))
                        (_%method162447162452%_
                         (##unchecked-structure-ref
                          _%self155240162415%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162447162452%_
                     _%object162446162451%_
                     _%proc162430%_)))))
          _%result162401%_)))
    (define hash-map
      (lambda (_%proc162354%_ _%h162355%_)
        (if (procedure? _%proc162354%_)
            (let* ((_%proc162359%_ _%proc162354%_)
                   (_%h162368%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162355%_)))
                   (_%h162370%_ _%h162368%_))
              (__hash-map _%proc162359%_ _%h162370%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@605.17-605.21"
               'contract:
               'procedure?
               'value:
               _%proc162354%_)
              '#!void))))
    (define __hash-fold
      (lambda (_%proc162279%_ _%iv162280%_ _%h162281%_)
        (let* ((_%proc162284%_ _%proc162279%_)
               (_%h162292%_ _%h162281%_)
               (_%result162301%_ _%iv162280%_))
          (let* ((_%self155240162303%_ _%h162292%_)
                 (_%proc162309%_
                  (lambda (_%k162306%_ _%v162307%_)
                    (set! _%result162301%_
                          (let ()
                            (declare (not safe))
                            (_%proc162284%_
                             _%k162306%_
                             _%v162307%_
                             _%result162301%_)))))
                 (_%self155240162313%_ _%self155240162303%_)
                 (_%self155240162315%_ _%self155240162313%_)
                 (_%proc162330%_ _%proc162309%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162339162344%_
                         (##unchecked-structure-ref
                          _%self155240162315%_
                          '1
                          '#f
                          'for-each))
                        (_%method162340162345%_
                         (##unchecked-structure-ref
                          _%self155240162315%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162340162345%_
                     _%object162339162344%_
                     _%proc162330%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162346162351%_
                         (##unchecked-structure-ref
                          _%self155240162315%_
                          '1
                          '#f
                          'for-each))
                        (_%method162347162352%_
                         (##unchecked-structure-ref
                          _%self155240162315%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162347162352%_
                     _%object162346162351%_
                     _%proc162330%_)))))
          _%result162301%_)))
    (define hash-fold
      (lambda (_%proc162252%_ _%iv162253%_ _%h162254%_)
        (if (procedure? _%proc162252%_)
            (let* ((_%proc162258%_ _%proc162252%_)
                   (_%h162267%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162254%_)))
                   (_%h162269%_ _%h162267%_))
              (__hash-fold _%proc162258%_ _%iv162253%_ _%h162269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@611.18-611.22"
               'contract:
               'procedure?
               'value:
               _%proc162252%_)
              '#!void))))
    (define __hash-find__%
      (lambda (_%proc162162%_ _%h162163%_ _%default-value162164%_)
        (let* ((_%proc162167%_ _%proc162162%_)
               (_%h162175%_ _%h162163%_)
               (__tmp172496
                (lambda (_%return162184%_)
                  (let* ((_%self155240162186%_ _%h162175%_)
                         (_%proc162195%_
                          (lambda (_%k162189%_ _%v162190%_)
                            (let ((_%$e162192%_
                                   (let ()
                                     (declare (not safe))
                                     (_%proc162167%_
                                      _%k162189%_
                                      _%v162190%_))))
                              (if _%$e162192%_
                                  (_%return162184%_ _%$e162192%_)
                                  '#!void))))
                         (_%self155240162199%_ _%self155240162186%_)
                         (_%self155240162201%_ _%self155240162199%_)
                         (_%proc162216%_ _%proc162195%_))
                    (if __DEBUG
                        (let ()
                          (declare (not safe))
                          (let ((_%object162225162230%_
                                 (##unchecked-structure-ref
                                  _%self155240162201%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method162226162231%_
                                 (##unchecked-structure-ref
                                  _%self155240162201%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method162226162231%_
                             _%object162225162230%_
                             _%proc162216%_)))
                        (let ()
                          (declare (not safe))
                          (let ((_%object162232162237%_
                                 (##unchecked-structure-ref
                                  _%self155240162201%_
                                  '1
                                  '#f
                                  'for-each))
                                (_%method162233162238%_
                                 (##unchecked-structure-ref
                                  _%self155240162201%_
                                  '5
                                  '#f
                                  'for-each)))
                            (_%method162233162238%_
                             _%object162232162237%_
                             _%proc162216%_)))))
                  _%default-value162164%_)))
          (declare (not safe))
          (##call-with-current-continuation __tmp172496))))
    (define __hash-find__0
      (lambda (_%proc162243%_ _%h162244%_)
        (let ((_%default-value162246%_ '#f))
          (__hash-find__%
           _%proc162243%_
           _%h162244%_
           _%default-value162246%_))))
    (define __hash-find
      (lambda _g172497_
        (let ((_g172498_ (let () (declare (not safe)) (##length _g172497_))))
          (cond ((let () (declare (not safe)) (##fx= _g172498_ 2))
                 (apply __hash-find__0 _g172497_))
                ((let () (declare (not safe)) (##fx= _g172498_ 3))
                 (apply __hash-find__% _g172497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __hash-find
                  _g172497_))))))
    (define hash-find__%
      (lambda (_%proc162122%_ _%h162123%_ _%default-value162124%_)
        (if (procedure? _%proc162122%_)
            (let* ((_%proc162128%_ _%proc162122%_)
                   (_%h162137%_
                    (let ()
                      (declare (not safe))
                      (cast HashTable::interface _%h162123%_)))
                   (_%h162139%_ _%h162137%_))
              (__hash-find__%
               _%proc162128%_
               _%h162139%_
               _%default-value162124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/hash.ss\"@616.18-616.22"
               'contract:
               'procedure?
               'value:
               _%proc162122%_)
              '#!void))))
    (define hash-find__0
      (lambda (_%proc162152%_ _%h162153%_)
        (let ((_%default-value162155%_ '#f))
          (hash-find__% _%proc162152%_ _%h162153%_ _%default-value162155%_))))
    (define hash-find
      (lambda _g172499_
        (let ((_g172500_ (let () (declare (not safe)) (##length _g172499_))))
          (cond ((let () (declare (not safe)) (##fx= _g172500_ 2))
                 (apply hash-find__0 _g172499_))
                ((let () (declare (not safe)) (##fx= _g172500_ 3))
                 (apply hash-find__% _g172499_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  hash-find
                  _g172499_))))))
    (define __hash-keys
      (lambda (_%h162056%_)
        (let* ((_%h162059%_ _%h162056%_) (_%result162068%_ '()))
          (let* ((_%self155240162070%_ _%h162059%_)
                 (_%proc162076%_
                  (lambda (_%k162073%_ _%v162074%_)
                    (set! _%result162068%_
                          (cons _%k162073%_ _%result162068%_))))
                 (_%self155240162080%_ _%self155240162070%_)
                 (_%self155240162082%_ _%self155240162080%_)
                 (_%proc162097%_ _%proc162076%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162106162111%_
                         (##unchecked-structure-ref
                          _%self155240162082%_
                          '1
                          '#f
                          'for-each))
                        (_%method162107162112%_
                         (##unchecked-structure-ref
                          _%self155240162082%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162107162112%_
                     _%object162106162111%_
                     _%proc162097%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162113162118%_
                         (##unchecked-structure-ref
                          _%self155240162082%_
                          '1
                          '#f
                          'for-each))
                        (_%method162114162119%_
                         (##unchecked-structure-ref
                          _%self155240162082%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162114162119%_
                     _%object162113162118%_
                     _%proc162097%_)))))
          _%result162068%_)))
    (define hash-keys
      (lambda (_%h162041%_)
        (let* ((_%h162044%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h162041%_)))
               (_%h162046%_ _%h162044%_))
          (__hash-keys _%h162046%_))))
    (define __hash-values
      (lambda (_%h161976%_)
        (let* ((_%h161979%_ _%h161976%_) (_%result161988%_ '()))
          (let* ((_%self155240161990%_ _%h161979%_)
                 (_%proc161996%_
                  (lambda (_%k161993%_ _%v161994%_)
                    (set! _%result161988%_
                          (cons _%v161994%_ _%result161988%_))))
                 (_%self155240162000%_ _%self155240161990%_)
                 (_%self155240162002%_ _%self155240162000%_)
                 (_%proc162017%_ _%proc161996%_))
            (if __DEBUG
                (let ()
                  (declare (not safe))
                  (let ((_%object162026162031%_
                         (##unchecked-structure-ref
                          _%self155240162002%_
                          '1
                          '#f
                          'for-each))
                        (_%method162027162032%_
                         (##unchecked-structure-ref
                          _%self155240162002%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162027162032%_
                     _%object162026162031%_
                     _%proc162017%_)))
                (let ()
                  (declare (not safe))
                  (let ((_%object162033162038%_
                         (##unchecked-structure-ref
                          _%self155240162002%_
                          '1
                          '#f
                          'for-each))
                        (_%method162034162039%_
                         (##unchecked-structure-ref
                          _%self155240162002%_
                          '5
                          '#f
                          'for-each)))
                    (_%method162034162039%_
                     _%object162033162038%_
                     _%proc162017%_)))))
          _%result161988%_)))
    (define hash-values
      (lambda (_%h161961%_)
        (let* ((_%h161964%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161961%_)))
               (_%h161966%_ _%h161964%_))
          (__hash-values _%h161966%_))))
    (define __hash-copy
      (lambda (_%h161916%_)
        (let* ((_%h161919%_ _%h161916%_)
               (_%self154752161928%_ _%h161919%_)
               (_%self154752161932%_ _%self154752161928%_)
               (_%self154752161934%_ _%self154752161932%_))
          (if __DEBUG
              (let ((__tmp172501
                     (let ()
                       (declare (not safe))
                       (let ((_%object161946161951%_
                              (##unchecked-structure-ref
                               _%self154752161934%_
                               '1
                               '#f
                               'copy))
                             (_%method161947161952%_
                              (##unchecked-structure-ref
                               _%self154752161934%_
                               '3
                               '#f
                               'copy)))
                         (_%method161947161952%_ _%object161946161951%_)))))
                (declare (not safe))
                (cast HashTable::interface __tmp172501))
              (let ()
                (declare (not safe))
                (let ((_%object161953161958%_
                       (##unchecked-structure-ref
                        _%self154752161934%_
                        '1
                        '#f
                        'copy))
                      (_%method161954161959%_
                       (##unchecked-structure-ref
                        _%self154752161934%_
                        '3
                        '#f
                        'copy)))
                  (_%method161954161959%_ _%object161953161958%_)))))))
    (define hash-copy
      (lambda (_%h161901%_)
        (let* ((_%h161904%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161901%_)))
               (_%h161906%_ _%h161904%_))
          (__hash-copy _%h161906%_))))
    (define __hash-new
      (lambda (_%h161836%_)
        (let* ((_%h161839%_ _%h161836%_)
               (_%self155728161848%_ _%h161839%_)
               (_%size-hint161851%_ '#f)
               (_%self155728161855%_ _%self155728161848%_)
               (_%self155728161857%_ _%self155728161855%_))
          (if (let ((_%$e161873%_ '#t)) (and _%$e161873%_ _%$e161873%_))
              (let ((_%size-hint161877%_ _%size-hint161851%_))
                (if __DEBUG
                    (let ((__tmp172502
                           (let ()
                             (declare (not safe))
                             (let ((_%object161886161891%_
                                    (##unchecked-structure-ref
                                     _%self155728161857%_
                                     '1
                                     '#f
                                     'new))
                                   (_%method161887161892%_
                                    (##unchecked-structure-ref
                                     _%self155728161857%_
                                     '7
                                     '#f
                                     'new)))
                               (_%method161887161892%_
                                _%object161886161891%_
                                _%size-hint161877%_)))))
                      (declare (not safe))
                      (cast HashTable::interface __tmp172502))
                    (let ()
                      (declare (not safe))
                      (let ((_%object161893161898%_
                             (##unchecked-structure-ref
                              _%self155728161857%_
                              '1
                              '#f
                              'new))
                            (_%method161894161899%_
                             (##unchecked-structure-ref
                              _%self155728161857%_
                              '7
                              '#f
                              'new)))
                        (_%method161894161899%_
                         _%object161893161898%_
                         _%size-hint161877%_)))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/hash
                 'contract:
                 '(? (or not fixnum?))
                 'value:
                 _%size-hint161851%_)
                '#!void)))))
    (define hash-new
      (lambda (_%h161821%_)
        (let* ((_%h161824%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161821%_)))
               (_%h161826%_ _%h161824%_))
          (__hash-new _%h161826%_))))
    (define __hash-clear!
      (lambda (_%h161776%_)
        (let* ((_%h161779%_ _%h161776%_)
               (_%self154507161788%_ _%h161779%_)
               (_%self154507161792%_ _%self154507161788%_)
               (_%self154507161794%_ _%self154507161792%_))
          (if __DEBUG
              (let ()
                (declare (not safe))
                (let ((_%object161806161811%_
                       (##unchecked-structure-ref
                        _%self154507161794%_
                        '1
                        '#f
                        'clear!))
                      (_%method161807161812%_
                       (##unchecked-structure-ref
                        _%self154507161794%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161807161812%_ _%object161806161811%_)))
              (let ()
                (declare (not safe))
                (let ((_%object161813161818%_
                       (##unchecked-structure-ref
                        _%self154507161794%_
                        '1
                        '#f
                        'clear!))
                      (_%method161814161819%_
                       (##unchecked-structure-ref
                        _%self154507161794%_
                        '2
                        '#f
                        'clear!)))
                  (_%method161814161819%_ _%object161813161818%_)))))))
    (define hash-clear!
      (lambda (_%h161761%_)
        (let* ((_%h161764%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161761%_)))
               (_%h161766%_ _%h161764%_))
          (__hash-clear! _%h161766%_))))
    (define __hash-merge
      (lambda (_%h161713%_ . _%rest161714%_)
        (let* ((_%h161717%_ _%h161713%_)
               (_%copy161759%_
                (let* ((_%self154752161726%_ _%h161717%_)
                       (_%self154752161730%_ _%self154752161726%_)
                       (_%self154752161732%_ _%self154752161730%_))
                  (if __DEBUG
                      (let ((__tmp172503
                             (let ()
                               (declare (not safe))
                               (let ((_%object161744161749%_
                                      (##unchecked-structure-ref
                                       _%self154752161732%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161745161750%_
                                      (##unchecked-structure-ref
                                       _%self154752161732%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161745161750%_
                                  _%object161744161749%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp172503))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161751161756%_
                               (##unchecked-structure-ref
                                _%self154752161732%_
                                '1
                                '#f
                                'copy))
                              (_%method161752161757%_
                               (##unchecked-structure-ref
                                _%self154752161732%_
                                '3
                                '#f
                                'copy)))
                          (_%method161752161757%_ _%object161751161756%_)))))))
          (apply hash-merge! _%copy161759%_ _%rest161714%_)
          _%copy161759%_)))
    (define hash-merge
      (lambda (_%h161697%_ . _%rest161698%_)
        (let* ((_%h161701%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161697%_)))
               (_%h161703%_ _%h161701%_))
          (declare (not safe))
          (##apply __hash-merge _%h161703%_ _%rest161698%_))))
    (define __hash-merge-right
      (lambda (_%h161649%_ . _%rest161650%_)
        (let* ((_%h161653%_ _%h161649%_)
               (_%copy161695%_
                (let* ((_%self154752161662%_ _%h161653%_)
                       (_%self154752161666%_ _%self154752161662%_)
                       (_%self154752161668%_ _%self154752161666%_))
                  (if __DEBUG
                      (let ((__tmp172504
                             (let ()
                               (declare (not safe))
                               (let ((_%object161680161685%_
                                      (##unchecked-structure-ref
                                       _%self154752161668%_
                                       '1
                                       '#f
                                       'copy))
                                     (_%method161681161686%_
                                      (##unchecked-structure-ref
                                       _%self154752161668%_
                                       '3
                                       '#f
                                       'copy)))
                                 (_%method161681161686%_
                                  _%object161680161685%_)))))
                        (declare (not safe))
                        (cast HashTable::interface __tmp172504))
                      (let ()
                        (declare (not safe))
                        (let ((_%object161687161692%_
                               (##unchecked-structure-ref
                                _%self154752161668%_
                                '1
                                '#f
                                'copy))
                              (_%method161688161693%_
                               (##unchecked-structure-ref
                                _%self154752161668%_
                                '3
                                '#f
                                'copy)))
                          (_%method161688161693%_ _%object161687161692%_)))))))
          (apply hash-merge-right! _%copy161695%_ _%rest161650%_)
          _%copy161695%_)))
    (define hash-merge-right
      (lambda (_%h161633%_ . _%rest161634%_)
        (let* ((_%h161637%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161633%_)))
               (_%h161639%_ _%h161637%_))
          (declare (not safe))
          (##apply __hash-merge-right _%h161639%_ _%rest161634%_))))
    (define __hash-merge!
      (lambda (_%h161493%_ . _%rest161494%_)
        (let ((_%h161497%_ _%h161493%_))
          (let ((__tmp172505
                 (lambda (_%hr161506%_)
                   (let* ((_%hr161509%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr161506%_)))
                          (_%hr161511%_ _%hr161509%_)
                          (_%self155240161524%_ _%hr161511%_)
                          (_%proc161593%_
                           (lambda (_%k161527%_ _%v161528%_)
                             (if (let* ((_%h161530%_ _%h161497%_)
                                        (_%k161533%_ _%k161527%_)
                                        (_%h161537%_ _%h161530%_)
                                        (_%h161539%_ _%h161537%_))
                                   (__hash-key? _%h161539%_ _%k161533%_))
                                 '#!void
                                 (let* ((_%self156216161555%_ _%h161497%_)
                                        (_%key161558%_ _%k161527%_)
                                        (_%value161561%_ _%v161528%_)
                                        (_%self156216161565%_
                                         _%self156216161555%_)
                                        (_%self156216161567%_
                                         _%self156216161565%_))
                                   (if __DEBUG
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161578161583%_
                                                (##unchecked-structure-ref
                                                 _%self156216161567%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161579161584%_
                                                (##unchecked-structure-ref
                                                 _%self156216161567%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method161579161584%_
                                            _%object161578161583%_
                                            _%key161558%_
                                            _%value161561%_)))
                                       (let ()
                                         (declare (not safe))
                                         (let ((_%object161585161590%_
                                                (##unchecked-structure-ref
                                                 _%self156216161567%_
                                                 '1
                                                 '#f
                                                 'set!))
                                               (_%method161586161591%_
                                                (##unchecked-structure-ref
                                                 _%self156216161567%_
                                                 '9
                                                 '#f
                                                 'set!)))
                                           (_%method161586161591%_
                                            _%object161585161590%_
                                            _%key161558%_
                                            _%value161561%_))))))))
                          (_%self155240161597%_ _%self155240161524%_)
                          (_%self155240161599%_ _%self155240161597%_)
                          (_%proc161609%_ _%proc161593%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161618161623%_
                                  (##unchecked-structure-ref
                                   _%self155240161599%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161619161624%_
                                  (##unchecked-structure-ref
                                   _%self155240161599%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161619161624%_
                              _%object161618161623%_
                              _%proc161609%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161625161630%_
                                  (##unchecked-structure-ref
                                   _%self155240161599%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161626161631%_
                                  (##unchecked-structure-ref
                                   _%self155240161599%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161626161631%_
                              _%object161625161630%_
                              _%proc161609%_))))))))
            (declare (not safe))
            (##for-each __tmp172505 _%rest161494%_))
          _%h161497%_)))
    (define hash-merge!
      (lambda (_%h161477%_ . _%rest161478%_)
        (let* ((_%h161481%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161477%_)))
               (_%h161483%_ _%h161481%_))
          (declare (not safe))
          (##apply __hash-merge! _%h161483%_ _%rest161478%_))))
    (define __hash-merge-right!
      (lambda (_%h161357%_ . _%rest161358%_)
        (let ((_%h161361%_ _%h161357%_))
          (let ((__tmp172506
                 (lambda (_%hr161370%_)
                   (let* ((_%hr161373%_
                           (let ()
                             (declare (not safe))
                             (cast HashTable::interface _%hr161370%_)))
                          (_%hr161375%_ _%hr161373%_)
                          (_%self155240161388%_ _%hr161375%_)
                          (_%proc161437%_
                           (lambda (_%k161391%_ _%v161392%_)
                             (let* ((_%self156216161394%_ _%h161361%_)
                                    (_%key161397%_ _%k161391%_)
                                    (_%value161400%_ _%v161392%_)
                                    (_%self156216161404%_ _%self156216161394%_)
                                    (_%self156216161406%_
                                     _%self156216161404%_))
                               (if __DEBUG
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161422161427%_
                                            (##unchecked-structure-ref
                                             _%self156216161406%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161423161428%_
                                            (##unchecked-structure-ref
                                             _%self156216161406%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method161423161428%_
                                        _%object161422161427%_
                                        _%key161397%_
                                        _%value161400%_)))
                                   (let ()
                                     (declare (not safe))
                                     (let ((_%object161429161434%_
                                            (##unchecked-structure-ref
                                             _%self156216161406%_
                                             '1
                                             '#f
                                             'set!))
                                           (_%method161430161435%_
                                            (##unchecked-structure-ref
                                             _%self156216161406%_
                                             '9
                                             '#f
                                             'set!)))
                                       (_%method161430161435%_
                                        _%object161429161434%_
                                        _%key161397%_
                                        _%value161400%_)))))))
                          (_%self155240161441%_ _%self155240161388%_)
                          (_%self155240161443%_ _%self155240161441%_)
                          (_%proc161453%_ _%proc161437%_))
                     (if __DEBUG
                         (let ()
                           (declare (not safe))
                           (let ((_%object161462161467%_
                                  (##unchecked-structure-ref
                                   _%self155240161443%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161463161468%_
                                  (##unchecked-structure-ref
                                   _%self155240161443%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161463161468%_
                              _%object161462161467%_
                              _%proc161453%_)))
                         (let ()
                           (declare (not safe))
                           (let ((_%object161469161474%_
                                  (##unchecked-structure-ref
                                   _%self155240161443%_
                                   '1
                                   '#f
                                   'for-each))
                                 (_%method161470161475%_
                                  (##unchecked-structure-ref
                                   _%self155240161443%_
                                   '5
                                   '#f
                                   'for-each)))
                             (_%method161470161475%_
                              _%object161469161474%_
                              _%proc161453%_))))))))
            (declare (not safe))
            (##for-each __tmp172506 _%rest161358%_))
          _%h161361%_)))
    (define hash-merge-right!
      (lambda (_%h161341%_ . _%rest161342%_)
        (let* ((_%h161345%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h161341%_)))
               (_%h161347%_ _%h161345%_))
          (declare (not safe))
          (##apply __hash-merge-right! _%h161347%_ _%rest161342%_))))))
