(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1789188906)
  (begin
    (define Exception::t
      (let ((__tmp149502 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp149502 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args149420%_
        (apply make-instance Exception::t _%$args149420%_)))
    (define StackTrace::t
      (let ((__tmp149503 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp149503
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args149417%_
        (apply make-instance StackTrace::t _%$args149417%_)))
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
      (let ((__tmp149504 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp149504
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args149414%_ (apply make-instance Error::t _%$args149414%_)))
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
      (let ((__tmp149505 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp149505
         '()
         '()
         ':init!)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args149411%_
        (apply make-instance ContractViolation::t _%$args149411%_)))
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
      (let ((__tmp149506 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp149506
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args149408%_
        (apply make-instance RuntimeException::t _%$args149408%_)))
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
      (lambda (_%exn149403%_ _%continue149404%_)
        (let ((_%exn149406%_ (wrap-runtime-exception _%exn149403%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn149406%_ _%continue149404%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn149399%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn149399%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn149399%_ 'continuation))
                '#!void
                (let ((__tmp149507
                       (lambda (_%cont149401%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn149399%_
                            'continuation
                            _%cont149401%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp149507)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn149399%_))))
    (define error
      (lambda (_%message149396%_ . _%irritants149397%_)
        (raise (let ((__obj149499
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj149499
                  _%message149396%_
                  'irritants:
                  _%irritants149397%_)
                 __obj149499))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords149371%_
               _%$%ctx149366149372%_
               _%$%contract-expr149367149373%_
               _%$%value149368149374%_
               _%message149375%_)
        (let* ((_%ctx149377%_
                (if (eq? _%$%ctx149366149372%_ absent-value)
                    '#f
                    _%$%ctx149366149372%_))
               (_%contract-expr149379%_
                (if (eq? _%$%contract-expr149367149373%_ absent-value)
                    '#f
                    _%$%contract-expr149367149373%_))
               (_%value149381%_
                (if (eq? _%$%value149368149374%_ absent-value)
                    '#f
                    _%$%value149368149374%_)))
          (raise (let ((__obj149500
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj149500
                    _%message149375%_
                    'where:
                    _%ctx149377%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr149379%_
                                (cons 'value: (cons _%value149381%_ '())))))
                   __obj149500)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords149386%_ . _%args149387%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords149386%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149386%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149386%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149386%_
                  'value:
                  absent-value))
               _%args149387%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args149369149393%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args149369149393%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler149340%_ _%thunk149341%_)
        (let* ((_%handler149344%_ _%handler149340%_)
               (_%thunk149352%_ _%thunk149341%_)
               (__tmp149508
                (lambda (_%exn149361%_)
                  (let ((_%exn149363%_ (wrap-runtime-exception _%exn149361%_)))
                    (declare (not safe))
                    (_%handler149344%_ _%exn149363%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp149508 _%thunk149352%_))))
    (define with-exception-handler
      (lambda (_%handler149315%_ _%thunk149316%_)
        (if (procedure? _%handler149315%_)
            (let ((_%handler149320%_ _%handler149315%_))
              (if (procedure? _%thunk149316%_)
                  (let ((_%thunk149330%_ _%thunk149316%_))
                    (__with-exception-handler
                     _%handler149320%_
                     _%thunk149330%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149316%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler149315%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler149257%_ _%thunk149258%_)
        (let* ((_%handler149261%_ _%handler149257%_)
               (_%thunk149269%_ _%thunk149258%_)
               (__tmp149509
                (lambda (_%cont149278%_)
                  (let* ((_%handler149282%_
                          (lambda (_%exn149280%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont149278%_
                               _%handler149261%_
                               _%exn149280%_))))
                         (_%thunk149285%_ _%thunk149269%_)
                         (_%handler149290%_ _%handler149282%_)
                         (_%thunk149305%_ _%thunk149285%_))
                    (__with-exception-handler
                     _%handler149290%_
                     _%thunk149305%_)))))
          (declare (not safe))
          (##continuation-capture __tmp149509))))
    (define with-catch
      (lambda (_%handler149232%_ _%thunk149233%_)
        (if (procedure? _%handler149232%_)
            (let ((_%handler149237%_ _%handler149232%_))
              (if (procedure? _%thunk149233%_)
                  (let ((_%thunk149247%_ _%thunk149233%_))
                    (__with-catch _%handler149237%_ _%thunk149247%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149233%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler149232%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn149219%_)
        (if (or (heap-overflow-exception? _%exn149219%_)
                (stack-overflow-exception? _%exn149219%_))
            _%exn149219%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn149219%_))
                _%exn149219%_
                (if (macro-exception? _%exn149219%_)
                    (let ((_%rte149227%_
                           (let ((__obj149501
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj149501
                                _%exn149219%_
                                '2
                                '#f
                                '#f))
                             __obj149501)))
                      (let ((__tmp149510
                             (lambda (_%cont149229%_)
                               (let ((__tmp149511
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont149229%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte149227%_
                                  'continuation
                                  __tmp149511)))))
                        (declare (not safe))
                        (##continuation-capture __tmp149510))
                      _%rte149227%_)
                    _%exn149219%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj149214%_)
        (let ((_%$e149216%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj149214%_))))
          (if _%$e149216%_ _%$e149216%_ (error-exception? _%obj149214%_)))))
    (define error-message
      (lambda (_%obj149173%_)
        (let ((_%$e149209%_
               (let* ((_%obj149175%_ _%obj149173%_)
                      (_%slot149178%_ 'message)
                      (_%E149181%_ false)
                      (_%slot149186%_ _%slot149178%_)
                      (_%E149199%_ _%E149181%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj149175%_ _%slot149186%_ _%E149199%_))))
          (if _%$e149209%_
              _%$e149209%_
              (if (error-exception? _%obj149173%_)
                  (error-exception-message _%obj149173%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj149168%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149168%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149168%_ 'irritants))
            (if (error-exception? _%obj149168%_)
                (error-exception-parameters _%obj149168%_)
                '#f))))
    (define error-trace
      (lambda (_%obj149166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149166%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149166%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e149127%_ _%port149128%_)
        (let ((_%$e149150%_
               (let* ((_%obj149130%_ _%e149127%_)
                      (_%id149133%_ 'display-exception)
                      (_%id149138%_ _%id149133%_))
                 (declare (not safe))
                 (__method-ref _%obj149130%_ _%id149138%_))))
          (if _%$e149150%_
              (_%$e149150%_ _%e149127%_ _%port149128%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e149127%_ _%port149128%_))))))
    (define display-exception__0
      (lambda (_%e149159%_)
        (let ((_%port149161%_ (current-error-port)))
          (display-exception__% _%e149159%_ _%port149161%_))))
    (define display-exception
      (lambda _g149512_
        (let ((_g149513_ (let () (declare (not safe)) (##length _g149512_))))
          (cond ((let () (declare (not safe)) (##fx= _g149513_ 1))
                 (apply display-exception__0 _g149512_))
                ((let () (declare (not safe)) (##fx= _g149513_ 2))
                 (apply display-exception__% _g149512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g149512_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self149105%_ _%message149106%_ . _%rest149107%_)
        (let* ((_%self149110%_ _%self149105%_)
               (_%message149124%_
                (if (string? _%message149106%_)
                    _%message149106%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g149119149121%_)
                       (display _%message149106%_ _%$%g149119149121%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self149110%_ 'message _%message149124%_))
          (apply class-instance-init! _%self149110%_ _%rest149107%_))))
    (define Error:::init!::specialize
      (lambda (__klass149422 __method-table149423)
        (let ((__message149424
               (let ((__slot149425
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149422 'message))))
                 (if __slot149425
                     __slot149425
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self149105%_ _%message149106%_ . _%rest149107%_)
            (let* ((_%self149110%_ _%self149105%_)
                   (_%message149124%_
                    (if (string? _%message149106%_)
                        _%message149106%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g149119149121%_)
                           (display _%message149106%_ _%$%g149119149121%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149110%_
                 _%message149124%_
                 __message149424
                 '#f
                 '#f))
              (apply class-instance-init! _%self149110%_ _%rest149107%_))))))
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
      (lambda (_%self148810%_ _%port148811%_)
        (let ((_%self148814%_ _%self148810%_))
          (let ((_%tmp-port148824%_ (open-output-string))
                (_%display-error-newline148825%_
                 (> (output-port-column _%port148811%_) '0)))
            (fix-port-width! _%tmp-port148824%_)
            (let ((__tmp149514
                   (lambda ()
                     (if _%display-error-newline148825%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e148828%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148814%_ 'where))))
                       (if _%$e148828%_ (display _%$e148828%_) (display '"?")))
                     (let ((__tmp149515
                            (let ((__tmp149516
                                   (let ((_%obj148832%_ _%self148814%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj148832%_))
                                         (let ((_%obj148837%_ _%obj148832%_))
                                           (declare (not safe))
                                           (__object-class _%obj148837%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj148832%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp149516))))
                       (declare (not safe))
                       (display* '" [" __tmp149515 '"]: "))
                     (let ((__tmp149517
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148814%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp149517))
                     (let ((_%irritants148852%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148814%_ 'irritants))))
                       (if (null? _%irritants148852%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj148854%_)
                                (if (u8vector? _%obj148854%_)
                                    (let ((__tmp149518
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj148854%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp149518))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj148854%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants148852%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont148855148857%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self148814%_
                                   'continuation))))
                           (if _%$%cont148855148857%_
                               (let ((_%cont148859%_ _%$%cont148855148857%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont148859%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp149514
               current-output-port
               _%tmp-port148824%_))
            (let ((__tmp149519 (get-output-string _%tmp-port148824%_)))
              (declare (not safe))
              (##write-string __tmp149519 _%port148811%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass149426 __method-table149427)
        (let ((__message149428
               (let ((__slot149432
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'message))))
                 (if __slot149432
                     __slot149432
                     (error '"Unknown slot" 'message))))
              (__continuation149429
               (let ((__slot149433
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'continuation))))
                 (if __slot149433
                     __slot149433
                     (error '"Unknown slot" 'continuation))))
              (__irritants149430
               (let ((__slot149434
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'irritants))))
                 (if __slot149434
                     __slot149434
                     (error '"Unknown slot" 'irritants))))
              (__where149431
               (let ((__slot149435
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'where))))
                 (if __slot149435
                     __slot149435
                     (error '"Unknown slot" 'where)))))
          (lambda (_%self148810%_ _%port148811%_)
            (let ((_%self148814%_ _%self148810%_))
              (let ((_%tmp-port148824%_ (open-output-string))
                    (_%display-error-newline148825%_
                     (> (output-port-column _%port148811%_) '0)))
                (fix-port-width! _%tmp-port148824%_)
                (let ((__tmp149520
                       (lambda ()
                         (if _%display-error-newline148825%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e148828%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148814%_
                                   __where149431
                                   '#f
                                   '#f))))
                           (if _%$e148828%_
                               (display _%$e148828%_)
                               (display '"?")))
                         (let ((__tmp149521
                                (let ((__tmp149522
                                       (let ((_%obj148832%_ _%self148814%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj148832%_))
                                             (let ((_%obj148837%_
                                                    _%obj148832%_))
                                               (declare (not safe))
                                               (__object-class _%obj148837%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj148832%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp149522))))
                           (declare (not safe))
                           (display* '" [" __tmp149521 '"]: "))
                         (let ((__tmp149523
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148814%_
                                   __message149428
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp149523))
                         (let ((_%irritants148852%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148814%_
                                   __irritants149430
                                   '#f
                                   '#f))))
                           (if (null? _%irritants148852%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj148854%_)
                                    (if (u8vector? _%obj148854%_)
                                        (let ((__tmp149524
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj148854%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp149524))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj148854%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants148852%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont148855148857%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self148814%_
                                       __continuation149429
                                       '#f
                                       '#f))))
                               (if _%$%cont148855148857%_
                                   (let ((_%cont148859%_
                                          _%$%cont148855148857%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont148859%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp149520
                   current-output-port
                   _%tmp-port148824%_))
                (let ((__tmp149525 (get-output-string _%tmp-port148824%_)))
                  (declare (not safe))
                  (##write-string __tmp149525 _%port148811%_))))))))
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
      (lambda (_%self148667%_ _%port148668%_)
        (let* ((_%self148671%_ _%self148667%_)
               (_%tmp-port148681%_ (open-output-string)))
          (fix-port-width! _%tmp-port148681%_)
          (let ((__tmp149526
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self148671%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp149526 _%tmp-port148681%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont148682148684%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self148671%_ 'continuation))))
                (if _%$%cont148682148684%_
                    (let ((_%cont148686%_ _%$%cont148682148684%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port148681%_)
                      (newline _%tmp-port148681%_)
                      (display-continuation-backtrace
                       _%cont148686%_
                       _%tmp-port148681%_))
                    '#f))
              '#!void)
          (let ((__tmp149527 (get-output-string _%tmp-port148681%_)))
            (declare (not safe))
            (##write-string __tmp149527 _%port148668%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass149436 __method-table149437)
        (let ((__exception149438
               (let ((__slot149440
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149436 'exception))))
                 (if __slot149440
                     __slot149440
                     (error '"Unknown slot" 'exception))))
              (__continuation149439
               (let ((__slot149441
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149436 'continuation))))
                 (if __slot149441
                     __slot149441
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self148667%_ _%port148668%_)
            (let* ((_%self148671%_ _%self148667%_)
                   (_%tmp-port148681%_ (open-output-string)))
              (fix-port-width! _%tmp-port148681%_)
              (let ((__tmp149528
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self148671%_
                        __exception149438
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp149528 _%tmp-port148681%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont148682148684%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self148671%_
                            __continuation149439
                            '#f
                            '#f))))
                    (if _%$%cont148682148684%_
                        (let ((_%cont148686%_ _%$%cont148682148684%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port148681%_)
                          (newline _%tmp-port148681%_)
                          (display-continuation-backtrace
                           _%cont148686%_
                           _%tmp-port148681%_))
                        '#f))
                  '#!void)
              (let ((__tmp149529 (get-output-string _%tmp-port148681%_)))
                (declare (not safe))
                (##write-string __tmp149529 _%port148668%_)))))))
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
      (lambda (_%port148539%_)
        (if (macro-character-port? _%port148539%_)
            (let ((_%old-width148541%_
                   (macro-character-port-output-width _%port148539%_)))
              (macro-character-port-output-width-set!
               _%port148539%_
               (lambda (_%port148543%_) '512))
              _%old-width148541%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port148536%_ _%old-width148537%_)
        (if (macro-character-port? _%port148536%_)
            (macro-character-port-output-width-set!
             _%port148536%_
             _%old-width148537%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e148534%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e148534%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn148528%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148528%_))
            (let ((_%e148531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148528%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e148531%_))
            (macro-abandoned-mutex-exception? _%exn148528%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn148524%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148524%_))
            (let ((_%e148526%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148524%_ 'exception))))
              (macro-cfun-conversion-exception? _%e148526%_))
            (macro-cfun-conversion-exception? _%exn148524%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn148520%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148520%_))
            (let ((_%e148522%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148520%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148522%_)
                  (macro-cfun-conversion-exception-arguments _%e148522%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e148522%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148520%_)
                (macro-cfun-conversion-exception-arguments _%exn148520%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn148520%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn148516%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148516%_))
            (let ((_%e148518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148516%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148518%_)
                  (macro-cfun-conversion-exception-code _%e148518%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e148518%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148516%_)
                (macro-cfun-conversion-exception-code _%exn148516%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn148516%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn148512%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148512%_))
            (let ((_%e148514%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148512%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148514%_)
                  (macro-cfun-conversion-exception-message _%e148514%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e148514%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148512%_)
                (macro-cfun-conversion-exception-message _%exn148512%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn148512%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn148506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148506%_))
            (let ((_%e148509%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148506%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148509%_)
                  (macro-cfun-conversion-exception-procedure _%e148509%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e148509%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148506%_)
                (macro-cfun-conversion-exception-procedure _%exn148506%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn148506%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn148502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148502%_))
            (let ((_%e148504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148502%_ 'exception))))
              (macro-datum-parsing-exception? _%e148504%_))
            (macro-datum-parsing-exception? _%exn148502%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn148498%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148498%_))
            (let ((_%e148500%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148498%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148500%_)
                  (macro-datum-parsing-exception-kind _%e148500%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e148500%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148498%_)
                (macro-datum-parsing-exception-kind _%exn148498%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn148498%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn148494%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148494%_))
            (let ((_%e148496%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148494%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148496%_)
                  (macro-datum-parsing-exception-parameters _%e148496%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e148496%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148494%_)
                (macro-datum-parsing-exception-parameters _%exn148494%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn148494%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn148488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148488%_))
            (let ((_%e148491%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148488%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148491%_)
                  (macro-datum-parsing-exception-readenv _%e148491%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e148491%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148488%_)
                (macro-datum-parsing-exception-readenv _%exn148488%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn148488%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn148482%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148482%_))
            (let ((_%e148485%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148482%_ 'exception))))
              (macro-deadlock-exception? _%e148485%_))
            (macro-deadlock-exception? _%exn148482%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn148478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148478%_))
            (let ((_%e148480%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148478%_ 'exception))))
              (macro-divide-by-zero-exception? _%e148480%_))
            (macro-divide-by-zero-exception? _%exn148478%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn148474%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148474%_))
            (let ((_%e148476%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148474%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148476%_)
                  (macro-divide-by-zero-exception-arguments _%e148476%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e148476%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148474%_)
                (macro-divide-by-zero-exception-arguments _%exn148474%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn148474%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn148468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148468%_))
            (let ((_%e148471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148468%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148471%_)
                  (macro-divide-by-zero-exception-procedure _%e148471%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e148471%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148468%_)
                (macro-divide-by-zero-exception-procedure _%exn148468%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn148468%_ '())))))))
    (define error-exception?
      (lambda (_%exn148464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148464%_))
            (let ((_%e148466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148464%_ 'exception))))
              (macro-error-exception? _%e148466%_))
            (macro-error-exception? _%exn148464%_))))
    (define error-exception-message
      (lambda (_%exn148460%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148460%_))
            (let ((_%e148462%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148460%_ 'exception))))
              (if (macro-error-exception? _%e148462%_)
                  (macro-error-exception-message _%e148462%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e148462%_ '())))))
            (if (macro-error-exception? _%exn148460%_)
                (macro-error-exception-message _%exn148460%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn148460%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn148454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148454%_))
            (let ((_%e148457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148454%_ 'exception))))
              (if (macro-error-exception? _%e148457%_)
                  (macro-error-exception-parameters _%e148457%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e148457%_ '())))))
            (if (macro-error-exception? _%exn148454%_)
                (macro-error-exception-parameters _%exn148454%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn148454%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn148450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148450%_))
            (let ((_%e148452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148450%_ 'exception))))
              (macro-expression-parsing-exception? _%e148452%_))
            (macro-expression-parsing-exception? _%exn148450%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn148446%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148446%_))
            (let ((_%e148448%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148446%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148448%_)
                  (macro-expression-parsing-exception-kind _%e148448%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e148448%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148446%_)
                (macro-expression-parsing-exception-kind _%exn148446%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn148446%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn148442%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148442%_))
            (let ((_%e148444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148442%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148444%_)
                  (macro-expression-parsing-exception-parameters _%e148444%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e148444%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148442%_)
                (macro-expression-parsing-exception-parameters _%exn148442%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn148442%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn148436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148436%_))
            (let ((_%e148439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148436%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148439%_)
                  (macro-expression-parsing-exception-source _%e148439%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e148439%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148436%_)
                (macro-expression-parsing-exception-source _%exn148436%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn148436%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn148432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148432%_))
            (let ((_%e148434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148432%_ 'exception))))
              (macro-file-exists-exception? _%e148434%_))
            (macro-file-exists-exception? _%exn148432%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn148428%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148428%_))
            (let ((_%e148430%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148428%_ 'exception))))
              (if (macro-file-exists-exception? _%e148430%_)
                  (macro-file-exists-exception-arguments _%e148430%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e148430%_ '())))))
            (if (macro-file-exists-exception? _%exn148428%_)
                (macro-file-exists-exception-arguments _%exn148428%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn148428%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn148422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148422%_))
            (let ((_%e148425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148422%_ 'exception))))
              (if (macro-file-exists-exception? _%e148425%_)
                  (macro-file-exists-exception-procedure _%e148425%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e148425%_ '())))))
            (if (macro-file-exists-exception? _%exn148422%_)
                (macro-file-exists-exception-procedure _%exn148422%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn148422%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn148418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148418%_))
            (let ((_%e148420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148418%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e148420%_))
            (macro-fixnum-overflow-exception? _%exn148418%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn148414%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148414%_))
            (let ((_%e148416%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148414%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148416%_)
                  (macro-fixnum-overflow-exception-arguments _%e148416%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e148416%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148414%_)
                (macro-fixnum-overflow-exception-arguments _%exn148414%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn148414%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn148408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148408%_))
            (let ((_%e148411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148408%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148411%_)
                  (macro-fixnum-overflow-exception-procedure _%e148411%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e148411%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148408%_)
                (macro-fixnum-overflow-exception-procedure _%exn148408%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn148408%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn148402%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148402%_))
            (let ((_%e148405%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148402%_ 'exception))))
              (macro-heap-overflow-exception? _%e148405%_))
            (macro-heap-overflow-exception? _%exn148402%_))))
    (define inactive-thread-exception?
      (lambda (_%exn148398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148398%_))
            (let ((_%e148400%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148398%_ 'exception))))
              (macro-inactive-thread-exception? _%e148400%_))
            (macro-inactive-thread-exception? _%exn148398%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn148394%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148394%_))
            (let ((_%e148396%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148394%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148396%_)
                  (macro-inactive-thread-exception-arguments _%e148396%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e148396%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148394%_)
                (macro-inactive-thread-exception-arguments _%exn148394%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn148394%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn148388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148388%_))
            (let ((_%e148391%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148388%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148391%_)
                  (macro-inactive-thread-exception-procedure _%e148391%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e148391%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148388%_)
                (macro-inactive-thread-exception-procedure _%exn148388%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn148388%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn148384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148384%_))
            (let ((_%e148386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148384%_ 'exception))))
              (macro-initialized-thread-exception? _%e148386%_))
            (macro-initialized-thread-exception? _%exn148384%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn148380%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148380%_))
            (let ((_%e148382%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148380%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148382%_)
                  (macro-initialized-thread-exception-arguments _%e148382%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e148382%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148380%_)
                (macro-initialized-thread-exception-arguments _%exn148380%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn148380%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn148374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148374%_))
            (let ((_%e148377%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148374%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148377%_)
                  (macro-initialized-thread-exception-procedure _%e148377%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e148377%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148374%_)
                (macro-initialized-thread-exception-procedure _%exn148374%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn148374%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn148370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148370%_))
            (let ((_%e148372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148370%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e148372%_))
            (macro-invalid-hash-number-exception? _%exn148370%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn148366%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148366%_))
            (let ((_%e148368%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148366%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148368%_)
                  (macro-invalid-hash-number-exception-arguments _%e148368%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e148368%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148366%_)
                (macro-invalid-hash-number-exception-arguments _%exn148366%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn148366%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn148360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148360%_))
            (let ((_%e148363%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148360%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148363%_)
                  (macro-invalid-hash-number-exception-procedure _%e148363%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e148363%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148360%_)
                (macro-invalid-hash-number-exception-procedure _%exn148360%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn148360%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn148356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148356%_))
            (let ((_%e148358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148356%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e148358%_))
            (macro-invalid-utf8-encoding-exception? _%exn148356%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn148352%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148352%_))
            (let ((_%e148354%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148352%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148354%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e148354%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e148354%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148352%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn148352%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn148352%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn148346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148346%_))
            (let ((_%e148349%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148346%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148349%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e148349%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e148349%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148346%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn148346%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn148346%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn148342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148342%_))
            (let ((_%e148344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148342%_ 'exception))))
              (macro-join-timeout-exception? _%e148344%_))
            (macro-join-timeout-exception? _%exn148342%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn148338%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148338%_))
            (let ((_%e148340%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148338%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148340%_)
                  (macro-join-timeout-exception-arguments _%e148340%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e148340%_ '())))))
            (if (macro-join-timeout-exception? _%exn148338%_)
                (macro-join-timeout-exception-arguments _%exn148338%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn148338%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn148332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148332%_))
            (let ((_%e148335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148332%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148335%_)
                  (macro-join-timeout-exception-procedure _%e148335%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e148335%_ '())))))
            (if (macro-join-timeout-exception? _%exn148332%_)
                (macro-join-timeout-exception-procedure _%exn148332%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn148332%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn148328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148328%_))
            (let ((_%e148330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148328%_ 'exception))))
              (macro-keyword-expected-exception? _%e148330%_))
            (macro-keyword-expected-exception? _%exn148328%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn148324%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148324%_))
            (let ((_%e148326%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148324%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148326%_)
                  (macro-keyword-expected-exception-arguments _%e148326%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e148326%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148324%_)
                (macro-keyword-expected-exception-arguments _%exn148324%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn148324%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn148318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148318%_))
            (let ((_%e148321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148318%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148321%_)
                  (macro-keyword-expected-exception-procedure _%e148321%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e148321%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148318%_)
                (macro-keyword-expected-exception-procedure _%exn148318%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn148318%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn148314%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148314%_))
            (let ((_%e148316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148314%_ 'exception))))
              (macro-length-mismatch-exception? _%e148316%_))
            (macro-length-mismatch-exception? _%exn148314%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn148310%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148310%_))
            (let ((_%e148312%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148310%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148312%_)
                  (macro-length-mismatch-exception-arg-id _%e148312%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e148312%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148310%_)
                (macro-length-mismatch-exception-arg-id _%exn148310%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn148310%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn148306%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148306%_))
            (let ((_%e148308%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148306%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148308%_)
                  (macro-length-mismatch-exception-arguments _%e148308%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e148308%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148306%_)
                (macro-length-mismatch-exception-arguments _%exn148306%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn148306%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn148300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148300%_))
            (let ((_%e148303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148300%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148303%_)
                  (macro-length-mismatch-exception-procedure _%e148303%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e148303%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148300%_)
                (macro-length-mismatch-exception-procedure _%exn148300%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn148300%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn148296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148296%_))
            (let ((_%e148298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148296%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e148298%_))
            (macro-mailbox-receive-timeout-exception? _%exn148296%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn148292%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148292%_))
            (let ((_%e148294%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148292%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148294%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e148294%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e148294%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148292%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn148292%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn148292%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn148286%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148286%_))
            (let ((_%e148289%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148286%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148289%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e148289%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e148289%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148286%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn148286%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn148286%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn148282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148282%_))
            (let ((_%e148284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148282%_ 'exception))))
              (macro-module-not-found-exception? _%e148284%_))
            (macro-module-not-found-exception? _%exn148282%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn148278%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148278%_))
            (let ((_%e148280%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148278%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148280%_)
                  (macro-module-not-found-exception-arguments _%e148280%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e148280%_ '())))))
            (if (macro-module-not-found-exception? _%exn148278%_)
                (macro-module-not-found-exception-arguments _%exn148278%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn148278%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn148272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148272%_))
            (let ((_%e148275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148272%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148275%_)
                  (macro-module-not-found-exception-procedure _%e148275%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e148275%_ '())))))
            (if (macro-module-not-found-exception? _%exn148272%_)
                (macro-module-not-found-exception-procedure _%exn148272%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn148272%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn148266%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148266%_))
            (let ((_%e148269%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148266%_ 'exception))))
              (macro-multiple-c-return-exception? _%e148269%_))
            (macro-multiple-c-return-exception? _%exn148266%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn148262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148262%_))
            (let ((_%e148264%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148262%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e148264%_))
            (macro-no-such-file-or-directory-exception? _%exn148262%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn148258%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148258%_))
            (let ((_%e148260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148258%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148260%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e148260%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e148260%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148258%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn148258%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn148258%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn148252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148252%_))
            (let ((_%e148255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148252%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148255%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e148255%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e148255%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148252%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn148252%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn148252%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn148248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148248%_))
            (let ((_%e148250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148248%_ 'exception))))
              (macro-noncontinuable-exception? _%e148250%_))
            (macro-noncontinuable-exception? _%exn148248%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn148242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148242%_))
            (let ((_%e148245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148242%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e148245%_)
                  (macro-noncontinuable-exception-reason _%e148245%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e148245%_ '())))))
            (if (macro-noncontinuable-exception? _%exn148242%_)
                (macro-noncontinuable-exception-reason _%exn148242%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn148242%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn148238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148238%_))
            (let ((_%e148240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148238%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e148240%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn148238%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn148234%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148234%_))
            (let ((_%e148236%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148234%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148236%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e148236%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e148236%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148234%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn148234%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn148234%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn148228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148228%_))
            (let ((_%e148231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148228%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148231%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e148231%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e148231%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148228%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn148228%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn148228%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn148224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148224%_))
            (let ((_%e148226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148224%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e148226%_))
            (macro-nonprocedure-operator-exception? _%exn148224%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn148220%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148220%_))
            (let ((_%e148222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148220%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148222%_)
                  (macro-nonprocedure-operator-exception-arguments _%e148222%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e148222%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148220%_)
                (macro-nonprocedure-operator-exception-arguments _%exn148220%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn148220%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn148216%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148216%_))
            (let ((_%e148218%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148216%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148218%_)
                  (macro-nonprocedure-operator-exception-code _%e148218%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e148218%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148216%_)
                (macro-nonprocedure-operator-exception-code _%exn148216%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn148216%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn148212%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148212%_))
            (let ((_%e148214%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148212%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148214%_)
                  (macro-nonprocedure-operator-exception-operator _%e148214%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e148214%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148212%_)
                (macro-nonprocedure-operator-exception-operator _%exn148212%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn148212%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn148206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148206%_))
            (let ((_%e148209%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148206%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148209%_)
                  (macro-nonprocedure-operator-exception-rte _%e148209%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e148209%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148206%_)
                (macro-nonprocedure-operator-exception-rte _%exn148206%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn148206%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn148202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148202%_))
            (let ((_%e148204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148202%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e148204%_))
            (macro-not-in-compilation-context-exception? _%exn148202%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn148198%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148198%_))
            (let ((_%e148200%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148198%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148200%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e148200%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e148200%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148198%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn148198%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn148198%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn148192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148192%_))
            (let ((_%e148195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148192%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148195%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e148195%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e148195%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148192%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn148192%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn148192%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn148188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148188%_))
            (let ((_%e148190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148188%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e148190%_))
            (macro-number-of-arguments-limit-exception? _%exn148188%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn148184%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148184%_))
            (let ((_%e148186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148184%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148186%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e148186%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e148186%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148184%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn148184%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn148184%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn148178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148178%_))
            (let ((_%e148181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148178%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148181%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e148181%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e148181%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148178%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn148178%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn148178%_ '())))))))
    (define os-exception?
      (lambda (_%exn148174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148174%_))
            (let ((_%e148176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148174%_ 'exception))))
              (macro-os-exception? _%e148176%_))
            (macro-os-exception? _%exn148174%_))))
    (define os-exception-arguments
      (lambda (_%exn148170%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148170%_))
            (let ((_%e148172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148170%_ 'exception))))
              (if (macro-os-exception? _%e148172%_)
                  (macro-os-exception-arguments _%e148172%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e148172%_ '())))))
            (if (macro-os-exception? _%exn148170%_)
                (macro-os-exception-arguments _%exn148170%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn148170%_ '())))))))
    (define os-exception-code
      (lambda (_%exn148166%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148166%_))
            (let ((_%e148168%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148166%_ 'exception))))
              (if (macro-os-exception? _%e148168%_)
                  (macro-os-exception-code _%e148168%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e148168%_ '())))))
            (if (macro-os-exception? _%exn148166%_)
                (macro-os-exception-code _%exn148166%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn148166%_ '())))))))
    (define os-exception-message
      (lambda (_%exn148162%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148162%_))
            (let ((_%e148164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148162%_ 'exception))))
              (if (macro-os-exception? _%e148164%_)
                  (macro-os-exception-message _%e148164%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e148164%_ '())))))
            (if (macro-os-exception? _%exn148162%_)
                (macro-os-exception-message _%exn148162%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn148162%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn148156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148156%_))
            (let ((_%e148159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148156%_ 'exception))))
              (if (macro-os-exception? _%e148159%_)
                  (macro-os-exception-procedure _%e148159%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e148159%_ '())))))
            (if (macro-os-exception? _%exn148156%_)
                (macro-os-exception-procedure _%exn148156%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn148156%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn148152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148152%_))
            (let ((_%e148154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148152%_ 'exception))))
              (macro-permission-denied-exception? _%e148154%_))
            (macro-permission-denied-exception? _%exn148152%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn148148%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148148%_))
            (let ((_%e148150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148148%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148150%_)
                  (macro-permission-denied-exception-arguments _%e148150%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e148150%_ '())))))
            (if (macro-permission-denied-exception? _%exn148148%_)
                (macro-permission-denied-exception-arguments _%exn148148%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn148148%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn148142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148142%_))
            (let ((_%e148145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148142%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148145%_)
                  (macro-permission-denied-exception-procedure _%e148145%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e148145%_ '())))))
            (if (macro-permission-denied-exception? _%exn148142%_)
                (macro-permission-denied-exception-procedure _%exn148142%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn148142%_ '())))))))
    (define range-exception?
      (lambda (_%exn148138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148138%_))
            (let ((_%e148140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148138%_ 'exception))))
              (macro-range-exception? _%e148140%_))
            (macro-range-exception? _%exn148138%_))))
    (define range-exception-arg-id
      (lambda (_%exn148134%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148134%_))
            (let ((_%e148136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148134%_ 'exception))))
              (if (macro-range-exception? _%e148136%_)
                  (macro-range-exception-arg-id _%e148136%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e148136%_ '())))))
            (if (macro-range-exception? _%exn148134%_)
                (macro-range-exception-arg-id _%exn148134%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn148134%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn148130%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148130%_))
            (let ((_%e148132%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148130%_ 'exception))))
              (if (macro-range-exception? _%e148132%_)
                  (macro-range-exception-arguments _%e148132%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e148132%_ '())))))
            (if (macro-range-exception? _%exn148130%_)
                (macro-range-exception-arguments _%exn148130%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn148130%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn148124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148124%_))
            (let ((_%e148127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148124%_ 'exception))))
              (if (macro-range-exception? _%e148127%_)
                  (macro-range-exception-procedure _%e148127%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e148127%_ '())))))
            (if (macro-range-exception? _%exn148124%_)
                (macro-range-exception-procedure _%exn148124%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn148124%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn148120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148120%_))
            (let ((_%e148122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148120%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e148122%_))
            (macro-rpc-remote-error-exception? _%exn148120%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn148116%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148116%_))
            (let ((_%e148118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148116%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148118%_)
                  (macro-rpc-remote-error-exception-arguments _%e148118%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e148118%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148116%_)
                (macro-rpc-remote-error-exception-arguments _%exn148116%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn148116%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn148112%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148112%_))
            (let ((_%e148114%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148112%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148114%_)
                  (macro-rpc-remote-error-exception-message _%e148114%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e148114%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148112%_)
                (macro-rpc-remote-error-exception-message _%exn148112%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn148112%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn148106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148106%_))
            (let ((_%e148109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148106%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148109%_)
                  (macro-rpc-remote-error-exception-procedure _%e148109%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e148109%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148106%_)
                (macro-rpc-remote-error-exception-procedure _%exn148106%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn148106%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn148102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148102%_))
            (let ((_%e148104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148102%_ 'exception))))
              (macro-scheduler-exception? _%e148104%_))
            (macro-scheduler-exception? _%exn148102%_))))
    (define scheduler-exception-reason
      (lambda (_%exn148096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148096%_))
            (let ((_%e148099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148096%_ 'exception))))
              (if (macro-scheduler-exception? _%e148099%_)
                  (macro-scheduler-exception-reason _%e148099%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e148099%_ '())))))
            (if (macro-scheduler-exception? _%exn148096%_)
                (macro-scheduler-exception-reason _%exn148096%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn148096%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn148092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148092%_))
            (let ((_%e148094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148092%_ 'exception))))
              (macro-sfun-conversion-exception? _%e148094%_))
            (macro-sfun-conversion-exception? _%exn148092%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn148088%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148088%_))
            (let ((_%e148090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148088%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148090%_)
                  (macro-sfun-conversion-exception-arguments _%e148090%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e148090%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148088%_)
                (macro-sfun-conversion-exception-arguments _%exn148088%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn148088%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn148084%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148084%_))
            (let ((_%e148086%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148084%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148086%_)
                  (macro-sfun-conversion-exception-code _%e148086%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e148086%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148084%_)
                (macro-sfun-conversion-exception-code _%exn148084%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn148084%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn148080%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148080%_))
            (let ((_%e148082%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148080%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148082%_)
                  (macro-sfun-conversion-exception-message _%e148082%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e148082%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148080%_)
                (macro-sfun-conversion-exception-message _%exn148080%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn148080%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn148074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148074%_))
            (let ((_%e148077%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148074%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148077%_)
                  (macro-sfun-conversion-exception-procedure _%e148077%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e148077%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148074%_)
                (macro-sfun-conversion-exception-procedure _%exn148074%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn148074%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn148068%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148068%_))
            (let ((_%e148071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148068%_ 'exception))))
              (macro-stack-overflow-exception? _%e148071%_))
            (macro-stack-overflow-exception? _%exn148068%_))))
    (define started-thread-exception?
      (lambda (_%exn148064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148064%_))
            (let ((_%e148066%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148064%_ 'exception))))
              (macro-started-thread-exception? _%e148066%_))
            (macro-started-thread-exception? _%exn148064%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn148060%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148060%_))
            (let ((_%e148062%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148060%_ 'exception))))
              (if (macro-started-thread-exception? _%e148062%_)
                  (macro-started-thread-exception-arguments _%e148062%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e148062%_ '())))))
            (if (macro-started-thread-exception? _%exn148060%_)
                (macro-started-thread-exception-arguments _%exn148060%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn148060%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn148054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148054%_))
            (let ((_%e148057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148054%_ 'exception))))
              (if (macro-started-thread-exception? _%e148057%_)
                  (macro-started-thread-exception-procedure _%e148057%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e148057%_ '())))))
            (if (macro-started-thread-exception? _%exn148054%_)
                (macro-started-thread-exception-procedure _%exn148054%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn148054%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn148050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148050%_))
            (let ((_%e148052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148050%_ 'exception))))
              (macro-terminated-thread-exception? _%e148052%_))
            (macro-terminated-thread-exception? _%exn148050%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn148046%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148046%_))
            (let ((_%e148048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148046%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148048%_)
                  (macro-terminated-thread-exception-arguments _%e148048%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e148048%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148046%_)
                (macro-terminated-thread-exception-arguments _%exn148046%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn148046%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn148040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148040%_))
            (let ((_%e148043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148040%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148043%_)
                  (macro-terminated-thread-exception-procedure _%e148043%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e148043%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148040%_)
                (macro-terminated-thread-exception-procedure _%exn148040%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn148040%_ '())))))))
    (define type-exception?
      (lambda (_%exn148036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148036%_))
            (let ((_%e148038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148036%_ 'exception))))
              (macro-type-exception? _%e148038%_))
            (macro-type-exception? _%exn148036%_))))
    (define type-exception-arg-id
      (lambda (_%exn148032%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148032%_))
            (let ((_%e148034%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148032%_ 'exception))))
              (if (macro-type-exception? _%e148034%_)
                  (macro-type-exception-arg-id _%e148034%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e148034%_ '())))))
            (if (macro-type-exception? _%exn148032%_)
                (macro-type-exception-arg-id _%exn148032%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn148032%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn148028%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148028%_))
            (let ((_%e148030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148028%_ 'exception))))
              (if (macro-type-exception? _%e148030%_)
                  (macro-type-exception-arguments _%e148030%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e148030%_ '())))))
            (if (macro-type-exception? _%exn148028%_)
                (macro-type-exception-arguments _%exn148028%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn148028%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn148024%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148024%_))
            (let ((_%e148026%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148024%_ 'exception))))
              (if (macro-type-exception? _%e148026%_)
                  (macro-type-exception-procedure _%e148026%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e148026%_ '())))))
            (if (macro-type-exception? _%exn148024%_)
                (macro-type-exception-procedure _%exn148024%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn148024%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn148018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148018%_))
            (let ((_%e148021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148018%_ 'exception))))
              (if (macro-type-exception? _%e148021%_)
                  (macro-type-exception-type-id _%e148021%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e148021%_ '())))))
            (if (macro-type-exception? _%exn148018%_)
                (macro-type-exception-type-id _%exn148018%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn148018%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn148014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148014%_))
            (let ((_%e148016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148014%_ 'exception))))
              (macro-unbound-global-exception? _%e148016%_))
            (macro-unbound-global-exception? _%exn148014%_))))
    (define unbound-global-exception-code
      (lambda (_%exn148010%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148010%_))
            (let ((_%e148012%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148010%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148012%_)
                  (macro-unbound-global-exception-code _%e148012%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e148012%_ '())))))
            (if (macro-unbound-global-exception? _%exn148010%_)
                (macro-unbound-global-exception-code _%exn148010%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn148010%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn148006%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148006%_))
            (let ((_%e148008%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148006%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148008%_)
                  (macro-unbound-global-exception-rte _%e148008%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e148008%_ '())))))
            (if (macro-unbound-global-exception? _%exn148006%_)
                (macro-unbound-global-exception-rte _%exn148006%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn148006%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn148000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148000%_))
            (let ((_%e148003%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148000%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148003%_)
                  (macro-unbound-global-exception-variable _%e148003%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e148003%_ '())))))
            (if (macro-unbound-global-exception? _%exn148000%_)
                (macro-unbound-global-exception-variable _%exn148000%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn148000%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn147996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147996%_))
            (let ((_%e147998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147996%_ 'exception))))
              (macro-unbound-key-exception? _%e147998%_))
            (macro-unbound-key-exception? _%exn147996%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn147992%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147992%_))
            (let ((_%e147994%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147992%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147994%_)
                  (macro-unbound-key-exception-arguments _%e147994%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e147994%_ '())))))
            (if (macro-unbound-key-exception? _%exn147992%_)
                (macro-unbound-key-exception-arguments _%exn147992%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn147992%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn147986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147986%_))
            (let ((_%e147989%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147986%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147989%_)
                  (macro-unbound-key-exception-procedure _%e147989%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e147989%_ '())))))
            (if (macro-unbound-key-exception? _%exn147986%_)
                (macro-unbound-key-exception-procedure _%exn147986%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn147986%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn147982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147982%_))
            (let ((_%e147984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147982%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e147984%_))
            (macro-unbound-os-environment-variable-exception? _%exn147982%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn147978%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147978%_))
            (let ((_%e147980%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147978%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147980%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e147980%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e147980%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147978%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn147978%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn147978%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn147972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147972%_))
            (let ((_%e147975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147972%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147975%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e147975%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e147975%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147972%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn147972%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn147972%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn147968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147968%_))
            (let ((_%e147970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147968%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e147970%_))
            (macro-unbound-serial-number-exception? _%exn147968%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn147964%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147964%_))
            (let ((_%e147966%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147964%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147966%_)
                  (macro-unbound-serial-number-exception-arguments _%e147966%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e147966%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147964%_)
                (macro-unbound-serial-number-exception-arguments _%exn147964%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn147964%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn147958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147958%_))
            (let ((_%e147961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147958%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147961%_)
                  (macro-unbound-serial-number-exception-procedure _%e147961%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e147961%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147958%_)
                (macro-unbound-serial-number-exception-procedure _%exn147958%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn147958%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn147954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147954%_))
            (let ((_%e147956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147954%_ 'exception))))
              (macro-uncaught-exception? _%e147956%_))
            (macro-uncaught-exception? _%exn147954%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn147950%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147950%_))
            (let ((_%e147952%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147950%_ 'exception))))
              (if (macro-uncaught-exception? _%e147952%_)
                  (macro-uncaught-exception-arguments _%e147952%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e147952%_ '())))))
            (if (macro-uncaught-exception? _%exn147950%_)
                (macro-uncaught-exception-arguments _%exn147950%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn147950%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn147946%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147946%_))
            (let ((_%e147948%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147946%_ 'exception))))
              (if (macro-uncaught-exception? _%e147948%_)
                  (macro-uncaught-exception-procedure _%e147948%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e147948%_ '())))))
            (if (macro-uncaught-exception? _%exn147946%_)
                (macro-uncaught-exception-procedure _%exn147946%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn147946%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn147940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147940%_))
            (let ((_%e147943%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147940%_ 'exception))))
              (if (macro-uncaught-exception? _%e147943%_)
                  (macro-uncaught-exception-reason _%e147943%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e147943%_ '())))))
            (if (macro-uncaught-exception? _%exn147940%_)
                (macro-uncaught-exception-reason _%exn147940%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn147940%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn147936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147936%_))
            (let ((_%e147938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147936%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e147938%_))
            (macro-uninitialized-thread-exception? _%exn147936%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn147932%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147932%_))
            (let ((_%e147934%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147932%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147934%_)
                  (macro-uninitialized-thread-exception-arguments _%e147934%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e147934%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147932%_)
                (macro-uninitialized-thread-exception-arguments _%exn147932%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn147932%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn147926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147926%_))
            (let ((_%e147929%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147926%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147929%_)
                  (macro-uninitialized-thread-exception-procedure _%e147929%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e147929%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147926%_)
                (macro-uninitialized-thread-exception-procedure _%exn147926%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn147926%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn147922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147922%_))
            (let ((_%e147924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147922%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e147924%_))
            (macro-unknown-keyword-argument-exception? _%exn147922%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn147918%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147918%_))
            (let ((_%e147920%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147918%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147920%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e147920%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e147920%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147918%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn147918%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn147918%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn147912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147912%_))
            (let ((_%e147915%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147912%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147915%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e147915%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e147915%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147912%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn147912%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn147912%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn147908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147908%_))
            (let ((_%e147910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147908%_ 'exception))))
              (macro-unterminated-process-exception? _%e147910%_))
            (macro-unterminated-process-exception? _%exn147908%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn147904%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147904%_))
            (let ((_%e147906%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147904%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147906%_)
                  (macro-unterminated-process-exception-arguments _%e147906%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e147906%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147904%_)
                (macro-unterminated-process-exception-arguments _%exn147904%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn147904%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn147898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147898%_))
            (let ((_%e147901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147898%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147901%_)
                  (macro-unterminated-process-exception-procedure _%e147901%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e147901%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147898%_)
                (macro-unterminated-process-exception-procedure _%exn147898%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn147898%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn147894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147894%_))
            (let ((_%e147896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147894%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e147896%_))
            (macro-wrong-number-of-arguments-exception? _%exn147894%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn147890%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147890%_))
            (let ((_%e147892%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147890%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147892%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e147892%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e147892%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147890%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn147890%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn147890%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn147884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147884%_))
            (let ((_%e147887%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147884%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147887%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e147887%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e147887%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147884%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn147884%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn147884%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn147880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147880%_))
            (let ((_%e147882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147880%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e147882%_))
            (macro-wrong-number-of-values-exception? _%exn147880%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn147876%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147876%_))
            (let ((_%e147878%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147876%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147878%_)
                  (macro-wrong-number-of-values-exception-code _%e147878%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e147878%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147876%_)
                (macro-wrong-number-of-values-exception-code _%exn147876%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn147876%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn147872%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147872%_))
            (let ((_%e147874%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147872%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147874%_)
                  (macro-wrong-number-of-values-exception-rte _%e147874%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e147874%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147872%_)
                (macro-wrong-number-of-values-exception-rte _%exn147872%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn147872%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn147866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147866%_))
            (let ((_%e147869%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147866%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147869%_)
                  (macro-wrong-number-of-values-exception-vals _%e147869%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e147869%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147866%_)
                (macro-wrong-number-of-values-exception-vals _%exn147866%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn147866%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn147860%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147860%_))
            (let ((_%e147863%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147860%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e147863%_))
            (macro-wrong-processor-c-return-exception? _%exn147860%_))))))
