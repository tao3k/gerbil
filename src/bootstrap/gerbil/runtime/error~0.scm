(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1784461441)
  (begin
    (define Exception::t
      (let ((__tmp149492 (list)))
        (declare (not safe))
        (__make-class-type 'Exception::t 'Exception __tmp149492 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args149410%_
        (apply make-instance Exception::t _%$args149410%_)))
    (define StackTrace::t
      (let ((__tmp149493 (list)))
        (declare (not safe))
        (__make-class-type
         'StackTrace::t
         'StackTrace
         __tmp149493
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args149407%_
        (apply make-instance StackTrace::t _%$args149407%_)))
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
      (let ((__tmp149494 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'Error::t
         'Error
         __tmp149494
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args149404%_ (apply make-instance Error::t _%$args149404%_)))
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
      (let ((__tmp149495 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp149495
         '()
         '()
         ':init!)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args149401%_
        (apply make-instance ContractViolation::t _%$args149401%_)))
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
      (let ((__tmp149496 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (__make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp149496
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args149398%_
        (apply make-instance RuntimeException::t _%$args149398%_)))
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
      (lambda (_%exn149393%_ _%continue149394%_)
        (let ((_%exn149396%_ (wrap-runtime-exception _%exn149393%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn149396%_ _%continue149394%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn149389%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn149389%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn149389%_ 'continuation))
                '#!void
                (let ((__tmp149497
                       (lambda (_%cont149391%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn149389%_
                            'continuation
                            _%cont149391%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp149497)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn149389%_))))
    (define error
      (lambda (_%message149386%_ . _%irritants149387%_)
        (raise (let ((__obj149489
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj149489
                  _%message149386%_
                  'irritants:
                  _%irritants149387%_)
                 __obj149489))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords149361%_
               _%$%ctx149356149362%_
               _%$%contract-expr149357149363%_
               _%$%value149358149364%_
               _%message149365%_)
        (let* ((_%ctx149367%_
                (if (eq? _%$%ctx149356149362%_ absent-value)
                    '#f
                    _%$%ctx149356149362%_))
               (_%contract-expr149369%_
                (if (eq? _%$%contract-expr149357149363%_ absent-value)
                    '#f
                    _%$%contract-expr149357149363%_))
               (_%value149371%_
                (if (eq? _%$%value149358149364%_ absent-value)
                    '#f
                    _%$%value149358149364%_)))
          (raise (let ((__obj149490
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj149490
                    _%message149365%_
                    'where:
                    _%ctx149367%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr149369%_
                                (cons 'value: (cons _%value149371%_ '())))))
                   __obj149490)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords149376%_ . _%args149377%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords149376%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149376%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149376%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149376%_
                  'value:
                  absent-value))
               _%args149377%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args149359149383%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args149359149383%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler149330%_ _%thunk149331%_)
        (let* ((_%handler149334%_ _%handler149330%_)
               (_%thunk149342%_ _%thunk149331%_)
               (__tmp149498
                (lambda (_%exn149351%_)
                  (let ((_%exn149353%_ (wrap-runtime-exception _%exn149351%_)))
                    (declare (not safe))
                    (_%handler149334%_ _%exn149353%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp149498 _%thunk149342%_))))
    (define with-exception-handler
      (lambda (_%handler149305%_ _%thunk149306%_)
        (if (procedure? _%handler149305%_)
            (let ((_%handler149310%_ _%handler149305%_))
              (if (procedure? _%thunk149306%_)
                  (let ((_%thunk149320%_ _%thunk149306%_))
                    (__with-exception-handler
                     _%handler149310%_
                     _%thunk149320%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149306%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler149305%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler149247%_ _%thunk149248%_)
        (let* ((_%handler149251%_ _%handler149247%_)
               (_%thunk149259%_ _%thunk149248%_)
               (__tmp149499
                (lambda (_%cont149268%_)
                  (let* ((_%handler149272%_
                          (lambda (_%exn149270%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont149268%_
                               _%handler149251%_
                               _%exn149270%_))))
                         (_%thunk149275%_ _%thunk149259%_)
                         (_%handler149280%_ _%handler149272%_)
                         (_%thunk149295%_ _%thunk149275%_))
                    (__with-exception-handler
                     _%handler149280%_
                     _%thunk149295%_)))))
          (declare (not safe))
          (##continuation-capture __tmp149499))))
    (define with-catch
      (lambda (_%handler149222%_ _%thunk149223%_)
        (if (procedure? _%handler149222%_)
            (let ((_%handler149227%_ _%handler149222%_))
              (if (procedure? _%thunk149223%_)
                  (let ((_%thunk149237%_ _%thunk149223%_))
                    (__with-catch _%handler149227%_ _%thunk149237%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk149223%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler149222%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn149209%_)
        (if (or (heap-overflow-exception? _%exn149209%_)
                (stack-overflow-exception? _%exn149209%_))
            _%exn149209%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn149209%_))
                _%exn149209%_
                (if (macro-exception? _%exn149209%_)
                    (let ((_%rte149217%_
                           (let ((__obj149491
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj149491
                                _%exn149209%_
                                '2
                                '#f
                                '#f))
                             __obj149491)))
                      (let ((__tmp149500
                             (lambda (_%cont149219%_)
                               (let ((__tmp149501
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont149219%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte149217%_
                                  'continuation
                                  __tmp149501)))))
                        (declare (not safe))
                        (##continuation-capture __tmp149500))
                      _%rte149217%_)
                    _%exn149209%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj149204%_)
        (let ((_%$e149206%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj149204%_))))
          (if _%$e149206%_ _%$e149206%_ (error-exception? _%obj149204%_)))))
    (define error-message
      (lambda (_%obj149163%_)
        (let ((_%$e149199%_
               (let* ((_%obj149165%_ _%obj149163%_)
                      (_%slot149168%_ 'message)
                      (_%E149171%_ false)
                      (_%slot149176%_ _%slot149168%_)
                      (_%E149189%_ _%E149171%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj149165%_ _%slot149176%_ _%E149189%_))))
          (if _%$e149199%_
              _%$e149199%_
              (if (error-exception? _%obj149163%_)
                  (error-exception-message _%obj149163%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj149158%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149158%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149158%_ 'irritants))
            (if (error-exception? _%obj149158%_)
                (error-exception-parameters _%obj149158%_)
                '#f))))
    (define error-trace
      (lambda (_%obj149156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj149156%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj149156%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e149117%_ _%port149118%_)
        (let ((_%$e149140%_
               (let* ((_%obj149120%_ _%e149117%_)
                      (_%id149123%_ 'display-exception)
                      (_%id149128%_ _%id149123%_))
                 (declare (not safe))
                 (__method-ref _%obj149120%_ _%id149128%_))))
          (if _%$e149140%_
              (_%$e149140%_ _%e149117%_ _%port149118%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e149117%_ _%port149118%_))))))
    (define display-exception__0
      (lambda (_%e149149%_)
        (let ((_%port149151%_ (current-error-port)))
          (display-exception__% _%e149149%_ _%port149151%_))))
    (define display-exception
      (lambda _g149502_
        (let ((_g149503_ (let () (declare (not safe)) (##length _g149502_))))
          (cond ((let () (declare (not safe)) (##fx= _g149503_ 1))
                 (apply display-exception__0 _g149502_))
                ((let () (declare (not safe)) (##fx= _g149503_ 2))
                 (apply display-exception__% _g149502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g149502_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self149095%_ _%message149096%_ . _%rest149097%_)
        (let* ((_%self149100%_ _%self149095%_)
               (_%message149114%_
                (if (string? _%message149096%_)
                    _%message149096%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g149109149111%_)
                       (display _%message149096%_ _%$%g149109149111%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self149100%_ 'message _%message149114%_))
          (apply class-instance-init! _%self149100%_ _%rest149097%_))))
    (define Error:::init!::specialize
      (lambda (__klass149412 __method-table149413)
        (let ((__message149414
               (let ((__slot149415
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149412 'message))))
                 (if __slot149415
                     __slot149415
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self149095%_ _%message149096%_ . _%rest149097%_)
            (let* ((_%self149100%_ _%self149095%_)
                   (_%message149114%_
                    (if (string? _%message149096%_)
                        _%message149096%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g149109149111%_)
                           (display _%message149096%_ _%$%g149109149111%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149100%_
                 _%message149114%_
                 __message149414
                 '#f
                 '#f))
              (apply class-instance-init! _%self149100%_ _%rest149097%_))))))
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
      (lambda (_%self148800%_ _%port148801%_)
        (let ((_%self148804%_ _%self148800%_))
          (let ((_%tmp-port148814%_ (open-output-string))
                (_%display-error-newline148815%_
                 (> (output-port-column _%port148801%_) '0)))
            (fix-port-width! _%tmp-port148814%_)
            (let ((__tmp149504
                   (lambda ()
                     (if _%display-error-newline148815%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e148818%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148804%_ 'where))))
                       (if _%$e148818%_ (display _%$e148818%_) (display '"?")))
                     (let ((__tmp149505
                            (let ((__tmp149506
                                   (let ((_%obj148822%_ _%self148804%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj148822%_))
                                         (let ((_%obj148827%_ _%obj148822%_))
                                           (declare (not safe))
                                           (__object-class _%obj148827%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj148822%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp149506))))
                       (declare (not safe))
                       (display* '" [" __tmp149505 '"]: "))
                     (let ((__tmp149507
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148804%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp149507))
                     (let ((_%irritants148842%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self148804%_ 'irritants))))
                       (if (null? _%irritants148842%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj148844%_)
                                (if (u8vector? _%obj148844%_)
                                    (let ((__tmp149508
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj148844%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp149508))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj148844%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants148842%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont148845148847%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self148804%_
                                   'continuation))))
                           (if _%$%cont148845148847%_
                               (let ((_%cont148849%_ _%$%cont148845148847%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont148849%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp149504
               current-output-port
               _%tmp-port148814%_))
            (let ((__tmp149509 (get-output-string _%tmp-port148814%_)))
              (declare (not safe))
              (##write-string __tmp149509 _%port148801%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass149416 __method-table149417)
        (let ((__where149418
               (let ((__slot149422
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149416 'where))))
                 (if __slot149422
                     __slot149422
                     (error '"Unknown slot" 'where))))
              (__message149419
               (let ((__slot149423
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149416 'message))))
                 (if __slot149423
                     __slot149423
                     (error '"Unknown slot" 'message))))
              (__irritants149420
               (let ((__slot149424
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149416 'irritants))))
                 (if __slot149424
                     __slot149424
                     (error '"Unknown slot" 'irritants))))
              (__continuation149421
               (let ((__slot149425
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149416 'continuation))))
                 (if __slot149425
                     __slot149425
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self148800%_ _%port148801%_)
            (let ((_%self148804%_ _%self148800%_))
              (let ((_%tmp-port148814%_ (open-output-string))
                    (_%display-error-newline148815%_
                     (> (output-port-column _%port148801%_) '0)))
                (fix-port-width! _%tmp-port148814%_)
                (let ((__tmp149510
                       (lambda ()
                         (if _%display-error-newline148815%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e148818%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148804%_
                                   __where149418
                                   '#f
                                   '#f))))
                           (if _%$e148818%_
                               (display _%$e148818%_)
                               (display '"?")))
                         (let ((__tmp149511
                                (let ((__tmp149512
                                       (let ((_%obj148822%_ _%self148804%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj148822%_))
                                             (let ((_%obj148827%_
                                                    _%obj148822%_))
                                               (declare (not safe))
                                               (__object-class _%obj148827%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj148822%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp149512))))
                           (declare (not safe))
                           (display* '" [" __tmp149511 '"]: "))
                         (let ((__tmp149513
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148804%_
                                   __message149419
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp149513))
                         (let ((_%irritants148842%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self148804%_
                                   __irritants149420
                                   '#f
                                   '#f))))
                           (if (null? _%irritants148842%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj148844%_)
                                    (if (u8vector? _%obj148844%_)
                                        (let ((__tmp149514
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj148844%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp149514))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj148844%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants148842%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont148845148847%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self148804%_
                                       __continuation149421
                                       '#f
                                       '#f))))
                               (if _%$%cont148845148847%_
                                   (let ((_%cont148849%_
                                          _%$%cont148845148847%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont148849%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp149510
                   current-output-port
                   _%tmp-port148814%_))
                (let ((__tmp149515 (get-output-string _%tmp-port148814%_)))
                  (declare (not safe))
                  (##write-string __tmp149515 _%port148801%_))))))))
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
      (lambda (_%self148657%_ _%port148658%_)
        (let* ((_%self148661%_ _%self148657%_)
               (_%tmp-port148671%_ (open-output-string)))
          (fix-port-width! _%tmp-port148671%_)
          (let ((__tmp149516
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self148661%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp149516 _%tmp-port148671%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont148672148674%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self148661%_ 'continuation))))
                (if _%$%cont148672148674%_
                    (let ((_%cont148676%_ _%$%cont148672148674%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port148671%_)
                      (newline _%tmp-port148671%_)
                      (display-continuation-backtrace
                       _%cont148676%_
                       _%tmp-port148671%_))
                    '#f))
              '#!void)
          (let ((__tmp149517 (get-output-string _%tmp-port148671%_)))
            (declare (not safe))
            (##write-string __tmp149517 _%port148658%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass149426 __method-table149427)
        (let ((__exception149428
               (let ((__slot149430
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'exception))))
                 (if __slot149430
                     __slot149430
                     (error '"Unknown slot" 'exception))))
              (__continuation149429
               (let ((__slot149431
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass149426 'continuation))))
                 (if __slot149431
                     __slot149431
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self148657%_ _%port148658%_)
            (let* ((_%self148661%_ _%self148657%_)
                   (_%tmp-port148671%_ (open-output-string)))
              (fix-port-width! _%tmp-port148671%_)
              (let ((__tmp149518
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self148661%_
                        __exception149428
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp149518 _%tmp-port148671%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont148672148674%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self148661%_
                            __continuation149429
                            '#f
                            '#f))))
                    (if _%$%cont148672148674%_
                        (let ((_%cont148676%_ _%$%cont148672148674%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port148671%_)
                          (newline _%tmp-port148671%_)
                          (display-continuation-backtrace
                           _%cont148676%_
                           _%tmp-port148671%_))
                        '#f))
                  '#!void)
              (let ((__tmp149519 (get-output-string _%tmp-port148671%_)))
                (declare (not safe))
                (##write-string __tmp149519 _%port148658%_)))))))
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
      (lambda (_%port148529%_)
        (if (macro-character-port? _%port148529%_)
            (let ((_%old-width148531%_
                   (macro-character-port-output-width _%port148529%_)))
              (macro-character-port-output-width-set!
               _%port148529%_
               (lambda (_%port148533%_) '512))
              _%old-width148531%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port148526%_ _%old-width148527%_)
        (if (macro-character-port? _%port148526%_)
            (macro-character-port-output-width-set!
             _%port148526%_
             _%old-width148527%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e148524%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e148524%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn148518%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148518%_))
            (let ((_%e148521%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148518%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e148521%_))
            (macro-abandoned-mutex-exception? _%exn148518%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn148514%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148514%_))
            (let ((_%e148516%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148514%_ 'exception))))
              (macro-cfun-conversion-exception? _%e148516%_))
            (macro-cfun-conversion-exception? _%exn148514%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn148510%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148510%_))
            (let ((_%e148512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148510%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148512%_)
                  (macro-cfun-conversion-exception-arguments _%e148512%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e148512%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148510%_)
                (macro-cfun-conversion-exception-arguments _%exn148510%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn148510%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn148506%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148506%_))
            (let ((_%e148508%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148506%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148508%_)
                  (macro-cfun-conversion-exception-code _%e148508%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e148508%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148506%_)
                (macro-cfun-conversion-exception-code _%exn148506%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn148506%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn148502%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148502%_))
            (let ((_%e148504%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148502%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148504%_)
                  (macro-cfun-conversion-exception-message _%e148504%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e148504%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148502%_)
                (macro-cfun-conversion-exception-message _%exn148502%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn148502%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn148496%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148496%_))
            (let ((_%e148499%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148496%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e148499%_)
                  (macro-cfun-conversion-exception-procedure _%e148499%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e148499%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn148496%_)
                (macro-cfun-conversion-exception-procedure _%exn148496%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn148496%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn148492%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148492%_))
            (let ((_%e148494%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148492%_ 'exception))))
              (macro-datum-parsing-exception? _%e148494%_))
            (macro-datum-parsing-exception? _%exn148492%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn148488%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148488%_))
            (let ((_%e148490%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148488%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148490%_)
                  (macro-datum-parsing-exception-kind _%e148490%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e148490%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148488%_)
                (macro-datum-parsing-exception-kind _%exn148488%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn148488%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn148484%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148484%_))
            (let ((_%e148486%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148484%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148486%_)
                  (macro-datum-parsing-exception-parameters _%e148486%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e148486%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148484%_)
                (macro-datum-parsing-exception-parameters _%exn148484%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn148484%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn148478%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148478%_))
            (let ((_%e148481%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148478%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e148481%_)
                  (macro-datum-parsing-exception-readenv _%e148481%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e148481%_ '())))))
            (if (macro-datum-parsing-exception? _%exn148478%_)
                (macro-datum-parsing-exception-readenv _%exn148478%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn148478%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn148472%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148472%_))
            (let ((_%e148475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148472%_ 'exception))))
              (macro-deadlock-exception? _%e148475%_))
            (macro-deadlock-exception? _%exn148472%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn148468%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148468%_))
            (let ((_%e148470%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148468%_ 'exception))))
              (macro-divide-by-zero-exception? _%e148470%_))
            (macro-divide-by-zero-exception? _%exn148468%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn148464%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148464%_))
            (let ((_%e148466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148464%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148466%_)
                  (macro-divide-by-zero-exception-arguments _%e148466%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e148466%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148464%_)
                (macro-divide-by-zero-exception-arguments _%exn148464%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn148464%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn148458%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148458%_))
            (let ((_%e148461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148458%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e148461%_)
                  (macro-divide-by-zero-exception-procedure _%e148461%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e148461%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn148458%_)
                (macro-divide-by-zero-exception-procedure _%exn148458%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn148458%_ '())))))))
    (define error-exception?
      (lambda (_%exn148454%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148454%_))
            (let ((_%e148456%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148454%_ 'exception))))
              (macro-error-exception? _%e148456%_))
            (macro-error-exception? _%exn148454%_))))
    (define error-exception-message
      (lambda (_%exn148450%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148450%_))
            (let ((_%e148452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148450%_ 'exception))))
              (if (macro-error-exception? _%e148452%_)
                  (macro-error-exception-message _%e148452%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e148452%_ '())))))
            (if (macro-error-exception? _%exn148450%_)
                (macro-error-exception-message _%exn148450%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn148450%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn148444%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148444%_))
            (let ((_%e148447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148444%_ 'exception))))
              (if (macro-error-exception? _%e148447%_)
                  (macro-error-exception-parameters _%e148447%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e148447%_ '())))))
            (if (macro-error-exception? _%exn148444%_)
                (macro-error-exception-parameters _%exn148444%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn148444%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn148440%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148440%_))
            (let ((_%e148442%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148440%_ 'exception))))
              (macro-expression-parsing-exception? _%e148442%_))
            (macro-expression-parsing-exception? _%exn148440%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn148436%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148436%_))
            (let ((_%e148438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148436%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148438%_)
                  (macro-expression-parsing-exception-kind _%e148438%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e148438%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148436%_)
                (macro-expression-parsing-exception-kind _%exn148436%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn148436%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn148432%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148432%_))
            (let ((_%e148434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148432%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148434%_)
                  (macro-expression-parsing-exception-parameters _%e148434%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e148434%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148432%_)
                (macro-expression-parsing-exception-parameters _%exn148432%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn148432%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn148426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148426%_))
            (let ((_%e148429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148426%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e148429%_)
                  (macro-expression-parsing-exception-source _%e148429%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e148429%_ '())))))
            (if (macro-expression-parsing-exception? _%exn148426%_)
                (macro-expression-parsing-exception-source _%exn148426%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn148426%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn148422%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148422%_))
            (let ((_%e148424%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148422%_ 'exception))))
              (macro-file-exists-exception? _%e148424%_))
            (macro-file-exists-exception? _%exn148422%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn148418%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148418%_))
            (let ((_%e148420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148418%_ 'exception))))
              (if (macro-file-exists-exception? _%e148420%_)
                  (macro-file-exists-exception-arguments _%e148420%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e148420%_ '())))))
            (if (macro-file-exists-exception? _%exn148418%_)
                (macro-file-exists-exception-arguments _%exn148418%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn148418%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn148412%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148412%_))
            (let ((_%e148415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148412%_ 'exception))))
              (if (macro-file-exists-exception? _%e148415%_)
                  (macro-file-exists-exception-procedure _%e148415%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e148415%_ '())))))
            (if (macro-file-exists-exception? _%exn148412%_)
                (macro-file-exists-exception-procedure _%exn148412%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn148412%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn148408%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148408%_))
            (let ((_%e148410%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148408%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e148410%_))
            (macro-fixnum-overflow-exception? _%exn148408%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn148404%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148404%_))
            (let ((_%e148406%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148404%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148406%_)
                  (macro-fixnum-overflow-exception-arguments _%e148406%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e148406%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148404%_)
                (macro-fixnum-overflow-exception-arguments _%exn148404%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn148404%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn148398%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148398%_))
            (let ((_%e148401%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148398%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e148401%_)
                  (macro-fixnum-overflow-exception-procedure _%e148401%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e148401%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn148398%_)
                (macro-fixnum-overflow-exception-procedure _%exn148398%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn148398%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn148392%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148392%_))
            (let ((_%e148395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148392%_ 'exception))))
              (macro-heap-overflow-exception? _%e148395%_))
            (macro-heap-overflow-exception? _%exn148392%_))))
    (define inactive-thread-exception?
      (lambda (_%exn148388%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148388%_))
            (let ((_%e148390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148388%_ 'exception))))
              (macro-inactive-thread-exception? _%e148390%_))
            (macro-inactive-thread-exception? _%exn148388%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn148384%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148384%_))
            (let ((_%e148386%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148384%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148386%_)
                  (macro-inactive-thread-exception-arguments _%e148386%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e148386%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148384%_)
                (macro-inactive-thread-exception-arguments _%exn148384%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn148384%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn148378%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148378%_))
            (let ((_%e148381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148378%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e148381%_)
                  (macro-inactive-thread-exception-procedure _%e148381%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e148381%_ '())))))
            (if (macro-inactive-thread-exception? _%exn148378%_)
                (macro-inactive-thread-exception-procedure _%exn148378%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn148378%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn148374%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148374%_))
            (let ((_%e148376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148374%_ 'exception))))
              (macro-initialized-thread-exception? _%e148376%_))
            (macro-initialized-thread-exception? _%exn148374%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn148370%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148370%_))
            (let ((_%e148372%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148370%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148372%_)
                  (macro-initialized-thread-exception-arguments _%e148372%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e148372%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148370%_)
                (macro-initialized-thread-exception-arguments _%exn148370%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn148370%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn148364%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148364%_))
            (let ((_%e148367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148364%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e148367%_)
                  (macro-initialized-thread-exception-procedure _%e148367%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e148367%_ '())))))
            (if (macro-initialized-thread-exception? _%exn148364%_)
                (macro-initialized-thread-exception-procedure _%exn148364%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn148364%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn148360%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148360%_))
            (let ((_%e148362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148360%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e148362%_))
            (macro-invalid-hash-number-exception? _%exn148360%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn148356%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148356%_))
            (let ((_%e148358%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148356%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148358%_)
                  (macro-invalid-hash-number-exception-arguments _%e148358%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e148358%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148356%_)
                (macro-invalid-hash-number-exception-arguments _%exn148356%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn148356%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn148350%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148350%_))
            (let ((_%e148353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148350%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e148353%_)
                  (macro-invalid-hash-number-exception-procedure _%e148353%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e148353%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn148350%_)
                (macro-invalid-hash-number-exception-procedure _%exn148350%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn148350%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn148346%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148346%_))
            (let ((_%e148348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148346%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e148348%_))
            (macro-invalid-utf8-encoding-exception? _%exn148346%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn148342%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148342%_))
            (let ((_%e148344%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148342%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148344%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e148344%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e148344%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148342%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn148342%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn148342%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn148336%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148336%_))
            (let ((_%e148339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148336%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e148339%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e148339%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e148339%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn148336%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn148336%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn148336%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn148332%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148332%_))
            (let ((_%e148334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148332%_ 'exception))))
              (macro-join-timeout-exception? _%e148334%_))
            (macro-join-timeout-exception? _%exn148332%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn148328%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148328%_))
            (let ((_%e148330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148328%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148330%_)
                  (macro-join-timeout-exception-arguments _%e148330%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e148330%_ '())))))
            (if (macro-join-timeout-exception? _%exn148328%_)
                (macro-join-timeout-exception-arguments _%exn148328%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn148328%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn148322%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148322%_))
            (let ((_%e148325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148322%_ 'exception))))
              (if (macro-join-timeout-exception? _%e148325%_)
                  (macro-join-timeout-exception-procedure _%e148325%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e148325%_ '())))))
            (if (macro-join-timeout-exception? _%exn148322%_)
                (macro-join-timeout-exception-procedure _%exn148322%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn148322%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn148318%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148318%_))
            (let ((_%e148320%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148318%_ 'exception))))
              (macro-keyword-expected-exception? _%e148320%_))
            (macro-keyword-expected-exception? _%exn148318%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn148314%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148314%_))
            (let ((_%e148316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148314%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148316%_)
                  (macro-keyword-expected-exception-arguments _%e148316%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e148316%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148314%_)
                (macro-keyword-expected-exception-arguments _%exn148314%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn148314%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn148308%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148308%_))
            (let ((_%e148311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148308%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e148311%_)
                  (macro-keyword-expected-exception-procedure _%e148311%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e148311%_ '())))))
            (if (macro-keyword-expected-exception? _%exn148308%_)
                (macro-keyword-expected-exception-procedure _%exn148308%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn148308%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn148304%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148304%_))
            (let ((_%e148306%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148304%_ 'exception))))
              (macro-length-mismatch-exception? _%e148306%_))
            (macro-length-mismatch-exception? _%exn148304%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn148300%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148300%_))
            (let ((_%e148302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148300%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148302%_)
                  (macro-length-mismatch-exception-arg-id _%e148302%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e148302%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148300%_)
                (macro-length-mismatch-exception-arg-id _%exn148300%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn148300%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn148296%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148296%_))
            (let ((_%e148298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148296%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148298%_)
                  (macro-length-mismatch-exception-arguments _%e148298%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e148298%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148296%_)
                (macro-length-mismatch-exception-arguments _%exn148296%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn148296%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn148290%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148290%_))
            (let ((_%e148293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148290%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e148293%_)
                  (macro-length-mismatch-exception-procedure _%e148293%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e148293%_ '())))))
            (if (macro-length-mismatch-exception? _%exn148290%_)
                (macro-length-mismatch-exception-procedure _%exn148290%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn148290%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn148286%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148286%_))
            (let ((_%e148288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148286%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e148288%_))
            (macro-mailbox-receive-timeout-exception? _%exn148286%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn148282%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148282%_))
            (let ((_%e148284%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148282%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148284%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e148284%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e148284%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148282%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn148282%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn148282%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn148276%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148276%_))
            (let ((_%e148279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148276%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e148279%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e148279%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e148279%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn148276%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn148276%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn148276%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn148272%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148272%_))
            (let ((_%e148274%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148272%_ 'exception))))
              (macro-module-not-found-exception? _%e148274%_))
            (macro-module-not-found-exception? _%exn148272%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn148268%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148268%_))
            (let ((_%e148270%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148268%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148270%_)
                  (macro-module-not-found-exception-arguments _%e148270%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e148270%_ '())))))
            (if (macro-module-not-found-exception? _%exn148268%_)
                (macro-module-not-found-exception-arguments _%exn148268%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn148268%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn148262%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148262%_))
            (let ((_%e148265%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148262%_ 'exception))))
              (if (macro-module-not-found-exception? _%e148265%_)
                  (macro-module-not-found-exception-procedure _%e148265%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e148265%_ '())))))
            (if (macro-module-not-found-exception? _%exn148262%_)
                (macro-module-not-found-exception-procedure _%exn148262%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn148262%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn148256%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148256%_))
            (let ((_%e148259%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148256%_ 'exception))))
              (macro-multiple-c-return-exception? _%e148259%_))
            (macro-multiple-c-return-exception? _%exn148256%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn148252%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148252%_))
            (let ((_%e148254%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148252%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e148254%_))
            (macro-no-such-file-or-directory-exception? _%exn148252%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn148248%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148248%_))
            (let ((_%e148250%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148248%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148250%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e148250%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e148250%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148248%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn148248%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn148248%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn148242%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148242%_))
            (let ((_%e148245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148242%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e148245%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e148245%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e148245%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn148242%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn148242%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn148242%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn148238%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148238%_))
            (let ((_%e148240%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148238%_ 'exception))))
              (macro-noncontinuable-exception? _%e148240%_))
            (macro-noncontinuable-exception? _%exn148238%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn148232%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148232%_))
            (let ((_%e148235%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148232%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e148235%_)
                  (macro-noncontinuable-exception-reason _%e148235%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e148235%_ '())))))
            (if (macro-noncontinuable-exception? _%exn148232%_)
                (macro-noncontinuable-exception-reason _%exn148232%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn148232%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn148228%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148228%_))
            (let ((_%e148230%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148228%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e148230%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn148228%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn148224%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148224%_))
            (let ((_%e148226%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148224%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148226%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e148226%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e148226%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148224%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn148224%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn148224%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn148218%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148218%_))
            (let ((_%e148221%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148218%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e148221%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e148221%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e148221%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn148218%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn148218%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn148218%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn148214%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148214%_))
            (let ((_%e148216%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148214%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e148216%_))
            (macro-nonprocedure-operator-exception? _%exn148214%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn148210%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148210%_))
            (let ((_%e148212%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148210%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148212%_)
                  (macro-nonprocedure-operator-exception-arguments _%e148212%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e148212%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148210%_)
                (macro-nonprocedure-operator-exception-arguments _%exn148210%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn148210%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn148206%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148206%_))
            (let ((_%e148208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148206%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148208%_)
                  (macro-nonprocedure-operator-exception-code _%e148208%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e148208%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148206%_)
                (macro-nonprocedure-operator-exception-code _%exn148206%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn148206%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn148202%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148202%_))
            (let ((_%e148204%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148202%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148204%_)
                  (macro-nonprocedure-operator-exception-operator _%e148204%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e148204%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148202%_)
                (macro-nonprocedure-operator-exception-operator _%exn148202%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn148202%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn148196%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148196%_))
            (let ((_%e148199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148196%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e148199%_)
                  (macro-nonprocedure-operator-exception-rte _%e148199%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e148199%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn148196%_)
                (macro-nonprocedure-operator-exception-rte _%exn148196%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn148196%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn148192%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148192%_))
            (let ((_%e148194%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148192%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e148194%_))
            (macro-not-in-compilation-context-exception? _%exn148192%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn148188%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148188%_))
            (let ((_%e148190%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148188%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148190%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e148190%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e148190%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148188%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn148188%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn148188%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn148182%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148182%_))
            (let ((_%e148185%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148182%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e148185%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e148185%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e148185%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn148182%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn148182%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn148182%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn148178%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148178%_))
            (let ((_%e148180%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148178%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e148180%_))
            (macro-number-of-arguments-limit-exception? _%exn148178%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn148174%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148174%_))
            (let ((_%e148176%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148174%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148176%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e148176%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e148176%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148174%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn148174%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn148174%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn148168%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148168%_))
            (let ((_%e148171%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148168%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e148171%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e148171%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e148171%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn148168%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn148168%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn148168%_ '())))))))
    (define os-exception?
      (lambda (_%exn148164%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148164%_))
            (let ((_%e148166%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148164%_ 'exception))))
              (macro-os-exception? _%e148166%_))
            (macro-os-exception? _%exn148164%_))))
    (define os-exception-arguments
      (lambda (_%exn148160%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148160%_))
            (let ((_%e148162%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148160%_ 'exception))))
              (if (macro-os-exception? _%e148162%_)
                  (macro-os-exception-arguments _%e148162%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e148162%_ '())))))
            (if (macro-os-exception? _%exn148160%_)
                (macro-os-exception-arguments _%exn148160%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn148160%_ '())))))))
    (define os-exception-code
      (lambda (_%exn148156%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148156%_))
            (let ((_%e148158%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148156%_ 'exception))))
              (if (macro-os-exception? _%e148158%_)
                  (macro-os-exception-code _%e148158%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e148158%_ '())))))
            (if (macro-os-exception? _%exn148156%_)
                (macro-os-exception-code _%exn148156%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn148156%_ '())))))))
    (define os-exception-message
      (lambda (_%exn148152%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148152%_))
            (let ((_%e148154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148152%_ 'exception))))
              (if (macro-os-exception? _%e148154%_)
                  (macro-os-exception-message _%e148154%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e148154%_ '())))))
            (if (macro-os-exception? _%exn148152%_)
                (macro-os-exception-message _%exn148152%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn148152%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn148146%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148146%_))
            (let ((_%e148149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148146%_ 'exception))))
              (if (macro-os-exception? _%e148149%_)
                  (macro-os-exception-procedure _%e148149%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e148149%_ '())))))
            (if (macro-os-exception? _%exn148146%_)
                (macro-os-exception-procedure _%exn148146%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn148146%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn148142%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148142%_))
            (let ((_%e148144%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148142%_ 'exception))))
              (macro-permission-denied-exception? _%e148144%_))
            (macro-permission-denied-exception? _%exn148142%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn148138%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148138%_))
            (let ((_%e148140%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148138%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148140%_)
                  (macro-permission-denied-exception-arguments _%e148140%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e148140%_ '())))))
            (if (macro-permission-denied-exception? _%exn148138%_)
                (macro-permission-denied-exception-arguments _%exn148138%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn148138%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn148132%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148132%_))
            (let ((_%e148135%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148132%_ 'exception))))
              (if (macro-permission-denied-exception? _%e148135%_)
                  (macro-permission-denied-exception-procedure _%e148135%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e148135%_ '())))))
            (if (macro-permission-denied-exception? _%exn148132%_)
                (macro-permission-denied-exception-procedure _%exn148132%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn148132%_ '())))))))
    (define range-exception?
      (lambda (_%exn148128%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148128%_))
            (let ((_%e148130%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148128%_ 'exception))))
              (macro-range-exception? _%e148130%_))
            (macro-range-exception? _%exn148128%_))))
    (define range-exception-arg-id
      (lambda (_%exn148124%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148124%_))
            (let ((_%e148126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148124%_ 'exception))))
              (if (macro-range-exception? _%e148126%_)
                  (macro-range-exception-arg-id _%e148126%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e148126%_ '())))))
            (if (macro-range-exception? _%exn148124%_)
                (macro-range-exception-arg-id _%exn148124%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn148124%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn148120%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148120%_))
            (let ((_%e148122%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148120%_ 'exception))))
              (if (macro-range-exception? _%e148122%_)
                  (macro-range-exception-arguments _%e148122%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e148122%_ '())))))
            (if (macro-range-exception? _%exn148120%_)
                (macro-range-exception-arguments _%exn148120%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn148120%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn148114%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148114%_))
            (let ((_%e148117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148114%_ 'exception))))
              (if (macro-range-exception? _%e148117%_)
                  (macro-range-exception-procedure _%e148117%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e148117%_ '())))))
            (if (macro-range-exception? _%exn148114%_)
                (macro-range-exception-procedure _%exn148114%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn148114%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn148110%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148110%_))
            (let ((_%e148112%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148110%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e148112%_))
            (macro-rpc-remote-error-exception? _%exn148110%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn148106%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148106%_))
            (let ((_%e148108%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148106%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148108%_)
                  (macro-rpc-remote-error-exception-arguments _%e148108%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e148108%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148106%_)
                (macro-rpc-remote-error-exception-arguments _%exn148106%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn148106%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn148102%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148102%_))
            (let ((_%e148104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148102%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148104%_)
                  (macro-rpc-remote-error-exception-message _%e148104%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e148104%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148102%_)
                (macro-rpc-remote-error-exception-message _%exn148102%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn148102%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn148096%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148096%_))
            (let ((_%e148099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148096%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e148099%_)
                  (macro-rpc-remote-error-exception-procedure _%e148099%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e148099%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn148096%_)
                (macro-rpc-remote-error-exception-procedure _%exn148096%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn148096%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn148092%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148092%_))
            (let ((_%e148094%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148092%_ 'exception))))
              (macro-scheduler-exception? _%e148094%_))
            (macro-scheduler-exception? _%exn148092%_))))
    (define scheduler-exception-reason
      (lambda (_%exn148086%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148086%_))
            (let ((_%e148089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148086%_ 'exception))))
              (if (macro-scheduler-exception? _%e148089%_)
                  (macro-scheduler-exception-reason _%e148089%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e148089%_ '())))))
            (if (macro-scheduler-exception? _%exn148086%_)
                (macro-scheduler-exception-reason _%exn148086%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn148086%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn148082%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148082%_))
            (let ((_%e148084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148082%_ 'exception))))
              (macro-sfun-conversion-exception? _%e148084%_))
            (macro-sfun-conversion-exception? _%exn148082%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn148078%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148078%_))
            (let ((_%e148080%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148078%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148080%_)
                  (macro-sfun-conversion-exception-arguments _%e148080%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e148080%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148078%_)
                (macro-sfun-conversion-exception-arguments _%exn148078%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn148078%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn148074%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148074%_))
            (let ((_%e148076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148074%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148076%_)
                  (macro-sfun-conversion-exception-code _%e148076%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e148076%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148074%_)
                (macro-sfun-conversion-exception-code _%exn148074%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn148074%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn148070%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148070%_))
            (let ((_%e148072%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148070%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148072%_)
                  (macro-sfun-conversion-exception-message _%e148072%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e148072%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148070%_)
                (macro-sfun-conversion-exception-message _%exn148070%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn148070%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn148064%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148064%_))
            (let ((_%e148067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148064%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e148067%_)
                  (macro-sfun-conversion-exception-procedure _%e148067%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e148067%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn148064%_)
                (macro-sfun-conversion-exception-procedure _%exn148064%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn148064%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn148058%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148058%_))
            (let ((_%e148061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148058%_ 'exception))))
              (macro-stack-overflow-exception? _%e148061%_))
            (macro-stack-overflow-exception? _%exn148058%_))))
    (define started-thread-exception?
      (lambda (_%exn148054%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148054%_))
            (let ((_%e148056%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148054%_ 'exception))))
              (macro-started-thread-exception? _%e148056%_))
            (macro-started-thread-exception? _%exn148054%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn148050%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148050%_))
            (let ((_%e148052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148050%_ 'exception))))
              (if (macro-started-thread-exception? _%e148052%_)
                  (macro-started-thread-exception-arguments _%e148052%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e148052%_ '())))))
            (if (macro-started-thread-exception? _%exn148050%_)
                (macro-started-thread-exception-arguments _%exn148050%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn148050%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn148044%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148044%_))
            (let ((_%e148047%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148044%_ 'exception))))
              (if (macro-started-thread-exception? _%e148047%_)
                  (macro-started-thread-exception-procedure _%e148047%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e148047%_ '())))))
            (if (macro-started-thread-exception? _%exn148044%_)
                (macro-started-thread-exception-procedure _%exn148044%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn148044%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn148040%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148040%_))
            (let ((_%e148042%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148040%_ 'exception))))
              (macro-terminated-thread-exception? _%e148042%_))
            (macro-terminated-thread-exception? _%exn148040%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn148036%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148036%_))
            (let ((_%e148038%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148036%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148038%_)
                  (macro-terminated-thread-exception-arguments _%e148038%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e148038%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148036%_)
                (macro-terminated-thread-exception-arguments _%exn148036%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn148036%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn148030%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148030%_))
            (let ((_%e148033%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148030%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e148033%_)
                  (macro-terminated-thread-exception-procedure _%e148033%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e148033%_ '())))))
            (if (macro-terminated-thread-exception? _%exn148030%_)
                (macro-terminated-thread-exception-procedure _%exn148030%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn148030%_ '())))))))
    (define type-exception?
      (lambda (_%exn148026%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148026%_))
            (let ((_%e148028%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148026%_ 'exception))))
              (macro-type-exception? _%e148028%_))
            (macro-type-exception? _%exn148026%_))))
    (define type-exception-arg-id
      (lambda (_%exn148022%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148022%_))
            (let ((_%e148024%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148022%_ 'exception))))
              (if (macro-type-exception? _%e148024%_)
                  (macro-type-exception-arg-id _%e148024%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e148024%_ '())))))
            (if (macro-type-exception? _%exn148022%_)
                (macro-type-exception-arg-id _%exn148022%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn148022%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn148018%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148018%_))
            (let ((_%e148020%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148018%_ 'exception))))
              (if (macro-type-exception? _%e148020%_)
                  (macro-type-exception-arguments _%e148020%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e148020%_ '())))))
            (if (macro-type-exception? _%exn148018%_)
                (macro-type-exception-arguments _%exn148018%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn148018%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn148014%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148014%_))
            (let ((_%e148016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148014%_ 'exception))))
              (if (macro-type-exception? _%e148016%_)
                  (macro-type-exception-procedure _%e148016%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e148016%_ '())))))
            (if (macro-type-exception? _%exn148014%_)
                (macro-type-exception-procedure _%exn148014%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn148014%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn148008%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148008%_))
            (let ((_%e148011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148008%_ 'exception))))
              (if (macro-type-exception? _%e148011%_)
                  (macro-type-exception-type-id _%e148011%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e148011%_ '())))))
            (if (macro-type-exception? _%exn148008%_)
                (macro-type-exception-type-id _%exn148008%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn148008%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn148004%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148004%_))
            (let ((_%e148006%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148004%_ 'exception))))
              (macro-unbound-global-exception? _%e148006%_))
            (macro-unbound-global-exception? _%exn148004%_))))
    (define unbound-global-exception-code
      (lambda (_%exn148000%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn148000%_))
            (let ((_%e148002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn148000%_ 'exception))))
              (if (macro-unbound-global-exception? _%e148002%_)
                  (macro-unbound-global-exception-code _%e148002%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e148002%_ '())))))
            (if (macro-unbound-global-exception? _%exn148000%_)
                (macro-unbound-global-exception-code _%exn148000%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn148000%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn147996%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147996%_))
            (let ((_%e147998%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147996%_ 'exception))))
              (if (macro-unbound-global-exception? _%e147998%_)
                  (macro-unbound-global-exception-rte _%e147998%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e147998%_ '())))))
            (if (macro-unbound-global-exception? _%exn147996%_)
                (macro-unbound-global-exception-rte _%exn147996%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn147996%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn147990%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147990%_))
            (let ((_%e147993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147990%_ 'exception))))
              (if (macro-unbound-global-exception? _%e147993%_)
                  (macro-unbound-global-exception-variable _%e147993%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e147993%_ '())))))
            (if (macro-unbound-global-exception? _%exn147990%_)
                (macro-unbound-global-exception-variable _%exn147990%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn147990%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn147986%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147986%_))
            (let ((_%e147988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147986%_ 'exception))))
              (macro-unbound-key-exception? _%e147988%_))
            (macro-unbound-key-exception? _%exn147986%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn147982%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147982%_))
            (let ((_%e147984%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147982%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147984%_)
                  (macro-unbound-key-exception-arguments _%e147984%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e147984%_ '())))))
            (if (macro-unbound-key-exception? _%exn147982%_)
                (macro-unbound-key-exception-arguments _%exn147982%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn147982%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn147976%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147976%_))
            (let ((_%e147979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147976%_ 'exception))))
              (if (macro-unbound-key-exception? _%e147979%_)
                  (macro-unbound-key-exception-procedure _%e147979%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e147979%_ '())))))
            (if (macro-unbound-key-exception? _%exn147976%_)
                (macro-unbound-key-exception-procedure _%exn147976%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn147976%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn147972%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147972%_))
            (let ((_%e147974%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147972%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e147974%_))
            (macro-unbound-os-environment-variable-exception? _%exn147972%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn147968%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147968%_))
            (let ((_%e147970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147968%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147970%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e147970%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e147970%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147968%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn147968%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn147968%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn147962%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147962%_))
            (let ((_%e147965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147962%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e147965%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e147965%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e147965%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn147962%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn147962%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn147962%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn147958%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147958%_))
            (let ((_%e147960%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147958%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e147960%_))
            (macro-unbound-serial-number-exception? _%exn147958%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn147954%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147954%_))
            (let ((_%e147956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147954%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147956%_)
                  (macro-unbound-serial-number-exception-arguments _%e147956%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e147956%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147954%_)
                (macro-unbound-serial-number-exception-arguments _%exn147954%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn147954%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn147948%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147948%_))
            (let ((_%e147951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147948%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e147951%_)
                  (macro-unbound-serial-number-exception-procedure _%e147951%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e147951%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn147948%_)
                (macro-unbound-serial-number-exception-procedure _%exn147948%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn147948%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn147944%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147944%_))
            (let ((_%e147946%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147944%_ 'exception))))
              (macro-uncaught-exception? _%e147946%_))
            (macro-uncaught-exception? _%exn147944%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn147940%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147940%_))
            (let ((_%e147942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147940%_ 'exception))))
              (if (macro-uncaught-exception? _%e147942%_)
                  (macro-uncaught-exception-arguments _%e147942%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e147942%_ '())))))
            (if (macro-uncaught-exception? _%exn147940%_)
                (macro-uncaught-exception-arguments _%exn147940%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn147940%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn147936%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147936%_))
            (let ((_%e147938%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147936%_ 'exception))))
              (if (macro-uncaught-exception? _%e147938%_)
                  (macro-uncaught-exception-procedure _%e147938%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e147938%_ '())))))
            (if (macro-uncaught-exception? _%exn147936%_)
                (macro-uncaught-exception-procedure _%exn147936%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn147936%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn147930%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147930%_))
            (let ((_%e147933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147930%_ 'exception))))
              (if (macro-uncaught-exception? _%e147933%_)
                  (macro-uncaught-exception-reason _%e147933%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e147933%_ '())))))
            (if (macro-uncaught-exception? _%exn147930%_)
                (macro-uncaught-exception-reason _%exn147930%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn147930%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn147926%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147926%_))
            (let ((_%e147928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147926%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e147928%_))
            (macro-uninitialized-thread-exception? _%exn147926%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn147922%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147922%_))
            (let ((_%e147924%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147922%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147924%_)
                  (macro-uninitialized-thread-exception-arguments _%e147924%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e147924%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147922%_)
                (macro-uninitialized-thread-exception-arguments _%exn147922%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn147922%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn147916%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147916%_))
            (let ((_%e147919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147916%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e147919%_)
                  (macro-uninitialized-thread-exception-procedure _%e147919%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e147919%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn147916%_)
                (macro-uninitialized-thread-exception-procedure _%exn147916%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn147916%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn147912%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147912%_))
            (let ((_%e147914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147912%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e147914%_))
            (macro-unknown-keyword-argument-exception? _%exn147912%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn147908%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147908%_))
            (let ((_%e147910%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147908%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147910%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e147910%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e147910%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147908%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn147908%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn147908%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn147902%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147902%_))
            (let ((_%e147905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147902%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e147905%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e147905%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e147905%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn147902%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn147902%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn147902%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn147898%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147898%_))
            (let ((_%e147900%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147898%_ 'exception))))
              (macro-unterminated-process-exception? _%e147900%_))
            (macro-unterminated-process-exception? _%exn147898%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn147894%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147894%_))
            (let ((_%e147896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147894%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147896%_)
                  (macro-unterminated-process-exception-arguments _%e147896%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e147896%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147894%_)
                (macro-unterminated-process-exception-arguments _%exn147894%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn147894%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn147888%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147888%_))
            (let ((_%e147891%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147888%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e147891%_)
                  (macro-unterminated-process-exception-procedure _%e147891%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e147891%_ '())))))
            (if (macro-unterminated-process-exception? _%exn147888%_)
                (macro-unterminated-process-exception-procedure _%exn147888%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn147888%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn147884%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147884%_))
            (let ((_%e147886%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147884%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e147886%_))
            (macro-wrong-number-of-arguments-exception? _%exn147884%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn147880%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147880%_))
            (let ((_%e147882%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147880%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147882%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e147882%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e147882%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147880%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn147880%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn147880%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn147874%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147874%_))
            (let ((_%e147877%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147874%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e147877%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e147877%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e147877%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn147874%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn147874%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn147874%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn147870%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147870%_))
            (let ((_%e147872%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147870%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e147872%_))
            (macro-wrong-number-of-values-exception? _%exn147870%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn147866%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147866%_))
            (let ((_%e147868%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147866%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147868%_)
                  (macro-wrong-number-of-values-exception-code _%e147868%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e147868%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147866%_)
                (macro-wrong-number-of-values-exception-code _%exn147866%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn147866%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn147862%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147862%_))
            (let ((_%e147864%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147862%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147864%_)
                  (macro-wrong-number-of-values-exception-rte _%e147864%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e147864%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147862%_)
                (macro-wrong-number-of-values-exception-rte _%exn147862%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn147862%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn147856%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147856%_))
            (let ((_%e147859%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147856%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e147859%_)
                  (macro-wrong-number-of-values-exception-vals _%e147859%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e147859%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn147856%_)
                (macro-wrong-number-of-values-exception-vals _%exn147856%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn147856%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn147850%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn147850%_))
            (let ((_%e147853%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn147850%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e147853%_))
            (macro-wrong-processor-c-return-exception? _%exn147850%_))))))
