(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1789552473)
  (begin
    (define Exception::t
      (let ((__tmp151529 (list)))
        (declare (not safe))
        (make-class-type 'Exception::t 'Exception __tmp151529 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args151447%_
        (apply make-instance Exception::t _%$args151447%_)))
    (define StackTrace::t
      (let ((__tmp151530 (list)))
        (declare (not safe))
        (make-class-type
         'StackTrace::t
         'StackTrace
         __tmp151530
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args151444%_
        (apply make-instance StackTrace::t _%$args151444%_)))
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
      (let ((__tmp151531 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'Error::t
         'Error
         __tmp151531
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args151441%_ (apply make-instance Error::t _%$args151441%_)))
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
      (let ((__tmp151532 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp151532
         '()
         '()
         ':init!)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args151438%_
        (apply make-instance ContractViolation::t _%$args151438%_)))
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
      (let ((__tmp151533 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp151533
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args151435%_
        (apply make-instance RuntimeException::t _%$args151435%_)))
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
      (lambda (_%exn151430%_ _%continue151431%_)
        (let ((_%exn151433%_ (wrap-runtime-exception _%exn151430%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn151433%_ _%continue151431%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn151426%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn151426%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn151426%_ 'continuation))
                '#!void
                (let ((__tmp151534
                       (lambda (_%cont151428%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn151426%_
                            'continuation
                            _%cont151428%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp151534)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn151426%_))))
    (define error
      (lambda (_%message151423%_ . _%irritants151424%_)
        (raise (let ((__obj151526
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj151526
                  _%message151423%_
                  'irritants:
                  _%irritants151424%_)
                 __obj151526))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords151398%_
               _%$%ctx151393151399%_
               _%$%contract-expr151394151400%_
               _%$%value151395151401%_
               _%message151402%_)
        (let* ((_%ctx151404%_
                (if (eq? _%$%ctx151393151399%_ absent-value)
                    '#f
                    _%$%ctx151393151399%_))
               (_%contract-expr151406%_
                (if (eq? _%$%contract-expr151394151400%_ absent-value)
                    '#f
                    _%$%contract-expr151394151400%_))
               (_%value151408%_
                (if (eq? _%$%value151395151401%_ absent-value)
                    '#f
                    _%$%value151395151401%_)))
          (raise (let ((__obj151527
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj151527
                    _%message151402%_
                    'where:
                    _%ctx151404%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr151406%_
                                (cons 'value: (cons _%value151408%_ '())))))
                   __obj151527)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords151413%_ . _%args151414%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords151413%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151413%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151413%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151413%_
                  'value:
                  absent-value))
               _%args151414%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args151396151420%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args151396151420%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler151367%_ _%thunk151368%_)
        (let* ((_%handler151371%_ _%handler151367%_)
               (_%thunk151379%_ _%thunk151368%_)
               (__tmp151535
                (lambda (_%exn151388%_)
                  (let ((_%exn151390%_ (wrap-runtime-exception _%exn151388%_)))
                    (declare (not safe))
                    (_%handler151371%_ _%exn151390%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp151535 _%thunk151379%_))))
    (define with-exception-handler
      (lambda (_%handler151342%_ _%thunk151343%_)
        (if (procedure? _%handler151342%_)
            (let ((_%handler151347%_ _%handler151342%_))
              (if (procedure? _%thunk151343%_)
                  (let ((_%thunk151357%_ _%thunk151343%_))
                    (__with-exception-handler
                     _%handler151347%_
                     _%thunk151357%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk151343%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler151342%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler151284%_ _%thunk151285%_)
        (let* ((_%handler151288%_ _%handler151284%_)
               (_%thunk151296%_ _%thunk151285%_)
               (__tmp151536
                (lambda (_%cont151305%_)
                  (let* ((_%handler151309%_
                          (lambda (_%exn151307%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont151305%_
                               _%handler151288%_
                               _%exn151307%_))))
                         (_%thunk151312%_ _%thunk151296%_)
                         (_%handler151317%_ _%handler151309%_)
                         (_%thunk151332%_ _%thunk151312%_))
                    (__with-exception-handler
                     _%handler151317%_
                     _%thunk151332%_)))))
          (declare (not safe))
          (##continuation-capture __tmp151536))))
    (define with-catch
      (lambda (_%handler151259%_ _%thunk151260%_)
        (if (procedure? _%handler151259%_)
            (let ((_%handler151264%_ _%handler151259%_))
              (if (procedure? _%thunk151260%_)
                  (let ((_%thunk151274%_ _%thunk151260%_))
                    (__with-catch _%handler151264%_ _%thunk151274%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk151260%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler151259%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn151246%_)
        (if (or (heap-overflow-exception? _%exn151246%_)
                (stack-overflow-exception? _%exn151246%_))
            _%exn151246%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn151246%_))
                _%exn151246%_
                (if (macro-exception? _%exn151246%_)
                    (let ((_%rte151254%_
                           (let ((__obj151528
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj151528
                                _%exn151246%_
                                '2
                                '#f
                                '#f))
                             __obj151528)))
                      (let ((__tmp151537
                             (lambda (_%cont151256%_)
                               (let ((__tmp151538
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont151256%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte151254%_
                                  'continuation
                                  __tmp151538)))))
                        (declare (not safe))
                        (##continuation-capture __tmp151537))
                      _%rte151254%_)
                    _%exn151246%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj151241%_)
        (let ((_%$e151243%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj151241%_))))
          (if _%$e151243%_ _%$e151243%_ (error-exception? _%obj151241%_)))))
    (define error-message
      (lambda (_%obj151200%_)
        (let ((_%$e151236%_
               (let* ((_%obj151202%_ _%obj151200%_)
                      (_%slot151205%_ 'message)
                      (_%E151208%_ false)
                      (_%slot151213%_ _%slot151205%_)
                      (_%E151226%_ _%E151208%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj151202%_ _%slot151213%_ _%E151226%_))))
          (if _%$e151236%_
              _%$e151236%_
              (if (error-exception? _%obj151200%_)
                  (error-exception-message _%obj151200%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj151195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj151195%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj151195%_ 'irritants))
            (if (error-exception? _%obj151195%_)
                (error-exception-parameters _%obj151195%_)
                '#f))))
    (define error-trace
      (lambda (_%obj151193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj151193%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj151193%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e151154%_ _%port151155%_)
        (let ((_%$e151177%_
               (let* ((_%obj151157%_ _%e151154%_)
                      (_%id151160%_ 'display-exception)
                      (_%id151165%_ _%id151160%_))
                 (declare (not safe))
                 (__method-ref _%obj151157%_ _%id151165%_))))
          (if _%$e151177%_
              (_%$e151177%_ _%e151154%_ _%port151155%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e151154%_ _%port151155%_))))))
    (define display-exception__0
      (lambda (_%e151186%_)
        (let ((_%port151188%_ (current-error-port)))
          (display-exception__% _%e151186%_ _%port151188%_))))
    (define display-exception
      (lambda _g151539_
        (let ((_g151540_ (let () (declare (not safe)) (##length _g151539_))))
          (cond ((let () (declare (not safe)) (##fx= _g151540_ 1))
                 (apply display-exception__0 _g151539_))
                ((let () (declare (not safe)) (##fx= _g151540_ 2))
                 (apply display-exception__% _g151539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g151539_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self151132%_ _%message151133%_ . _%rest151134%_)
        (let* ((_%self151137%_ _%self151132%_)
               (_%message151151%_
                (if (string? _%message151133%_)
                    _%message151133%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g151146151148%_)
                       (display _%message151133%_ _%$%g151146151148%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self151137%_ 'message _%message151151%_))
          (apply class-instance-init! _%self151137%_ _%rest151134%_))))
    (define Error:::init!::specialize
      (lambda (__klass151449 __method-table151450)
        (let ((__message151451
               (let ((__slot151452
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151449 'message))))
                 (if __slot151452
                     __slot151452
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self151132%_ _%message151133%_ . _%rest151134%_)
            (let* ((_%self151137%_ _%self151132%_)
                   (_%message151151%_
                    (if (string? _%message151133%_)
                        _%message151133%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g151146151148%_)
                           (display _%message151133%_ _%$%g151146151148%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151137%_
                 _%message151151%_
                 __message151451
                 '#f
                 '#f))
              (apply class-instance-init! _%self151137%_ _%rest151134%_))))))
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
      (lambda (_%self150837%_ _%port150838%_)
        (let ((_%self150841%_ _%self150837%_))
          (let ((_%tmp-port150851%_ (open-output-string))
                (_%display-error-newline150852%_
                 (> (output-port-column _%port150838%_) '0)))
            (fix-port-width! _%tmp-port150851%_)
            (let ((__tmp151541
                   (lambda ()
                     (if _%display-error-newline150852%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e150855%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150841%_ 'where))))
                       (if _%$e150855%_ (display _%$e150855%_) (display '"?")))
                     (let ((__tmp151542
                            (let ((__tmp151543
                                   (let ((_%obj150859%_ _%self150841%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj150859%_))
                                         (let ((_%obj150864%_ _%obj150859%_))
                                           (declare (not safe))
                                           (__object-class _%obj150864%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj150859%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp151543))))
                       (declare (not safe))
                       (display* '" [" __tmp151542 '"]: "))
                     (let ((__tmp151544
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150841%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp151544))
                     (let ((_%irritants150879%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self150841%_ 'irritants))))
                       (if (null? _%irritants150879%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj150881%_)
                                (if (u8vector? _%obj150881%_)
                                    (let ((__tmp151545
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj150881%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp151545))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj150881%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants150879%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont150882150884%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self150841%_
                                   'continuation))))
                           (if _%$%cont150882150884%_
                               (let ((_%cont150886%_ _%$%cont150882150884%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont150886%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp151541
               current-output-port
               _%tmp-port150851%_))
            (let ((__tmp151546 (get-output-string _%tmp-port150851%_)))
              (declare (not safe))
              (##write-string __tmp151546 _%port150838%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass151453 __method-table151454)
        (let ((__irritants151455
               (let ((__slot151459
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151453 'irritants))))
                 (if __slot151459
                     __slot151459
                     (error '"Unknown slot" 'irritants))))
              (__message151456
               (let ((__slot151460
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151453 'message))))
                 (if __slot151460
                     __slot151460
                     (error '"Unknown slot" 'message))))
              (__where151457
               (let ((__slot151461
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151453 'where))))
                 (if __slot151461
                     __slot151461
                     (error '"Unknown slot" 'where))))
              (__continuation151458
               (let ((__slot151462
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151453 'continuation))))
                 (if __slot151462
                     __slot151462
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self150837%_ _%port150838%_)
            (let ((_%self150841%_ _%self150837%_))
              (let ((_%tmp-port150851%_ (open-output-string))
                    (_%display-error-newline150852%_
                     (> (output-port-column _%port150838%_) '0)))
                (fix-port-width! _%tmp-port150851%_)
                (let ((__tmp151547
                       (lambda ()
                         (if _%display-error-newline150852%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e150855%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150841%_
                                   __where151457
                                   '#f
                                   '#f))))
                           (if _%$e150855%_
                               (display _%$e150855%_)
                               (display '"?")))
                         (let ((__tmp151548
                                (let ((__tmp151549
                                       (let ((_%obj150859%_ _%self150841%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj150859%_))
                                             (let ((_%obj150864%_
                                                    _%obj150859%_))
                                               (declare (not safe))
                                               (__object-class _%obj150864%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj150859%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp151549))))
                           (declare (not safe))
                           (display* '" [" __tmp151548 '"]: "))
                         (let ((__tmp151550
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150841%_
                                   __message151456
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp151550))
                         (let ((_%irritants150879%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self150841%_
                                   __irritants151455
                                   '#f
                                   '#f))))
                           (if (null? _%irritants150879%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj150881%_)
                                    (if (u8vector? _%obj150881%_)
                                        (let ((__tmp151551
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj150881%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp151551))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj150881%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants150879%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont150882150884%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self150841%_
                                       __continuation151458
                                       '#f
                                       '#f))))
                               (if _%$%cont150882150884%_
                                   (let ((_%cont150886%_
                                          _%$%cont150882150884%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont150886%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp151547
                   current-output-port
                   _%tmp-port150851%_))
                (let ((__tmp151552 (get-output-string _%tmp-port150851%_)))
                  (declare (not safe))
                  (##write-string __tmp151552 _%port150838%_))))))))
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
      (lambda (_%self150694%_ _%port150695%_)
        (let* ((_%self150698%_ _%self150694%_)
               (_%tmp-port150708%_ (open-output-string)))
          (fix-port-width! _%tmp-port150708%_)
          (let ((__tmp151553
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self150698%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp151553 _%tmp-port150708%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont150709150711%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self150698%_ 'continuation))))
                (if _%$%cont150709150711%_
                    (let ((_%cont150713%_ _%$%cont150709150711%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port150708%_)
                      (newline _%tmp-port150708%_)
                      (display-continuation-backtrace
                       _%cont150713%_
                       _%tmp-port150708%_))
                    '#f))
              '#!void)
          (let ((__tmp151554 (get-output-string _%tmp-port150708%_)))
            (declare (not safe))
            (##write-string __tmp151554 _%port150695%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass151463 __method-table151464)
        (let ((__exception151465
               (let ((__slot151467
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151463 'exception))))
                 (if __slot151467
                     __slot151467
                     (error '"Unknown slot" 'exception))))
              (__continuation151466
               (let ((__slot151468
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151463 'continuation))))
                 (if __slot151468
                     __slot151468
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self150694%_ _%port150695%_)
            (let* ((_%self150698%_ _%self150694%_)
                   (_%tmp-port150708%_ (open-output-string)))
              (fix-port-width! _%tmp-port150708%_)
              (let ((__tmp151555
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self150698%_
                        __exception151465
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp151555 _%tmp-port150708%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont150709150711%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self150698%_
                            __continuation151466
                            '#f
                            '#f))))
                    (if _%$%cont150709150711%_
                        (let ((_%cont150713%_ _%$%cont150709150711%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port150708%_)
                          (newline _%tmp-port150708%_)
                          (display-continuation-backtrace
                           _%cont150713%_
                           _%tmp-port150708%_))
                        '#f))
                  '#!void)
              (let ((__tmp151556 (get-output-string _%tmp-port150708%_)))
                (declare (not safe))
                (##write-string __tmp151556 _%port150695%_)))))))
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
      (lambda (_%port150566%_)
        (if (macro-character-port? _%port150566%_)
            (let ((_%old-width150568%_
                   (macro-character-port-output-width _%port150566%_)))
              (macro-character-port-output-width-set!
               _%port150566%_
               (lambda (_%port150570%_) '512))
              _%old-width150568%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port150563%_ _%old-width150564%_)
        (if (macro-character-port? _%port150563%_)
            (macro-character-port-output-width-set!
             _%port150563%_
             _%old-width150564%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e150561%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e150561%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn150555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150555%_))
            (let ((_%e150558%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150555%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e150558%_))
            (macro-abandoned-mutex-exception? _%exn150555%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn150551%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150551%_))
            (let ((_%e150553%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150551%_ 'exception))))
              (macro-cfun-conversion-exception? _%e150553%_))
            (macro-cfun-conversion-exception? _%exn150551%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn150547%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150547%_))
            (let ((_%e150549%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150547%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150549%_)
                  (macro-cfun-conversion-exception-arguments _%e150549%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e150549%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150547%_)
                (macro-cfun-conversion-exception-arguments _%exn150547%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn150547%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn150543%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150543%_))
            (let ((_%e150545%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150543%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150545%_)
                  (macro-cfun-conversion-exception-code _%e150545%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e150545%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150543%_)
                (macro-cfun-conversion-exception-code _%exn150543%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn150543%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn150539%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150539%_))
            (let ((_%e150541%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150539%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150541%_)
                  (macro-cfun-conversion-exception-message _%e150541%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e150541%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150539%_)
                (macro-cfun-conversion-exception-message _%exn150539%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn150539%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn150533%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150533%_))
            (let ((_%e150536%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150533%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150536%_)
                  (macro-cfun-conversion-exception-procedure _%e150536%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e150536%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150533%_)
                (macro-cfun-conversion-exception-procedure _%exn150533%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn150533%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn150529%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150529%_))
            (let ((_%e150531%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150529%_ 'exception))))
              (macro-datum-parsing-exception? _%e150531%_))
            (macro-datum-parsing-exception? _%exn150529%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn150525%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150525%_))
            (let ((_%e150527%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150525%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150527%_)
                  (macro-datum-parsing-exception-kind _%e150527%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e150527%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150525%_)
                (macro-datum-parsing-exception-kind _%exn150525%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn150525%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn150521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150521%_))
            (let ((_%e150523%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150521%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150523%_)
                  (macro-datum-parsing-exception-parameters _%e150523%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e150523%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150521%_)
                (macro-datum-parsing-exception-parameters _%exn150521%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn150521%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn150515%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150515%_))
            (let ((_%e150518%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150515%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150518%_)
                  (macro-datum-parsing-exception-readenv _%e150518%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e150518%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150515%_)
                (macro-datum-parsing-exception-readenv _%exn150515%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn150515%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn150509%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150509%_))
            (let ((_%e150512%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150509%_ 'exception))))
              (macro-deadlock-exception? _%e150512%_))
            (macro-deadlock-exception? _%exn150509%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn150505%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150505%_))
            (let ((_%e150507%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150505%_ 'exception))))
              (macro-divide-by-zero-exception? _%e150507%_))
            (macro-divide-by-zero-exception? _%exn150505%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn150501%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150501%_))
            (let ((_%e150503%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150501%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e150503%_)
                  (macro-divide-by-zero-exception-arguments _%e150503%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e150503%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn150501%_)
                (macro-divide-by-zero-exception-arguments _%exn150501%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn150501%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn150495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150495%_))
            (let ((_%e150498%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150495%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e150498%_)
                  (macro-divide-by-zero-exception-procedure _%e150498%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e150498%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn150495%_)
                (macro-divide-by-zero-exception-procedure _%exn150495%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn150495%_ '())))))))
    (define error-exception?
      (lambda (_%exn150491%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150491%_))
            (let ((_%e150493%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150491%_ 'exception))))
              (macro-error-exception? _%e150493%_))
            (macro-error-exception? _%exn150491%_))))
    (define error-exception-message
      (lambda (_%exn150487%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150487%_))
            (let ((_%e150489%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150487%_ 'exception))))
              (if (macro-error-exception? _%e150489%_)
                  (macro-error-exception-message _%e150489%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e150489%_ '())))))
            (if (macro-error-exception? _%exn150487%_)
                (macro-error-exception-message _%exn150487%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn150487%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn150481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150481%_))
            (let ((_%e150484%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150481%_ 'exception))))
              (if (macro-error-exception? _%e150484%_)
                  (macro-error-exception-parameters _%e150484%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e150484%_ '())))))
            (if (macro-error-exception? _%exn150481%_)
                (macro-error-exception-parameters _%exn150481%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn150481%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn150477%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150477%_))
            (let ((_%e150479%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150477%_ 'exception))))
              (macro-expression-parsing-exception? _%e150479%_))
            (macro-expression-parsing-exception? _%exn150477%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn150473%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150473%_))
            (let ((_%e150475%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150473%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150475%_)
                  (macro-expression-parsing-exception-kind _%e150475%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e150475%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150473%_)
                (macro-expression-parsing-exception-kind _%exn150473%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn150473%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn150469%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150469%_))
            (let ((_%e150471%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150469%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150471%_)
                  (macro-expression-parsing-exception-parameters _%e150471%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e150471%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150469%_)
                (macro-expression-parsing-exception-parameters _%exn150469%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn150469%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn150463%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150463%_))
            (let ((_%e150466%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150463%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150466%_)
                  (macro-expression-parsing-exception-source _%e150466%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e150466%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150463%_)
                (macro-expression-parsing-exception-source _%exn150463%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn150463%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn150459%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150459%_))
            (let ((_%e150461%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150459%_ 'exception))))
              (macro-file-exists-exception? _%e150461%_))
            (macro-file-exists-exception? _%exn150459%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn150455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150455%_))
            (let ((_%e150457%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150455%_ 'exception))))
              (if (macro-file-exists-exception? _%e150457%_)
                  (macro-file-exists-exception-arguments _%e150457%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e150457%_ '())))))
            (if (macro-file-exists-exception? _%exn150455%_)
                (macro-file-exists-exception-arguments _%exn150455%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn150455%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn150449%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150449%_))
            (let ((_%e150452%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150449%_ 'exception))))
              (if (macro-file-exists-exception? _%e150452%_)
                  (macro-file-exists-exception-procedure _%e150452%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e150452%_ '())))))
            (if (macro-file-exists-exception? _%exn150449%_)
                (macro-file-exists-exception-procedure _%exn150449%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn150449%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn150445%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150445%_))
            (let ((_%e150447%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150445%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e150447%_))
            (macro-fixnum-overflow-exception? _%exn150445%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn150441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150441%_))
            (let ((_%e150443%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150441%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e150443%_)
                  (macro-fixnum-overflow-exception-arguments _%e150443%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e150443%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn150441%_)
                (macro-fixnum-overflow-exception-arguments _%exn150441%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn150441%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn150435%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150435%_))
            (let ((_%e150438%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150435%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e150438%_)
                  (macro-fixnum-overflow-exception-procedure _%e150438%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e150438%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn150435%_)
                (macro-fixnum-overflow-exception-procedure _%exn150435%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn150435%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn150429%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150429%_))
            (let ((_%e150432%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150429%_ 'exception))))
              (macro-heap-overflow-exception? _%e150432%_))
            (macro-heap-overflow-exception? _%exn150429%_))))
    (define inactive-thread-exception?
      (lambda (_%exn150425%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150425%_))
            (let ((_%e150427%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150425%_ 'exception))))
              (macro-inactive-thread-exception? _%e150427%_))
            (macro-inactive-thread-exception? _%exn150425%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn150421%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150421%_))
            (let ((_%e150423%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150421%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e150423%_)
                  (macro-inactive-thread-exception-arguments _%e150423%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e150423%_ '())))))
            (if (macro-inactive-thread-exception? _%exn150421%_)
                (macro-inactive-thread-exception-arguments _%exn150421%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn150421%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn150415%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150415%_))
            (let ((_%e150418%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150415%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e150418%_)
                  (macro-inactive-thread-exception-procedure _%e150418%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e150418%_ '())))))
            (if (macro-inactive-thread-exception? _%exn150415%_)
                (macro-inactive-thread-exception-procedure _%exn150415%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn150415%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn150411%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150411%_))
            (let ((_%e150413%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150411%_ 'exception))))
              (macro-initialized-thread-exception? _%e150413%_))
            (macro-initialized-thread-exception? _%exn150411%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn150407%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150407%_))
            (let ((_%e150409%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150407%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e150409%_)
                  (macro-initialized-thread-exception-arguments _%e150409%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e150409%_ '())))))
            (if (macro-initialized-thread-exception? _%exn150407%_)
                (macro-initialized-thread-exception-arguments _%exn150407%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn150407%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn150401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150401%_))
            (let ((_%e150404%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150401%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e150404%_)
                  (macro-initialized-thread-exception-procedure _%e150404%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e150404%_ '())))))
            (if (macro-initialized-thread-exception? _%exn150401%_)
                (macro-initialized-thread-exception-procedure _%exn150401%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn150401%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn150397%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150397%_))
            (let ((_%e150399%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150397%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e150399%_))
            (macro-invalid-hash-number-exception? _%exn150397%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn150393%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150393%_))
            (let ((_%e150395%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150393%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e150395%_)
                  (macro-invalid-hash-number-exception-arguments _%e150395%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e150395%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn150393%_)
                (macro-invalid-hash-number-exception-arguments _%exn150393%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn150393%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn150387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150387%_))
            (let ((_%e150390%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150387%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e150390%_)
                  (macro-invalid-hash-number-exception-procedure _%e150390%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e150390%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn150387%_)
                (macro-invalid-hash-number-exception-procedure _%exn150387%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn150387%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn150383%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150383%_))
            (let ((_%e150385%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150383%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e150385%_))
            (macro-invalid-utf8-encoding-exception? _%exn150383%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn150379%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150379%_))
            (let ((_%e150381%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150379%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e150381%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e150381%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e150381%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn150379%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn150379%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn150379%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn150373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150373%_))
            (let ((_%e150376%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150373%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e150376%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e150376%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e150376%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn150373%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn150373%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn150373%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn150369%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150369%_))
            (let ((_%e150371%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150369%_ 'exception))))
              (macro-join-timeout-exception? _%e150371%_))
            (macro-join-timeout-exception? _%exn150369%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn150365%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150365%_))
            (let ((_%e150367%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150365%_ 'exception))))
              (if (macro-join-timeout-exception? _%e150367%_)
                  (macro-join-timeout-exception-arguments _%e150367%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e150367%_ '())))))
            (if (macro-join-timeout-exception? _%exn150365%_)
                (macro-join-timeout-exception-arguments _%exn150365%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn150365%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn150359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150359%_))
            (let ((_%e150362%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150359%_ 'exception))))
              (if (macro-join-timeout-exception? _%e150362%_)
                  (macro-join-timeout-exception-procedure _%e150362%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e150362%_ '())))))
            (if (macro-join-timeout-exception? _%exn150359%_)
                (macro-join-timeout-exception-procedure _%exn150359%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn150359%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn150355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150355%_))
            (let ((_%e150357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150355%_ 'exception))))
              (macro-keyword-expected-exception? _%e150357%_))
            (macro-keyword-expected-exception? _%exn150355%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn150351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150351%_))
            (let ((_%e150353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150351%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e150353%_)
                  (macro-keyword-expected-exception-arguments _%e150353%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e150353%_ '())))))
            (if (macro-keyword-expected-exception? _%exn150351%_)
                (macro-keyword-expected-exception-arguments _%exn150351%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn150351%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn150345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150345%_))
            (let ((_%e150348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150345%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e150348%_)
                  (macro-keyword-expected-exception-procedure _%e150348%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e150348%_ '())))))
            (if (macro-keyword-expected-exception? _%exn150345%_)
                (macro-keyword-expected-exception-procedure _%exn150345%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn150345%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn150341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150341%_))
            (let ((_%e150343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150341%_ 'exception))))
              (macro-length-mismatch-exception? _%e150343%_))
            (macro-length-mismatch-exception? _%exn150341%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn150337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150337%_))
            (let ((_%e150339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150337%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150339%_)
                  (macro-length-mismatch-exception-arg-id _%e150339%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e150339%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150337%_)
                (macro-length-mismatch-exception-arg-id _%exn150337%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn150337%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn150333%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150333%_))
            (let ((_%e150335%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150333%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150335%_)
                  (macro-length-mismatch-exception-arguments _%e150335%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e150335%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150333%_)
                (macro-length-mismatch-exception-arguments _%exn150333%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn150333%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn150327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150327%_))
            (let ((_%e150330%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150327%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150330%_)
                  (macro-length-mismatch-exception-procedure _%e150330%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e150330%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150327%_)
                (macro-length-mismatch-exception-procedure _%exn150327%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn150327%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn150323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150323%_))
            (let ((_%e150325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150323%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e150325%_))
            (macro-mailbox-receive-timeout-exception? _%exn150323%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn150319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150319%_))
            (let ((_%e150321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150319%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e150321%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e150321%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e150321%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn150319%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn150319%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn150319%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn150313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150313%_))
            (let ((_%e150316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150313%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e150316%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e150316%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e150316%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn150313%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn150313%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn150313%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn150309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150309%_))
            (let ((_%e150311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150309%_ 'exception))))
              (macro-module-not-found-exception? _%e150311%_))
            (macro-module-not-found-exception? _%exn150309%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn150305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150305%_))
            (let ((_%e150307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150305%_ 'exception))))
              (if (macro-module-not-found-exception? _%e150307%_)
                  (macro-module-not-found-exception-arguments _%e150307%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e150307%_ '())))))
            (if (macro-module-not-found-exception? _%exn150305%_)
                (macro-module-not-found-exception-arguments _%exn150305%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn150305%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn150299%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150299%_))
            (let ((_%e150302%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150299%_ 'exception))))
              (if (macro-module-not-found-exception? _%e150302%_)
                  (macro-module-not-found-exception-procedure _%e150302%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e150302%_ '())))))
            (if (macro-module-not-found-exception? _%exn150299%_)
                (macro-module-not-found-exception-procedure _%exn150299%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn150299%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn150293%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150293%_))
            (let ((_%e150296%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150293%_ 'exception))))
              (macro-multiple-c-return-exception? _%e150296%_))
            (macro-multiple-c-return-exception? _%exn150293%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn150289%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150289%_))
            (let ((_%e150291%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150289%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e150291%_))
            (macro-no-such-file-or-directory-exception? _%exn150289%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn150285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150285%_))
            (let ((_%e150287%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150285%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e150287%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e150287%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e150287%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn150285%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn150285%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn150285%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn150279%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150279%_))
            (let ((_%e150282%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150279%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e150282%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e150282%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e150282%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn150279%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn150279%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn150279%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn150275%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150275%_))
            (let ((_%e150277%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150275%_ 'exception))))
              (macro-noncontinuable-exception? _%e150277%_))
            (macro-noncontinuable-exception? _%exn150275%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn150269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150269%_))
            (let ((_%e150272%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150269%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e150272%_)
                  (macro-noncontinuable-exception-reason _%e150272%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e150272%_ '())))))
            (if (macro-noncontinuable-exception? _%exn150269%_)
                (macro-noncontinuable-exception-reason _%exn150269%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn150269%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn150265%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150265%_))
            (let ((_%e150267%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150265%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e150267%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn150265%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn150261%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150261%_))
            (let ((_%e150263%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150261%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e150263%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e150263%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e150263%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn150261%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn150261%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn150261%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn150255%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150255%_))
            (let ((_%e150258%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150255%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e150258%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e150258%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e150258%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn150255%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn150255%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn150255%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn150251%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150251%_))
            (let ((_%e150253%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150251%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e150253%_))
            (macro-nonprocedure-operator-exception? _%exn150251%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn150247%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150247%_))
            (let ((_%e150249%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150247%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150249%_)
                  (macro-nonprocedure-operator-exception-arguments _%e150249%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e150249%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150247%_)
                (macro-nonprocedure-operator-exception-arguments _%exn150247%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn150247%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn150243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150243%_))
            (let ((_%e150245%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150243%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150245%_)
                  (macro-nonprocedure-operator-exception-code _%e150245%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e150245%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150243%_)
                (macro-nonprocedure-operator-exception-code _%exn150243%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn150243%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn150239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150239%_))
            (let ((_%e150241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150239%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150241%_)
                  (macro-nonprocedure-operator-exception-operator _%e150241%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e150241%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150239%_)
                (macro-nonprocedure-operator-exception-operator _%exn150239%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn150239%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn150233%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150233%_))
            (let ((_%e150236%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150233%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150236%_)
                  (macro-nonprocedure-operator-exception-rte _%e150236%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e150236%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150233%_)
                (macro-nonprocedure-operator-exception-rte _%exn150233%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn150233%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn150229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150229%_))
            (let ((_%e150231%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150229%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e150231%_))
            (macro-not-in-compilation-context-exception? _%exn150229%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn150225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150225%_))
            (let ((_%e150227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150225%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e150227%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e150227%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e150227%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn150225%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn150225%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn150225%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn150219%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150219%_))
            (let ((_%e150222%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150219%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e150222%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e150222%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e150222%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn150219%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn150219%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn150219%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn150215%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150215%_))
            (let ((_%e150217%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150215%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e150217%_))
            (macro-number-of-arguments-limit-exception? _%exn150215%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn150211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150211%_))
            (let ((_%e150213%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150211%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e150213%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e150213%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e150213%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn150211%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn150211%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn150211%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn150205%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150205%_))
            (let ((_%e150208%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150205%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e150208%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e150208%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e150208%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn150205%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn150205%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn150205%_ '())))))))
    (define os-exception?
      (lambda (_%exn150201%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150201%_))
            (let ((_%e150203%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150201%_ 'exception))))
              (macro-os-exception? _%e150203%_))
            (macro-os-exception? _%exn150201%_))))
    (define os-exception-arguments
      (lambda (_%exn150197%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150197%_))
            (let ((_%e150199%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150197%_ 'exception))))
              (if (macro-os-exception? _%e150199%_)
                  (macro-os-exception-arguments _%e150199%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e150199%_ '())))))
            (if (macro-os-exception? _%exn150197%_)
                (macro-os-exception-arguments _%exn150197%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn150197%_ '())))))))
    (define os-exception-code
      (lambda (_%exn150193%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150193%_))
            (let ((_%e150195%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150193%_ 'exception))))
              (if (macro-os-exception? _%e150195%_)
                  (macro-os-exception-code _%e150195%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e150195%_ '())))))
            (if (macro-os-exception? _%exn150193%_)
                (macro-os-exception-code _%exn150193%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn150193%_ '())))))))
    (define os-exception-message
      (lambda (_%exn150189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150189%_))
            (let ((_%e150191%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150189%_ 'exception))))
              (if (macro-os-exception? _%e150191%_)
                  (macro-os-exception-message _%e150191%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e150191%_ '())))))
            (if (macro-os-exception? _%exn150189%_)
                (macro-os-exception-message _%exn150189%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn150189%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn150183%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150183%_))
            (let ((_%e150186%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150183%_ 'exception))))
              (if (macro-os-exception? _%e150186%_)
                  (macro-os-exception-procedure _%e150186%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e150186%_ '())))))
            (if (macro-os-exception? _%exn150183%_)
                (macro-os-exception-procedure _%exn150183%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn150183%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn150179%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150179%_))
            (let ((_%e150181%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150179%_ 'exception))))
              (macro-permission-denied-exception? _%e150181%_))
            (macro-permission-denied-exception? _%exn150179%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn150175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150175%_))
            (let ((_%e150177%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150175%_ 'exception))))
              (if (macro-permission-denied-exception? _%e150177%_)
                  (macro-permission-denied-exception-arguments _%e150177%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e150177%_ '())))))
            (if (macro-permission-denied-exception? _%exn150175%_)
                (macro-permission-denied-exception-arguments _%exn150175%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn150175%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn150169%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150169%_))
            (let ((_%e150172%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150169%_ 'exception))))
              (if (macro-permission-denied-exception? _%e150172%_)
                  (macro-permission-denied-exception-procedure _%e150172%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e150172%_ '())))))
            (if (macro-permission-denied-exception? _%exn150169%_)
                (macro-permission-denied-exception-procedure _%exn150169%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn150169%_ '())))))))
    (define range-exception?
      (lambda (_%exn150165%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150165%_))
            (let ((_%e150167%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150165%_ 'exception))))
              (macro-range-exception? _%e150167%_))
            (macro-range-exception? _%exn150165%_))))
    (define range-exception-arg-id
      (lambda (_%exn150161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150161%_))
            (let ((_%e150163%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150161%_ 'exception))))
              (if (macro-range-exception? _%e150163%_)
                  (macro-range-exception-arg-id _%e150163%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e150163%_ '())))))
            (if (macro-range-exception? _%exn150161%_)
                (macro-range-exception-arg-id _%exn150161%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn150161%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn150157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150157%_))
            (let ((_%e150159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150157%_ 'exception))))
              (if (macro-range-exception? _%e150159%_)
                  (macro-range-exception-arguments _%e150159%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e150159%_ '())))))
            (if (macro-range-exception? _%exn150157%_)
                (macro-range-exception-arguments _%exn150157%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn150157%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn150151%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150151%_))
            (let ((_%e150154%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150151%_ 'exception))))
              (if (macro-range-exception? _%e150154%_)
                  (macro-range-exception-procedure _%e150154%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e150154%_ '())))))
            (if (macro-range-exception? _%exn150151%_)
                (macro-range-exception-procedure _%exn150151%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn150151%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn150147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150147%_))
            (let ((_%e150149%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150147%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e150149%_))
            (macro-rpc-remote-error-exception? _%exn150147%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn150143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150143%_))
            (let ((_%e150145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150143%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150145%_)
                  (macro-rpc-remote-error-exception-arguments _%e150145%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e150145%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150143%_)
                (macro-rpc-remote-error-exception-arguments _%exn150143%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn150143%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn150139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150139%_))
            (let ((_%e150141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150139%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150141%_)
                  (macro-rpc-remote-error-exception-message _%e150141%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e150141%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150139%_)
                (macro-rpc-remote-error-exception-message _%exn150139%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn150139%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn150133%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150133%_))
            (let ((_%e150136%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150133%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150136%_)
                  (macro-rpc-remote-error-exception-procedure _%e150136%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e150136%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150133%_)
                (macro-rpc-remote-error-exception-procedure _%exn150133%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn150133%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn150129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150129%_))
            (let ((_%e150131%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150129%_ 'exception))))
              (macro-scheduler-exception? _%e150131%_))
            (macro-scheduler-exception? _%exn150129%_))))
    (define scheduler-exception-reason
      (lambda (_%exn150123%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150123%_))
            (let ((_%e150126%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150123%_ 'exception))))
              (if (macro-scheduler-exception? _%e150126%_)
                  (macro-scheduler-exception-reason _%e150126%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e150126%_ '())))))
            (if (macro-scheduler-exception? _%exn150123%_)
                (macro-scheduler-exception-reason _%exn150123%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn150123%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn150119%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150119%_))
            (let ((_%e150121%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150119%_ 'exception))))
              (macro-sfun-conversion-exception? _%e150121%_))
            (macro-sfun-conversion-exception? _%exn150119%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn150115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150115%_))
            (let ((_%e150117%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150115%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150117%_)
                  (macro-sfun-conversion-exception-arguments _%e150117%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e150117%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150115%_)
                (macro-sfun-conversion-exception-arguments _%exn150115%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn150115%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn150111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150111%_))
            (let ((_%e150113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150111%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150113%_)
                  (macro-sfun-conversion-exception-code _%e150113%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e150113%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150111%_)
                (macro-sfun-conversion-exception-code _%exn150111%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn150111%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn150107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150107%_))
            (let ((_%e150109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150107%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150109%_)
                  (macro-sfun-conversion-exception-message _%e150109%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e150109%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150107%_)
                (macro-sfun-conversion-exception-message _%exn150107%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn150107%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn150101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150101%_))
            (let ((_%e150104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150101%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150104%_)
                  (macro-sfun-conversion-exception-procedure _%e150104%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e150104%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150101%_)
                (macro-sfun-conversion-exception-procedure _%exn150101%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn150101%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn150095%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150095%_))
            (let ((_%e150098%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150095%_ 'exception))))
              (macro-stack-overflow-exception? _%e150098%_))
            (macro-stack-overflow-exception? _%exn150095%_))))
    (define started-thread-exception?
      (lambda (_%exn150091%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150091%_))
            (let ((_%e150093%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150091%_ 'exception))))
              (macro-started-thread-exception? _%e150093%_))
            (macro-started-thread-exception? _%exn150091%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn150087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150087%_))
            (let ((_%e150089%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150087%_ 'exception))))
              (if (macro-started-thread-exception? _%e150089%_)
                  (macro-started-thread-exception-arguments _%e150089%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e150089%_ '())))))
            (if (macro-started-thread-exception? _%exn150087%_)
                (macro-started-thread-exception-arguments _%exn150087%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn150087%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn150081%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150081%_))
            (let ((_%e150084%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150081%_ 'exception))))
              (if (macro-started-thread-exception? _%e150084%_)
                  (macro-started-thread-exception-procedure _%e150084%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e150084%_ '())))))
            (if (macro-started-thread-exception? _%exn150081%_)
                (macro-started-thread-exception-procedure _%exn150081%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn150081%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn150077%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150077%_))
            (let ((_%e150079%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150077%_ 'exception))))
              (macro-terminated-thread-exception? _%e150079%_))
            (macro-terminated-thread-exception? _%exn150077%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn150073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150073%_))
            (let ((_%e150075%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150073%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e150075%_)
                  (macro-terminated-thread-exception-arguments _%e150075%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e150075%_ '())))))
            (if (macro-terminated-thread-exception? _%exn150073%_)
                (macro-terminated-thread-exception-arguments _%exn150073%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn150073%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn150067%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150067%_))
            (let ((_%e150070%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150067%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e150070%_)
                  (macro-terminated-thread-exception-procedure _%e150070%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e150070%_ '())))))
            (if (macro-terminated-thread-exception? _%exn150067%_)
                (macro-terminated-thread-exception-procedure _%exn150067%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn150067%_ '())))))))
    (define type-exception?
      (lambda (_%exn150063%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150063%_))
            (let ((_%e150065%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150063%_ 'exception))))
              (macro-type-exception? _%e150065%_))
            (macro-type-exception? _%exn150063%_))))
    (define type-exception-arg-id
      (lambda (_%exn150059%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150059%_))
            (let ((_%e150061%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150059%_ 'exception))))
              (if (macro-type-exception? _%e150061%_)
                  (macro-type-exception-arg-id _%e150061%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e150061%_ '())))))
            (if (macro-type-exception? _%exn150059%_)
                (macro-type-exception-arg-id _%exn150059%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn150059%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn150055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150055%_))
            (let ((_%e150057%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150055%_ 'exception))))
              (if (macro-type-exception? _%e150057%_)
                  (macro-type-exception-arguments _%e150057%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e150057%_ '())))))
            (if (macro-type-exception? _%exn150055%_)
                (macro-type-exception-arguments _%exn150055%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn150055%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn150051%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150051%_))
            (let ((_%e150053%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150051%_ 'exception))))
              (if (macro-type-exception? _%e150053%_)
                  (macro-type-exception-procedure _%e150053%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e150053%_ '())))))
            (if (macro-type-exception? _%exn150051%_)
                (macro-type-exception-procedure _%exn150051%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn150051%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn150045%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150045%_))
            (let ((_%e150048%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150045%_ 'exception))))
              (if (macro-type-exception? _%e150048%_)
                  (macro-type-exception-type-id _%e150048%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e150048%_ '())))))
            (if (macro-type-exception? _%exn150045%_)
                (macro-type-exception-type-id _%exn150045%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn150045%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn150041%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150041%_))
            (let ((_%e150043%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150041%_ 'exception))))
              (macro-unbound-global-exception? _%e150043%_))
            (macro-unbound-global-exception? _%exn150041%_))))
    (define unbound-global-exception-code
      (lambda (_%exn150037%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150037%_))
            (let ((_%e150039%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150037%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150039%_)
                  (macro-unbound-global-exception-code _%e150039%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e150039%_ '())))))
            (if (macro-unbound-global-exception? _%exn150037%_)
                (macro-unbound-global-exception-code _%exn150037%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn150037%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn150033%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150033%_))
            (let ((_%e150035%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150033%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150035%_)
                  (macro-unbound-global-exception-rte _%e150035%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e150035%_ '())))))
            (if (macro-unbound-global-exception? _%exn150033%_)
                (macro-unbound-global-exception-rte _%exn150033%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn150033%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn150027%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150027%_))
            (let ((_%e150030%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150027%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150030%_)
                  (macro-unbound-global-exception-variable _%e150030%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e150030%_ '())))))
            (if (macro-unbound-global-exception? _%exn150027%_)
                (macro-unbound-global-exception-variable _%exn150027%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn150027%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn150023%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150023%_))
            (let ((_%e150025%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150023%_ 'exception))))
              (macro-unbound-key-exception? _%e150025%_))
            (macro-unbound-key-exception? _%exn150023%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn150019%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150019%_))
            (let ((_%e150021%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150019%_ 'exception))))
              (if (macro-unbound-key-exception? _%e150021%_)
                  (macro-unbound-key-exception-arguments _%e150021%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e150021%_ '())))))
            (if (macro-unbound-key-exception? _%exn150019%_)
                (macro-unbound-key-exception-arguments _%exn150019%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn150019%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn150013%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150013%_))
            (let ((_%e150016%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150013%_ 'exception))))
              (if (macro-unbound-key-exception? _%e150016%_)
                  (macro-unbound-key-exception-procedure _%e150016%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e150016%_ '())))))
            (if (macro-unbound-key-exception? _%exn150013%_)
                (macro-unbound-key-exception-procedure _%exn150013%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn150013%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn150009%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150009%_))
            (let ((_%e150011%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150009%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e150011%_))
            (macro-unbound-os-environment-variable-exception? _%exn150009%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn150005%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150005%_))
            (let ((_%e150007%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150005%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e150007%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e150007%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e150007%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn150005%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn150005%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn150005%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn149999%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149999%_))
            (let ((_%e150002%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149999%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e150002%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e150002%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e150002%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn149999%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn149999%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn149999%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn149995%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149995%_))
            (let ((_%e149997%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149995%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e149997%_))
            (macro-unbound-serial-number-exception? _%exn149995%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn149991%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149991%_))
            (let ((_%e149993%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149991%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e149993%_)
                  (macro-unbound-serial-number-exception-arguments _%e149993%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e149993%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn149991%_)
                (macro-unbound-serial-number-exception-arguments _%exn149991%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn149991%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn149985%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149985%_))
            (let ((_%e149988%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149985%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e149988%_)
                  (macro-unbound-serial-number-exception-procedure _%e149988%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e149988%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn149985%_)
                (macro-unbound-serial-number-exception-procedure _%exn149985%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn149985%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn149981%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149981%_))
            (let ((_%e149983%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149981%_ 'exception))))
              (macro-uncaught-exception? _%e149983%_))
            (macro-uncaught-exception? _%exn149981%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn149977%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149977%_))
            (let ((_%e149979%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149977%_ 'exception))))
              (if (macro-uncaught-exception? _%e149979%_)
                  (macro-uncaught-exception-arguments _%e149979%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e149979%_ '())))))
            (if (macro-uncaught-exception? _%exn149977%_)
                (macro-uncaught-exception-arguments _%exn149977%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn149977%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn149973%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149973%_))
            (let ((_%e149975%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149973%_ 'exception))))
              (if (macro-uncaught-exception? _%e149975%_)
                  (macro-uncaught-exception-procedure _%e149975%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e149975%_ '())))))
            (if (macro-uncaught-exception? _%exn149973%_)
                (macro-uncaught-exception-procedure _%exn149973%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn149973%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn149967%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149967%_))
            (let ((_%e149970%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149967%_ 'exception))))
              (if (macro-uncaught-exception? _%e149970%_)
                  (macro-uncaught-exception-reason _%e149970%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e149970%_ '())))))
            (if (macro-uncaught-exception? _%exn149967%_)
                (macro-uncaught-exception-reason _%exn149967%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn149967%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn149963%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149963%_))
            (let ((_%e149965%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149963%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e149965%_))
            (macro-uninitialized-thread-exception? _%exn149963%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn149959%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149959%_))
            (let ((_%e149961%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149959%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e149961%_)
                  (macro-uninitialized-thread-exception-arguments _%e149961%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e149961%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn149959%_)
                (macro-uninitialized-thread-exception-arguments _%exn149959%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn149959%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn149953%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149953%_))
            (let ((_%e149956%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149953%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e149956%_)
                  (macro-uninitialized-thread-exception-procedure _%e149956%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e149956%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn149953%_)
                (macro-uninitialized-thread-exception-procedure _%exn149953%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn149953%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn149949%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149949%_))
            (let ((_%e149951%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149949%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e149951%_))
            (macro-unknown-keyword-argument-exception? _%exn149949%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn149945%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149945%_))
            (let ((_%e149947%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149945%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e149947%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e149947%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e149947%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn149945%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn149945%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn149945%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn149939%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149939%_))
            (let ((_%e149942%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149939%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e149942%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e149942%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e149942%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn149939%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn149939%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn149939%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn149935%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149935%_))
            (let ((_%e149937%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149935%_ 'exception))))
              (macro-unterminated-process-exception? _%e149937%_))
            (macro-unterminated-process-exception? _%exn149935%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn149931%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149931%_))
            (let ((_%e149933%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149931%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e149933%_)
                  (macro-unterminated-process-exception-arguments _%e149933%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e149933%_ '())))))
            (if (macro-unterminated-process-exception? _%exn149931%_)
                (macro-unterminated-process-exception-arguments _%exn149931%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn149931%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn149925%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149925%_))
            (let ((_%e149928%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149925%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e149928%_)
                  (macro-unterminated-process-exception-procedure _%e149928%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e149928%_ '())))))
            (if (macro-unterminated-process-exception? _%exn149925%_)
                (macro-unterminated-process-exception-procedure _%exn149925%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn149925%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn149921%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149921%_))
            (let ((_%e149923%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149921%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e149923%_))
            (macro-wrong-number-of-arguments-exception? _%exn149921%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn149917%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149917%_))
            (let ((_%e149919%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149917%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e149919%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e149919%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e149919%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn149917%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn149917%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn149917%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn149911%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149911%_))
            (let ((_%e149914%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149911%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e149914%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e149914%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e149914%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn149911%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn149911%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn149911%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn149907%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149907%_))
            (let ((_%e149909%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149907%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e149909%_))
            (macro-wrong-number-of-values-exception? _%exn149907%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn149903%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149903%_))
            (let ((_%e149905%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149903%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149905%_)
                  (macro-wrong-number-of-values-exception-code _%e149905%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e149905%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149903%_)
                (macro-wrong-number-of-values-exception-code _%exn149903%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn149903%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn149899%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149899%_))
            (let ((_%e149901%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149899%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149901%_)
                  (macro-wrong-number-of-values-exception-rte _%e149901%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e149901%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149899%_)
                (macro-wrong-number-of-values-exception-rte _%exn149899%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn149899%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn149893%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149893%_))
            (let ((_%e149896%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149893%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e149896%_)
                  (macro-wrong-number-of-values-exception-vals _%e149896%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e149896%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn149893%_)
                (macro-wrong-number-of-values-exception-vals _%exn149893%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn149893%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn149887%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn149887%_))
            (let ((_%e149890%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn149887%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e149890%_))
            (macro-wrong-processor-c-return-exception? _%exn149887%_))))))
