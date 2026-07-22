(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1784758122)
  (begin
    (define Exception::t
      (let ((__tmp149519 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp149519 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args149437%_
        (apply make-instance Exception::t _%$args149437%_)))
    (define StackTrace::t
      (let ((__tmp149520 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp149520
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args149434%_
        (apply make-instance StackTrace::t _%$args149434%_)))
    (define StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor StackTrace::t 'continuation)))
    (define StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator StackTrace::t 'continuation)))
    (define &StackTrace-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor StackTrace::t 'continuation)))
    (define &StackTrace-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator StackTrace::t 'continuation)))
    (define Error::t
      (let ((__tmp149521 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp149521
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args149431%_ (apply make-instance Error::t _%$args149431%_)))
    (define Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'message)))
    (define Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'irritants)))
    (define Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'where)))
    (define Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor Error::t 'continuation)))
    (define Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'message)))
    (define Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'irritants)))
    (define Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'where)))
    (define Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator Error::t 'continuation)))
    (define &Error-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'message)))
    (define &Error-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'irritants)))
    (define &Error-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'where)))
    (define &Error-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor Error::t 'continuation)))
    (define &Error-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'message)))
    (define &Error-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'irritants)))
    (define &Error-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'where)))
    (define &Error-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator Error::t 'continuation)))
    (define ContractViolation::t
      (let ((__tmp149522 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp149522
         '()
         '()
         ':init!)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args149428%_
        (apply make-instance ContractViolation::t _%$args149428%_)))
    (define ContractViolation-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'message)))
    (define ContractViolation-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'irritants)))
    (define ContractViolation-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'where)))
    (define ContractViolation-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor ContractViolation::t 'continuation)))
    (define ContractViolation-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'message)))
    (define ContractViolation-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'irritants)))
    (define ContractViolation-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'where)))
    (define ContractViolation-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator ContractViolation::t 'continuation)))
    (define &ContractViolation-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor ContractViolation::t 'message)))
    (define &ContractViolation-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         ContractViolation::t
         'irritants)))
    (define &ContractViolation-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor ContractViolation::t 'where)))
    (define &ContractViolation-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         ContractViolation::t
         'continuation)))
    (define &ContractViolation-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'message)))
    (define &ContractViolation-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'irritants)))
    (define &ContractViolation-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator ContractViolation::t 'where)))
    (define &ContractViolation-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         ContractViolation::t
         'continuation)))
    (define RuntimeException::t
      (let ((__tmp149523 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp149523
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args149425%_
        (apply make-instance RuntimeException::t _%$args149425%_)))
    (define RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'exception)))
    (define RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor RuntimeException::t 'continuation)))
    (define RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'exception)))
    (define RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator RuntimeException::t 'continuation)))
    (define &RuntimeException-exception
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor RuntimeException::t 'exception)))
    (define &RuntimeException-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         RuntimeException::t
         'continuation)))
    (define &RuntimeException-exception-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator RuntimeException::t 'exception)))
    (define &RuntimeException-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         RuntimeException::t
         'continuation)))
    (define gerbil-exception-handler-hook
      (lambda (_%exn149420%_ _%continue149421%_)
        (let ((_%exn149423%_ (wrap-runtime-exception _%exn149420%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn149423%_ _%continue149421%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn149416%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn149416%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn149416%_ 'continuation))
                '#!void
                (let ((__tmp149524
                       (lambda (_%cont149418%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn149416%_
                            'continuation
                            _%cont149418%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp149524)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn149416%_))))
    (define error
      (lambda (_%message149413%_ . _%irritants149414%_)
        (raise (let ((__obj149516
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj149516
                  _%message149413%_
                  'irritants:
                  _%irritants149414%_)
                 __obj149516))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords149388%_
               _%$%ctx149383149389%_
               _%$%contract-expr149384149390%_
               _%$%value149385149391%_
               _%message149392%_)
        (let* ((_%ctx149394%_
                (if (eq? _%$%ctx149383149389%_ absent-value)
                    '#f
                    _%$%ctx149383149389%_))
               (_%contract-expr149396%_
                (if (eq? _%$%contract-expr149384149390%_ absent-value)
                    '#f
                    _%$%contract-expr149384149390%_))
               (_%value149398%_
                (if (eq? _%$%value149385149391%_ absent-value)
                    '#f
                    _%$%value149385149391%_)))
          (raise (let ((__obj149517
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj149517
                    _%message149392%_
                    'where:
                    _%ctx149394%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr149396%_
                                (cons 'value: (cons _%value149398%_ '())))))
                   __obj149517)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords149403%_ . _%args149404%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords149403%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149403%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149403%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149403%_
                  'value:
                  absent-value))
               _%args149404%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args149386149410%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args149386149410%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler149357%_ _%thunk149358%_)
        (let* ((_%handler149361%_ _%handler149357%_)
               (_%thunk149369%_ _%thunk149358%_)
               (__tmp149525
                (lambda (_%exn149378%_)
                  (let ((_%exn149380%_ (wrap-runtime-exception _%exn149378%_)))
                    (declare (not safe))
                    (_%handler149361%_ _%exn149380%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp149525 _%thunk149369%_))))
    (define with-exception-handler
      (lambda (_%handler149332%_ _%thunk149333%_)
        (if (procedure? _%handler149332%_)
            (let ((_%handler149337%_ _%handler149332%_))
              (if (procedure? _%thunk149333%_)
                  (let ((_%thunk149347%_ _%thunk149333%_))
                    (__with-exception-handler
                     _%handler149337%_
                     _%thunk149347%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149333%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler149332%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler149274%_ _%thunk149275%_)
        (let* ((_%handler149278%_ _%handler149274%_)
               (_%thunk149286%_ _%thunk149275%_)
               (__tmp149526
                (lambda (_%cont149295%_)
                  (let* ((_%handler149299%_
                          (lambda (_%exn149297%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont149295%_
                               _%handler149278%_
                               _%exn149297%_))))
                         (_%thunk149302%_ _%thunk149286%_)
                         (_%handler149307%_ _%handler149299%_)
                         (_%thunk149322%_ _%thunk149302%_))
                    (__with-exception-handler
                     _%handler149307%_
                     _%thunk149322%_)))))
          (declare (not safe))
          (##continuation-capture __tmp149526))))
    (define with-catch
      (lambda (_%handler149249%_ _%thunk149250%_)
        (if (procedure? _%handler149249%_)
            (let ((_%handler149254%_ _%handler149249%_))
              (if (procedure? _%thunk149250%_)
                  (let ((_%thunk149264%_ _%thunk149250%_))
                    (__with-catch _%handler149254%_ _%thunk149264%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149250%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler149249%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn149236%_)
        (if (or (heap-overflow-exception? _%exn149236%_)
                (stack-overflow-exception? _%exn149236%_))
            _%exn149236%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn149236%_))
                _%exn149236%_
                (if (macro-exception? _%exn149236%_)
                    (let ((_%rte149244%_
                           (let ((__obj149518
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj149518
                                _%exn149236%_
                                '2
                                '#f
                                '#f))
                             __obj149518)))
                      (let ((__tmp149527
                             (lambda (_%cont149246%_)
                               (let ((__tmp149528
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont149246%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte149244%_
                                  'continuation
                                  __tmp149528)))))
                        (declare (not safe))
                        (##continuation-capture __tmp149527))
                      _%rte149244%_)
                    _%exn149236%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj149231%_)
        (let ((_%$e149233%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj149231%_))))
          (if _%$e149233%_ _%$e149233%_ (error-exception? _%obj149231%_)))))
    (define error-message
      (lambda (_%obj149190%_)
        (let ((_%$e149226%_
               (let* ((_%obj149192%_ _%obj149190%_)
                      (_%slot149195%_ 'message)
                      (_%E149198%_ false)
                      (_%slot149203%_ _%slot149195%_)
                      (_%E149216%_ _%E149198%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj149192%_ _%slot149203%_ _%E149216%_))))
          (if _%$e149226%_
              _%$e149226%_
              (if (error-exception? _%obj149190%_)
                  (error-exception-message _%obj149190%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj149185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149185%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149185%_ 'irritants))
            (if (error-exception? _%obj149185%_)
                (error-exception-parameters _%obj149185%_)
                '#f))))
    (define error-trace
      (lambda (_%obj149183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149183%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149183%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e149144%_ _%port149145%_)
        (let ((_%$e149167%_
               (let* ((_%obj149147%_ _%e149144%_)
                      (_%id149150%_ 'display-exception)
                      (_%id149155%_ _%id149150%_))
                 (declare (not safe))
                 (__method-ref _%obj149147%_ _%id149155%_))))
          (if _%$e149167%_
              (_%$e149167%_ _%e149144%_ _%port149145%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e149144%_ _%port149145%_))))))
    (define display-exception__0
      (lambda (_%e149176%_)
        (let ((_%port149178%_ (current-error-port)))
          (display-exception__% _%e149176%_ _%port149178%_))))
    (define display-exception
      (lambda _g149529_
        (let ((_g149530_ (let () (declare (not safe)) (##length _g149529_))))
          (cond ((let () (declare (not safe)) (##fx= _g149530_ 1))
                 (apply display-exception__0 _g149529_))
                ((let () (declare (not safe)) (##fx= _g149530_ 2))
                 (apply display-exception__% _g149529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g149529_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self149122%_ _%message149123%_ . _%rest149124%_)
        (let* ((_%self149127%_ _%self149122%_)
               (_%message149141%_
                (if (string? _%message149123%_)
                    _%message149123%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g149136149138%_)
                       (display _%message149123%_ _%$%g149136149138%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self149127%_ 'message _%message149141%_))
          (apply class-instance-init! _%self149127%_ _%rest149124%_))))
    (define Error:::init!::specialize
      (lambda (__klass149439 __method-table149440)
        (let ((__message149441
               (let ((__slot149442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149439 'message))))
                 (if __slot149442
                     __slot149442
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self149122%_ _%message149123%_ . _%rest149124%_)
            (let* ((_%self149127%_ _%self149122%_)
                   (_%message149141%_
                    (if (string? _%message149123%_)
                        _%message149123%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g149136149138%_)
                           (display _%message149123%_ _%$%g149136149138%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149127%_
                 _%message149141%_
                 __message149441
                 '#f
                 '#f))
              (apply class-instance-init! _%self149127%_ _%rest149124%_))))))
    (let ()
      (declare (not safe))
      (bind-specializer! Error:::init! Error:::init!::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__% Error::t ':init! Error:::init! '#f))
    (define ContractViolation:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       ContractViolation::t
       ':init!
       ContractViolation:::init!
       '#f))
    (define dump-stack-trace? (make-parameter '#f))
    (define Error::display-exception
      (lambda (_%self148827%_ _%port148828%_)
        (let ((_%self148831%_ _%self148827%_))
          (let ((_%tmp-port148841%_ (open-output-string))
                (_%display-error-newline148842%_
                 (> (output-port-column _%port148828%_) '0)))
            (fix-port-width! _%tmp-port148841%_)
            (let ((__tmp149531
                   (lambda ()
                     (if _%display-error-newline148842%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e148845%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148831%_ 'where))))
                       (if _%$e148845%_ (display _%$e148845%_) (display '"?")))
                     (let ((__tmp149532
                            (let ((__tmp149533
                                   (let ((_%obj148849%_ _%self148831%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj148849%_))
                                         (let ((_%obj148854%_ _%obj148849%_))
                                           (declare (not safe))
                                           (__object-class _%obj148854%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj148849%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp149533))))
                       (declare (not safe))
                       (display* '" [" __tmp149532 '"]: "))
                     (let ((__tmp149534
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148831%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp149534))
                     (let ((_%irritants148869%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148831%_ 'irritants))))
                       (if (null? _%irritants148869%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj148871%_)
                                (if (u8vector? _%obj148871%_)
                                    (let ((__tmp149535
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj148871%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp149535))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj148871%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants148869%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont148872148874%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self148831%_
                                   'continuation))))
                           (if _%$%cont148872148874%_
                               (let ((_%cont148876%_ _%$%cont148872148874%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont148876%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp149531
               current-output-port
               _%tmp-port148841%_))
            (let ((__tmp149536 (get-output-string _%tmp-port148841%_)))
              (declare (not safe))
              (##write-string __tmp149536 _%port148828%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass149443 __method-table149444)
        (let ((__irritants149445
               (let ((__slot149449
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149443 'irritants))))
                 (if __slot149449
                     __slot149449
                     (error '"Unknown slot" 'irritants))))
              (__where149446
               (let ((__slot149450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149443 'where))))
                 (if __slot149450
                     __slot149450
                     (error '"Unknown slot" 'where))))
              (__message149447
               (let ((__slot149451
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149443 'message))))
                 (if __slot149451
                     __slot149451
                     (error '"Unknown slot" 'message))))
              (__continuation149448
               (let ((__slot149452
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149443 'continuation))))
                 (if __slot149452
                     __slot149452
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self148827%_ _%port148828%_)
            (let ((_%self148831%_ _%self148827%_))
              (let ((_%tmp-port148841%_ (open-output-string))
                    (_%display-error-newline148842%_
                     (> (output-port-column _%port148828%_) '0)))
                (fix-port-width! _%tmp-port148841%_)
                (let ((__tmp149537
                       (lambda ()
                         (if _%display-error-newline148842%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e148845%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148831%_
                                   __where149446
                                   '#f
                                   '#f))))
                           (if _%$e148845%_
                               (display _%$e148845%_)
                               (display '"?")))
                         (let ((__tmp149538
                                (let ((__tmp149539
                                       (let ((_%obj148849%_ _%self148831%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj148849%_))
                                             (let ((_%obj148854%_
                                                    _%obj148849%_))
                                               (declare (not safe))
                                               (__object-class _%obj148854%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj148849%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp149539))))
                           (declare (not safe))
                           (display* '" [" __tmp149538 '"]: "))
                         (let ((__tmp149540
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148831%_
                                   __message149447
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp149540))
                         (let ((_%irritants148869%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148831%_
                                   __irritants149445
                                   '#f
                                   '#f))))
                           (if (null? _%irritants148869%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj148871%_)
                                    (if (u8vector? _%obj148871%_)
                                        (let ((__tmp149541
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj148871%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp149541))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj148871%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants148869%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont148872148874%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self148831%_
                                       __continuation149448
                                       '#f
                                       '#f))))
                               (if _%$%cont148872148874%_
                                   (let ((_%cont148876%_
                                          _%$%cont148872148874%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont148876%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp149537
                   current-output-port
                   _%tmp-port148841%_))
                (let ((__tmp149542 (get-output-string _%tmp-port148841%_)))
                  (declare (not safe))
                  (##write-string __tmp149542 _%port148828%_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       Error::display-exception
       Error::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       Error::t
       'display-exception
       Error::display-exception
       '#t))
    (define RuntimeException::display-exception
      (lambda (_%self148684%_ _%port148685%_)
        (let* ((_%self148688%_ _%self148684%_)
               (_%tmp-port148698%_ (open-output-string)))
          (fix-port-width! _%tmp-port148698%_)
          (let ((__tmp149543
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self148688%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp149543 _%tmp-port148698%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont148699148701%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self148688%_ 'continuation))))
                (if _%$%cont148699148701%_
                    (let ((_%cont148703%_ _%$%cont148699148701%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port148698%_)
                      (newline _%tmp-port148698%_)
                      (display-continuation-backtrace
                       _%cont148703%_
                       _%tmp-port148698%_))
                    '#f))
              '#!void)
          (let ((__tmp149544 (get-output-string _%tmp-port148698%_)))
            (declare (not safe))
            (##write-string __tmp149544 _%port148685%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass149453 __method-table149454)
        (let ((__continuation149455
               (let ((__slot149457
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149453 'continuation))))
                 (if __slot149457
                     __slot149457
                     (error '"Unknown slot" 'continuation))))
              (__exception149456
               (let ((__slot149458
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149453 'exception))))
                 (if __slot149458
                     __slot149458
                     (error '"Unknown slot" 'exception)))))
          (lambda (_%self148684%_ _%port148685%_)
            (let* ((_%self148688%_ _%self148684%_)
                   (_%tmp-port148698%_ (open-output-string)))
              (fix-port-width! _%tmp-port148698%_)
              (let ((__tmp149545
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self148688%_
                        __exception149456
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp149545 _%tmp-port148698%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont148699148701%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self148688%_
                            __continuation149455
                            '#f
                            '#f))))
                    (if _%$%cont148699148701%_
                        (let ((_%cont148703%_ _%$%cont148699148701%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port148698%_)
                          (newline _%tmp-port148698%_)
                          (display-continuation-backtrace
                           _%cont148703%_
                           _%tmp-port148698%_))
                        '#f))
                  '#!void)
              (let ((__tmp149546 (get-output-string _%tmp-port148698%_)))
                (declare (not safe))
                (##write-string __tmp149546 _%port148685%_)))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       RuntimeException::display-exception
       RuntimeException::display-exception::specialize))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       RuntimeException::t
       'display-exception
       RuntimeException::display-exception
       '#f))
    (define fix-port-width!
      (lambda (_%port148556%_)
        (if (macro-character-port? _%port148556%_)
            (let ((_%old-width148558%_
                   (macro-character-port-output-width _%port148556%_)))
              (macro-character-port-output-width-set!
               _%port148556%_
               (lambda (_%port148560%_) '512))
              _%old-width148558%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port148553%_ _%old-width148554%_)
        (if (macro-character-port? _%port148553%_)
            (macro-character-port-output-width-set!
             _%port148553%_
             _%old-width148554%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e148551%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e148551%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn148545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148545%_))
            (let ((_%e148548%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148545%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e148548%_))
            (macro-abandoned-mutex-exception? _%exn148545%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn148541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148541%_))
            (let ((_%e148543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148541%_ 'exception))))
              (macro-cfun-conversion-exception? _%e148543%_))
            (macro-cfun-conversion-exception? _%exn148541%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn148537%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148537%_))
            (let ((_%e148539%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148537%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148539%_)
                  (macro-cfun-conversion-exception-arguments _%e148539%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e148539%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148537%_)
                (macro-cfun-conversion-exception-arguments _%exn148537%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn148537%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn148533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148533%_))
            (let ((_%e148535%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148533%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148535%_)
                  (macro-cfun-conversion-exception-code _%e148535%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e148535%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148533%_)
                (macro-cfun-conversion-exception-code _%exn148533%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn148533%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn148529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148529%_))
            (let ((_%e148531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148529%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148531%_)
                  (macro-cfun-conversion-exception-message _%e148531%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e148531%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148529%_)
                (macro-cfun-conversion-exception-message _%exn148529%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn148529%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn148523%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148523%_))
            (let ((_%e148526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148523%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148526%_)
                  (macro-cfun-conversion-exception-procedure _%e148526%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e148526%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148523%_)
                (macro-cfun-conversion-exception-procedure _%exn148523%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn148523%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn148519%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148519%_))
            (let ((_%e148521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148519%_ 'exception))))
              (macro-datum-parsing-exception? _%e148521%_))
            (macro-datum-parsing-exception? _%exn148519%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn148515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148515%_))
            (let ((_%e148517%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148515%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148517%_)
                  (macro-datum-parsing-exception-kind _%e148517%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e148517%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148515%_)
                (macro-datum-parsing-exception-kind _%exn148515%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn148515%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn148511%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148511%_))
            (let ((_%e148513%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148511%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148513%_)
                  (macro-datum-parsing-exception-parameters _%e148513%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e148513%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148511%_)
                (macro-datum-parsing-exception-parameters _%exn148511%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn148511%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn148505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148505%_))
            (let ((_%e148508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148505%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148508%_)
                  (macro-datum-parsing-exception-readenv _%e148508%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e148508%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148505%_)
                (macro-datum-parsing-exception-readenv _%exn148505%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn148505%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn148499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148499%_))
            (let ((_%e148502%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148499%_ 'exception))))
              (macro-deadlock-exception? _%e148502%_))
            (macro-deadlock-exception? _%exn148499%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn148495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148495%_))
            (let ((_%e148497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148495%_ 'exception))))
              (macro-divide-by-zero-exception? _%e148497%_))
            (macro-divide-by-zero-exception? _%exn148495%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn148491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148491%_))
            (let ((_%e148493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148491%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148493%_)
                  (macro-divide-by-zero-exception-arguments _%e148493%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e148493%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148491%_)
                (macro-divide-by-zero-exception-arguments _%exn148491%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn148491%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn148485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148485%_))
            (let ((_%e148488%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148485%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148488%_)
                  (macro-divide-by-zero-exception-procedure _%e148488%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e148488%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148485%_)
                (macro-divide-by-zero-exception-procedure _%exn148485%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn148485%_ '())))))))
    (define error-exception?
      (lambda (_%exn148481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148481%_))
            (let ((_%e148483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148481%_ 'exception))))
              (macro-error-exception? _%e148483%_))
            (macro-error-exception? _%exn148481%_))))
    (define error-exception-message
      (lambda (_%exn148477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148477%_))
            (let ((_%e148479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148477%_ 'exception))))
              (if (macro-error-exception? _%e148479%_)
                  (macro-error-exception-message _%e148479%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e148479%_ '())))))
            (if (macro-error-exception? _%exn148477%_)
                (macro-error-exception-message _%exn148477%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn148477%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn148471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148471%_))
            (let ((_%e148474%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148471%_ 'exception))))
              (if (macro-error-exception? _%e148474%_)
                  (macro-error-exception-parameters _%e148474%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e148474%_ '())))))
            (if (macro-error-exception? _%exn148471%_)
                (macro-error-exception-parameters _%exn148471%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn148471%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn148467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148467%_))
            (let ((_%e148469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148467%_ 'exception))))
              (macro-expression-parsing-exception? _%e148469%_))
            (macro-expression-parsing-exception? _%exn148467%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn148463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148463%_))
            (let ((_%e148465%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148463%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148465%_)
                  (macro-expression-parsing-exception-kind _%e148465%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e148465%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148463%_)
                (macro-expression-parsing-exception-kind _%exn148463%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn148463%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn148459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148459%_))
            (let ((_%e148461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148459%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148461%_)
                  (macro-expression-parsing-exception-parameters _%e148461%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e148461%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148459%_)
                (macro-expression-parsing-exception-parameters _%exn148459%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn148459%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn148453%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148453%_))
            (let ((_%e148456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148453%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148456%_)
                  (macro-expression-parsing-exception-source _%e148456%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e148456%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148453%_)
                (macro-expression-parsing-exception-source _%exn148453%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn148453%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn148449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148449%_))
            (let ((_%e148451%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148449%_ 'exception))))
              (macro-file-exists-exception? _%e148451%_))
            (macro-file-exists-exception? _%exn148449%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn148445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148445%_))
            (let ((_%e148447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148445%_ 'exception))))
              (if (macro-file-exists-exception? _%e148447%_)
                  (macro-file-exists-exception-arguments _%e148447%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e148447%_ '())))))
            (if (macro-file-exists-exception? _%exn148445%_)
                (macro-file-exists-exception-arguments _%exn148445%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn148445%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn148439%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148439%_))
            (let ((_%e148442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148439%_ 'exception))))
              (if (macro-file-exists-exception? _%e148442%_)
                  (macro-file-exists-exception-procedure _%e148442%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e148442%_ '())))))
            (if (macro-file-exists-exception? _%exn148439%_)
                (macro-file-exists-exception-procedure _%exn148439%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn148439%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn148435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148435%_))
            (let ((_%e148437%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148435%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e148437%_))
            (macro-fixnum-overflow-exception? _%exn148435%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn148431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148431%_))
            (let ((_%e148433%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148431%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148433%_)
                  (macro-fixnum-overflow-exception-arguments _%e148433%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e148433%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148431%_)
                (macro-fixnum-overflow-exception-arguments _%exn148431%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn148431%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn148425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148425%_))
            (let ((_%e148428%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148425%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148428%_)
                  (macro-fixnum-overflow-exception-procedure _%e148428%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e148428%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148425%_)
                (macro-fixnum-overflow-exception-procedure _%exn148425%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn148425%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn148419%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148419%_))
            (let ((_%e148422%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148419%_ 'exception))))
              (macro-heap-overflow-exception? _%e148422%_))
            (macro-heap-overflow-exception? _%exn148419%_))))
    (define inactive-thread-exception?
      (lambda (_%exn148415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148415%_))
            (let ((_%e148417%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148415%_ 'exception))))
              (macro-inactive-thread-exception? _%e148417%_))
            (macro-inactive-thread-exception? _%exn148415%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn148411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148411%_))
            (let ((_%e148413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148411%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148413%_)
                  (macro-inactive-thread-exception-arguments _%e148413%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e148413%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148411%_)
                (macro-inactive-thread-exception-arguments _%exn148411%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn148411%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn148405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148405%_))
            (let ((_%e148408%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148405%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148408%_)
                  (macro-inactive-thread-exception-procedure _%e148408%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e148408%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148405%_)
                (macro-inactive-thread-exception-procedure _%exn148405%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn148405%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn148401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148401%_))
            (let ((_%e148403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148401%_ 'exception))))
              (macro-initialized-thread-exception? _%e148403%_))
            (macro-initialized-thread-exception? _%exn148401%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn148397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148397%_))
            (let ((_%e148399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148397%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148399%_)
                  (macro-initialized-thread-exception-arguments _%e148399%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e148399%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148397%_)
                (macro-initialized-thread-exception-arguments _%exn148397%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn148397%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn148391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148391%_))
            (let ((_%e148394%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148391%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148394%_)
                  (macro-initialized-thread-exception-procedure _%e148394%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e148394%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148391%_)
                (macro-initialized-thread-exception-procedure _%exn148391%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn148391%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn148387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148387%_))
            (let ((_%e148389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148387%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e148389%_))
            (macro-invalid-hash-number-exception? _%exn148387%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn148383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148383%_))
            (let ((_%e148385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148383%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148385%_)
                  (macro-invalid-hash-number-exception-arguments _%e148385%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e148385%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148383%_)
                (macro-invalid-hash-number-exception-arguments _%exn148383%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn148383%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn148377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148377%_))
            (let ((_%e148380%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148377%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148380%_)
                  (macro-invalid-hash-number-exception-procedure _%e148380%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e148380%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148377%_)
                (macro-invalid-hash-number-exception-procedure _%exn148377%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn148377%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn148373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148373%_))
            (let ((_%e148375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148373%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e148375%_))
            (macro-invalid-utf8-encoding-exception? _%exn148373%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn148369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148369%_))
            (let ((_%e148371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148369%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148371%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e148371%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e148371%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148369%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn148369%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn148369%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn148363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148363%_))
            (let ((_%e148366%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148363%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148366%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e148366%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e148366%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148363%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn148363%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn148363%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn148359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148359%_))
            (let ((_%e148361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148359%_ 'exception))))
              (macro-join-timeout-exception? _%e148361%_))
            (macro-join-timeout-exception? _%exn148359%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn148355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148355%_))
            (let ((_%e148357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148355%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148357%_)
                  (macro-join-timeout-exception-arguments _%e148357%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e148357%_ '())))))
            (if (macro-join-timeout-exception? _%exn148355%_)
                (macro-join-timeout-exception-arguments _%exn148355%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn148355%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn148349%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148349%_))
            (let ((_%e148352%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148349%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148352%_)
                  (macro-join-timeout-exception-procedure _%e148352%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e148352%_ '())))))
            (if (macro-join-timeout-exception? _%exn148349%_)
                (macro-join-timeout-exception-procedure _%exn148349%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn148349%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn148345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148345%_))
            (let ((_%e148347%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148345%_ 'exception))))
              (macro-keyword-expected-exception? _%e148347%_))
            (macro-keyword-expected-exception? _%exn148345%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn148341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148341%_))
            (let ((_%e148343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148341%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148343%_)
                  (macro-keyword-expected-exception-arguments _%e148343%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e148343%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148341%_)
                (macro-keyword-expected-exception-arguments _%exn148341%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn148341%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn148335%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148335%_))
            (let ((_%e148338%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148335%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148338%_)
                  (macro-keyword-expected-exception-procedure _%e148338%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e148338%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148335%_)
                (macro-keyword-expected-exception-procedure _%exn148335%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn148335%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn148331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148331%_))
            (let ((_%e148333%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148331%_ 'exception))))
              (macro-length-mismatch-exception? _%e148333%_))
            (macro-length-mismatch-exception? _%exn148331%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn148327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148327%_))
            (let ((_%e148329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148327%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148329%_)
                  (macro-length-mismatch-exception-arg-id _%e148329%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e148329%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148327%_)
                (macro-length-mismatch-exception-arg-id _%exn148327%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn148327%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn148323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148323%_))
            (let ((_%e148325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148323%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148325%_)
                  (macro-length-mismatch-exception-arguments _%e148325%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e148325%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148323%_)
                (macro-length-mismatch-exception-arguments _%exn148323%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn148323%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn148317%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148317%_))
            (let ((_%e148320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148317%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148320%_)
                  (macro-length-mismatch-exception-procedure _%e148320%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e148320%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148317%_)
                (macro-length-mismatch-exception-procedure _%exn148317%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn148317%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn148313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148313%_))
            (let ((_%e148315%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148313%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e148315%_))
            (macro-mailbox-receive-timeout-exception? _%exn148313%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn148309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148309%_))
            (let ((_%e148311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148309%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148311%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e148311%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e148311%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148309%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn148309%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn148309%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn148303%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148303%_))
            (let ((_%e148306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148303%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148306%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e148306%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e148306%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148303%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn148303%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn148303%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn148299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148299%_))
            (let ((_%e148301%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148299%_ 'exception))))
              (macro-module-not-found-exception? _%e148301%_))
            (macro-module-not-found-exception? _%exn148299%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn148295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148295%_))
            (let ((_%e148297%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148295%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148297%_)
                  (macro-module-not-found-exception-arguments _%e148297%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e148297%_ '())))))
            (if (macro-module-not-found-exception? _%exn148295%_)
                (macro-module-not-found-exception-arguments _%exn148295%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn148295%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn148289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148289%_))
            (let ((_%e148292%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148289%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148292%_)
                  (macro-module-not-found-exception-procedure _%e148292%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e148292%_ '())))))
            (if (macro-module-not-found-exception? _%exn148289%_)
                (macro-module-not-found-exception-procedure _%exn148289%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn148289%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn148283%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148283%_))
            (let ((_%e148286%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148283%_ 'exception))))
              (macro-multiple-c-return-exception? _%e148286%_))
            (macro-multiple-c-return-exception? _%exn148283%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn148279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148279%_))
            (let ((_%e148281%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148279%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e148281%_))
            (macro-no-such-file-or-directory-exception? _%exn148279%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn148275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148275%_))
            (let ((_%e148277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148275%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148277%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e148277%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e148277%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148275%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn148275%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn148275%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn148269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148269%_))
            (let ((_%e148272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148269%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148272%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e148272%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e148272%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148269%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn148269%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn148269%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn148265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148265%_))
            (let ((_%e148267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148265%_ 'exception))))
              (macro-noncontinuable-exception? _%e148267%_))
            (macro-noncontinuable-exception? _%exn148265%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn148259%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148259%_))
            (let ((_%e148262%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148259%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e148262%_)
                  (macro-noncontinuable-exception-reason _%e148262%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e148262%_ '())))))
            (if (macro-noncontinuable-exception? _%exn148259%_)
                (macro-noncontinuable-exception-reason _%exn148259%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn148259%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn148255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148255%_))
            (let ((_%e148257%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148255%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e148257%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn148255%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn148251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148251%_))
            (let ((_%e148253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148251%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148253%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e148253%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e148253%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148251%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn148251%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn148251%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn148245%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148245%_))
            (let ((_%e148248%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148245%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148248%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e148248%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e148248%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148245%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn148245%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn148245%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn148241%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148241%_))
            (let ((_%e148243%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148241%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e148243%_))
            (macro-nonprocedure-operator-exception? _%exn148241%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn148237%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148237%_))
            (let ((_%e148239%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148237%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148239%_)
                  (macro-nonprocedure-operator-exception-arguments _%e148239%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e148239%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148237%_)
                (macro-nonprocedure-operator-exception-arguments _%exn148237%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn148237%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn148233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148233%_))
            (let ((_%e148235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148233%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148235%_)
                  (macro-nonprocedure-operator-exception-code _%e148235%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e148235%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148233%_)
                (macro-nonprocedure-operator-exception-code _%exn148233%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn148233%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn148229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148229%_))
            (let ((_%e148231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148229%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148231%_)
                  (macro-nonprocedure-operator-exception-operator _%e148231%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e148231%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148229%_)
                (macro-nonprocedure-operator-exception-operator _%exn148229%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn148229%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn148223%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148223%_))
            (let ((_%e148226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148223%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148226%_)
                  (macro-nonprocedure-operator-exception-rte _%e148226%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e148226%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148223%_)
                (macro-nonprocedure-operator-exception-rte _%exn148223%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn148223%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn148219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148219%_))
            (let ((_%e148221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148219%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e148221%_))
            (macro-not-in-compilation-context-exception? _%exn148219%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn148215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148215%_))
            (let ((_%e148217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148215%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148217%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e148217%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e148217%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148215%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn148215%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn148215%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn148209%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148209%_))
            (let ((_%e148212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148209%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148212%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e148212%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e148212%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148209%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn148209%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn148209%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn148205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148205%_))
            (let ((_%e148207%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148205%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e148207%_))
            (macro-number-of-arguments-limit-exception? _%exn148205%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn148201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148201%_))
            (let ((_%e148203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148201%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148203%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e148203%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e148203%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148201%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn148201%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn148201%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn148195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148195%_))
            (let ((_%e148198%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148195%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148198%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e148198%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e148198%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148195%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn148195%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn148195%_ '())))))))
    (define os-exception?
      (lambda (_%exn148191%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148191%_))
            (let ((_%e148193%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148191%_ 'exception))))
              (macro-os-exception? _%e148193%_))
            (macro-os-exception? _%exn148191%_))))
    (define os-exception-arguments
      (lambda (_%exn148187%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148187%_))
            (let ((_%e148189%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148187%_ 'exception))))
              (if (macro-os-exception? _%e148189%_)
                  (macro-os-exception-arguments _%e148189%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e148189%_ '())))))
            (if (macro-os-exception? _%exn148187%_)
                (macro-os-exception-arguments _%exn148187%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn148187%_ '())))))))
    (define os-exception-code
      (lambda (_%exn148183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148183%_))
            (let ((_%e148185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148183%_ 'exception))))
              (if (macro-os-exception? _%e148185%_)
                  (macro-os-exception-code _%e148185%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e148185%_ '())))))
            (if (macro-os-exception? _%exn148183%_)
                (macro-os-exception-code _%exn148183%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn148183%_ '())))))))
    (define os-exception-message
      (lambda (_%exn148179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148179%_))
            (let ((_%e148181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148179%_ 'exception))))
              (if (macro-os-exception? _%e148181%_)
                  (macro-os-exception-message _%e148181%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e148181%_ '())))))
            (if (macro-os-exception? _%exn148179%_)
                (macro-os-exception-message _%exn148179%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn148179%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn148173%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148173%_))
            (let ((_%e148176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148173%_ 'exception))))
              (if (macro-os-exception? _%e148176%_)
                  (macro-os-exception-procedure _%e148176%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e148176%_ '())))))
            (if (macro-os-exception? _%exn148173%_)
                (macro-os-exception-procedure _%exn148173%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn148173%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn148169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148169%_))
            (let ((_%e148171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148169%_ 'exception))))
              (macro-permission-denied-exception? _%e148171%_))
            (macro-permission-denied-exception? _%exn148169%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn148165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148165%_))
            (let ((_%e148167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148165%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148167%_)
                  (macro-permission-denied-exception-arguments _%e148167%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e148167%_ '())))))
            (if (macro-permission-denied-exception? _%exn148165%_)
                (macro-permission-denied-exception-arguments _%exn148165%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn148165%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn148159%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148159%_))
            (let ((_%e148162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148159%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148162%_)
                  (macro-permission-denied-exception-procedure _%e148162%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e148162%_ '())))))
            (if (macro-permission-denied-exception? _%exn148159%_)
                (macro-permission-denied-exception-procedure _%exn148159%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn148159%_ '())))))))
    (define range-exception?
      (lambda (_%exn148155%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148155%_))
            (let ((_%e148157%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148155%_ 'exception))))
              (macro-range-exception? _%e148157%_))
            (macro-range-exception? _%exn148155%_))))
    (define range-exception-arg-id
      (lambda (_%exn148151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148151%_))
            (let ((_%e148153%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148151%_ 'exception))))
              (if (macro-range-exception? _%e148153%_)
                  (macro-range-exception-arg-id _%e148153%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e148153%_ '())))))
            (if (macro-range-exception? _%exn148151%_)
                (macro-range-exception-arg-id _%exn148151%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn148151%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn148147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148147%_))
            (let ((_%e148149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148147%_ 'exception))))
              (if (macro-range-exception? _%e148149%_)
                  (macro-range-exception-arguments _%e148149%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e148149%_ '())))))
            (if (macro-range-exception? _%exn148147%_)
                (macro-range-exception-arguments _%exn148147%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn148147%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn148141%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148141%_))
            (let ((_%e148144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148141%_ 'exception))))
              (if (macro-range-exception? _%e148144%_)
                  (macro-range-exception-procedure _%e148144%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e148144%_ '())))))
            (if (macro-range-exception? _%exn148141%_)
                (macro-range-exception-procedure _%exn148141%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn148141%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn148137%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148137%_))
            (let ((_%e148139%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148137%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e148139%_))
            (macro-rpc-remote-error-exception? _%exn148137%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn148133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148133%_))
            (let ((_%e148135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148133%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148135%_)
                  (macro-rpc-remote-error-exception-arguments _%e148135%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e148135%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148133%_)
                (macro-rpc-remote-error-exception-arguments _%exn148133%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn148133%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn148129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148129%_))
            (let ((_%e148131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148129%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148131%_)
                  (macro-rpc-remote-error-exception-message _%e148131%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e148131%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148129%_)
                (macro-rpc-remote-error-exception-message _%exn148129%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn148129%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn148123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148123%_))
            (let ((_%e148126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148123%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148126%_)
                  (macro-rpc-remote-error-exception-procedure _%e148126%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e148126%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148123%_)
                (macro-rpc-remote-error-exception-procedure _%exn148123%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn148123%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn148119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148119%_))
            (let ((_%e148121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148119%_ 'exception))))
              (macro-scheduler-exception? _%e148121%_))
            (macro-scheduler-exception? _%exn148119%_))))
    (define scheduler-exception-reason
      (lambda (_%exn148113%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148113%_))
            (let ((_%e148116%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148113%_ 'exception))))
              (if (macro-scheduler-exception? _%e148116%_)
                  (macro-scheduler-exception-reason _%e148116%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e148116%_ '())))))
            (if (macro-scheduler-exception? _%exn148113%_)
                (macro-scheduler-exception-reason _%exn148113%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn148113%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn148109%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148109%_))
            (let ((_%e148111%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148109%_ 'exception))))
              (macro-sfun-conversion-exception? _%e148111%_))
            (macro-sfun-conversion-exception? _%exn148109%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn148105%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148105%_))
            (let ((_%e148107%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148105%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148107%_)
                  (macro-sfun-conversion-exception-arguments _%e148107%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e148107%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148105%_)
                (macro-sfun-conversion-exception-arguments _%exn148105%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn148105%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn148101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148101%_))
            (let ((_%e148103%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148101%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148103%_)
                  (macro-sfun-conversion-exception-code _%e148103%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e148103%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148101%_)
                (macro-sfun-conversion-exception-code _%exn148101%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn148101%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn148097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148097%_))
            (let ((_%e148099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148097%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148099%_)
                  (macro-sfun-conversion-exception-message _%e148099%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e148099%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148097%_)
                (macro-sfun-conversion-exception-message _%exn148097%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn148097%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn148091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148091%_))
            (let ((_%e148094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148091%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148094%_)
                  (macro-sfun-conversion-exception-procedure _%e148094%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e148094%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148091%_)
                (macro-sfun-conversion-exception-procedure _%exn148091%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn148091%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn148085%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148085%_))
            (let ((_%e148088%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148085%_ 'exception))))
              (macro-stack-overflow-exception? _%e148088%_))
            (macro-stack-overflow-exception? _%exn148085%_))))
    (define started-thread-exception?
      (lambda (_%exn148081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148081%_))
            (let ((_%e148083%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148081%_ 'exception))))
              (macro-started-thread-exception? _%e148083%_))
            (macro-started-thread-exception? _%exn148081%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn148077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148077%_))
            (let ((_%e148079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148077%_ 'exception))))
              (if (macro-started-thread-exception? _%e148079%_)
                  (macro-started-thread-exception-arguments _%e148079%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e148079%_ '())))))
            (if (macro-started-thread-exception? _%exn148077%_)
                (macro-started-thread-exception-arguments _%exn148077%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn148077%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn148071%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148071%_))
            (let ((_%e148074%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148071%_ 'exception))))
              (if (macro-started-thread-exception? _%e148074%_)
                  (macro-started-thread-exception-procedure _%e148074%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e148074%_ '())))))
            (if (macro-started-thread-exception? _%exn148071%_)
                (macro-started-thread-exception-procedure _%exn148071%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn148071%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn148067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148067%_))
            (let ((_%e148069%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148067%_ 'exception))))
              (macro-terminated-thread-exception? _%e148069%_))
            (macro-terminated-thread-exception? _%exn148067%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn148063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148063%_))
            (let ((_%e148065%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148063%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148065%_)
                  (macro-terminated-thread-exception-arguments _%e148065%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e148065%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148063%_)
                (macro-terminated-thread-exception-arguments _%exn148063%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn148063%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn148057%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148057%_))
            (let ((_%e148060%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148057%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148060%_)
                  (macro-terminated-thread-exception-procedure _%e148060%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e148060%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148057%_)
                (macro-terminated-thread-exception-procedure _%exn148057%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn148057%_ '())))))))
    (define type-exception?
      (lambda (_%exn148053%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148053%_))
            (let ((_%e148055%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148053%_ 'exception))))
              (macro-type-exception? _%e148055%_))
            (macro-type-exception? _%exn148053%_))))
    (define type-exception-arg-id
      (lambda (_%exn148049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148049%_))
            (let ((_%e148051%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148049%_ 'exception))))
              (if (macro-type-exception? _%e148051%_)
                  (macro-type-exception-arg-id _%e148051%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e148051%_ '())))))
            (if (macro-type-exception? _%exn148049%_)
                (macro-type-exception-arg-id _%exn148049%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn148049%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn148045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148045%_))
            (let ((_%e148047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148045%_ 'exception))))
              (if (macro-type-exception? _%e148047%_)
                  (macro-type-exception-arguments _%e148047%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e148047%_ '())))))
            (if (macro-type-exception? _%exn148045%_)
                (macro-type-exception-arguments _%exn148045%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn148045%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn148041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148041%_))
            (let ((_%e148043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148041%_ 'exception))))
              (if (macro-type-exception? _%e148043%_)
                  (macro-type-exception-procedure _%e148043%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e148043%_ '())))))
            (if (macro-type-exception? _%exn148041%_)
                (macro-type-exception-procedure _%exn148041%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn148041%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn148035%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148035%_))
            (let ((_%e148038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148035%_ 'exception))))
              (if (macro-type-exception? _%e148038%_)
                  (macro-type-exception-type-id _%e148038%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e148038%_ '())))))
            (if (macro-type-exception? _%exn148035%_)
                (macro-type-exception-type-id _%exn148035%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn148035%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn148031%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148031%_))
            (let ((_%e148033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148031%_ 'exception))))
              (macro-unbound-global-exception? _%e148033%_))
            (macro-unbound-global-exception? _%exn148031%_))))
    (define unbound-global-exception-code
      (lambda (_%exn148027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148027%_))
            (let ((_%e148029%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148027%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148029%_)
                  (macro-unbound-global-exception-code _%e148029%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e148029%_ '())))))
            (if (macro-unbound-global-exception? _%exn148027%_)
                (macro-unbound-global-exception-code _%exn148027%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn148027%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn148023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148023%_))
            (let ((_%e148025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148023%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148025%_)
                  (macro-unbound-global-exception-rte _%e148025%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e148025%_ '())))))
            (if (macro-unbound-global-exception? _%exn148023%_)
                (macro-unbound-global-exception-rte _%exn148023%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn148023%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn148017%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148017%_))
            (let ((_%e148020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148017%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148020%_)
                  (macro-unbound-global-exception-variable _%e148020%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e148020%_ '())))))
            (if (macro-unbound-global-exception? _%exn148017%_)
                (macro-unbound-global-exception-variable _%exn148017%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn148017%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn148013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148013%_))
            (let ((_%e148015%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148013%_ 'exception))))
              (macro-unbound-key-exception? _%e148015%_))
            (macro-unbound-key-exception? _%exn148013%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn148009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148009%_))
            (let ((_%e148011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148009%_ 'exception))))
              (if (macro-unbound-key-exception? _%e148011%_)
                  (macro-unbound-key-exception-arguments _%e148011%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e148011%_ '())))))
            (if (macro-unbound-key-exception? _%exn148009%_)
                (macro-unbound-key-exception-arguments _%exn148009%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn148009%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn148003%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148003%_))
            (let ((_%e148006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148003%_ 'exception))))
              (if (macro-unbound-key-exception? _%e148006%_)
                  (macro-unbound-key-exception-procedure _%e148006%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e148006%_ '())))))
            (if (macro-unbound-key-exception? _%exn148003%_)
                (macro-unbound-key-exception-procedure _%exn148003%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn148003%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn147999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147999%_))
            (let ((_%e148001%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147999%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e148001%_))
            (macro-unbound-os-environment-variable-exception? _%exn147999%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn147995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147995%_))
            (let ((_%e147997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147995%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147997%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e147997%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e147997%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147995%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn147995%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn147995%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn147989%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147989%_))
            (let ((_%e147992%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147989%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147992%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e147992%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e147992%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147989%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn147989%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn147989%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn147985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147985%_))
            (let ((_%e147987%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147985%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e147987%_))
            (macro-unbound-serial-number-exception? _%exn147985%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn147981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147981%_))
            (let ((_%e147983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147981%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147983%_)
                  (macro-unbound-serial-number-exception-arguments _%e147983%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e147983%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147981%_)
                (macro-unbound-serial-number-exception-arguments _%exn147981%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn147981%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn147975%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147975%_))
            (let ((_%e147978%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147975%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147978%_)
                  (macro-unbound-serial-number-exception-procedure _%e147978%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e147978%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147975%_)
                (macro-unbound-serial-number-exception-procedure _%exn147975%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn147975%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn147971%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147971%_))
            (let ((_%e147973%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147971%_ 'exception))))
              (macro-uncaught-exception? _%e147973%_))
            (macro-uncaught-exception? _%exn147971%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn147967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147967%_))
            (let ((_%e147969%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147967%_ 'exception))))
              (if (macro-uncaught-exception? _%e147969%_)
                  (macro-uncaught-exception-arguments _%e147969%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e147969%_ '())))))
            (if (macro-uncaught-exception? _%exn147967%_)
                (macro-uncaught-exception-arguments _%exn147967%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn147967%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn147963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147963%_))
            (let ((_%e147965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147963%_ 'exception))))
              (if (macro-uncaught-exception? _%e147965%_)
                  (macro-uncaught-exception-procedure _%e147965%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e147965%_ '())))))
            (if (macro-uncaught-exception? _%exn147963%_)
                (macro-uncaught-exception-procedure _%exn147963%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn147963%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn147957%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147957%_))
            (let ((_%e147960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147957%_ 'exception))))
              (if (macro-uncaught-exception? _%e147960%_)
                  (macro-uncaught-exception-reason _%e147960%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e147960%_ '())))))
            (if (macro-uncaught-exception? _%exn147957%_)
                (macro-uncaught-exception-reason _%exn147957%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn147957%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn147953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147953%_))
            (let ((_%e147955%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147953%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e147955%_))
            (macro-uninitialized-thread-exception? _%exn147953%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn147949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147949%_))
            (let ((_%e147951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147949%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147951%_)
                  (macro-uninitialized-thread-exception-arguments _%e147951%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e147951%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147949%_)
                (macro-uninitialized-thread-exception-arguments _%exn147949%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn147949%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn147943%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147943%_))
            (let ((_%e147946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147943%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147946%_)
                  (macro-uninitialized-thread-exception-procedure _%e147946%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e147946%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147943%_)
                (macro-uninitialized-thread-exception-procedure _%exn147943%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn147943%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn147939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147939%_))
            (let ((_%e147941%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147939%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e147941%_))
            (macro-unknown-keyword-argument-exception? _%exn147939%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn147935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147935%_))
            (let ((_%e147937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147935%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147937%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e147937%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e147937%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147935%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn147935%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn147935%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn147929%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147929%_))
            (let ((_%e147932%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147929%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147932%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e147932%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e147932%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147929%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn147929%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn147929%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn147925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147925%_))
            (let ((_%e147927%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147925%_ 'exception))))
              (macro-unterminated-process-exception? _%e147927%_))
            (macro-unterminated-process-exception? _%exn147925%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn147921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147921%_))
            (let ((_%e147923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147921%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147923%_)
                  (macro-unterminated-process-exception-arguments _%e147923%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e147923%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147921%_)
                (macro-unterminated-process-exception-arguments _%exn147921%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn147921%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn147915%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147915%_))
            (let ((_%e147918%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147915%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147918%_)
                  (macro-unterminated-process-exception-procedure _%e147918%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e147918%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147915%_)
                (macro-unterminated-process-exception-procedure _%exn147915%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn147915%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn147911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147911%_))
            (let ((_%e147913%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147911%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e147913%_))
            (macro-wrong-number-of-arguments-exception? _%exn147911%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn147907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147907%_))
            (let ((_%e147909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147907%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147909%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e147909%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e147909%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147907%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn147907%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn147907%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn147901%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147901%_))
            (let ((_%e147904%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147901%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147904%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e147904%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e147904%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147901%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn147901%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn147901%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn147897%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147897%_))
            (let ((_%e147899%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147897%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e147899%_))
            (macro-wrong-number-of-values-exception? _%exn147897%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn147893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147893%_))
            (let ((_%e147895%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147893%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147895%_)
                  (macro-wrong-number-of-values-exception-code _%e147895%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e147895%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147893%_)
                (macro-wrong-number-of-values-exception-code _%exn147893%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn147893%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn147889%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147889%_))
            (let ((_%e147891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147889%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147891%_)
                  (macro-wrong-number-of-values-exception-rte _%e147891%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e147891%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147889%_)
                (macro-wrong-number-of-values-exception-rte _%exn147889%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn147889%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn147883%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147883%_))
            (let ((_%e147886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147883%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147886%_)
                  (macro-wrong-number-of-values-exception-vals _%e147886%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e147886%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147883%_)
                (macro-wrong-number-of-values-exception-vals _%exn147883%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn147883%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn147877%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147877%_))
            (let ((_%e147880%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147877%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e147880%_))
            (macro-wrong-processor-c-return-exception? _%exn147877%_))))))
