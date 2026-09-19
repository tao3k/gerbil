(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/error::timestamp 1789839223)
  (begin
    (define Exception::t
      (let ((__tmp151691 (list)))
        (declare (not safe))
        (make-class-type 'Exception::t 'Exception __tmp151691 '() '() '#f)))
    (define Exception?
      (let () (declare (not safe)) (__make-class-predicate Exception::t)))
    (define make-Exception
      (lambda _%$args151609%_
        (apply make-instance Exception::t _%$args151609%_)))
    (define StackTrace::t
      (let ((__tmp151692 (list)))
        (declare (not safe))
        (make-class-type
         'StackTrace::t
         'StackTrace
         __tmp151692
         '(continuation)
         '((transparent: . #t))
         '#f)))
    (define StackTrace?
      (let () (declare (not safe)) (__make-class-predicate StackTrace::t)))
    (define make-StackTrace
      (lambda _%$args151606%_
        (apply make-instance StackTrace::t _%$args151606%_)))
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
      (let ((__tmp151693 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'Error::t
         'Error
         __tmp151693
         '(message irritants where)
         '((transparent: . #t))
         ':init!)))
    (define Error?
      (let () (declare (not safe)) (__make-class-predicate Error::t)))
    (define make-Error
      (lambda _%$args151603%_ (apply make-instance Error::t _%$args151603%_)))
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
      (let ((__tmp151694 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'ContractViolation::t
         'ContractViolation
         __tmp151694
         '()
         '()
         ':init!)))
    (define ContractViolation?
      (let ()
        (declare (not safe))
        (__make-class-predicate ContractViolation::t)))
    (define make-ContractViolation
      (lambda _%$args151600%_
        (apply make-instance ContractViolation::t _%$args151600%_)))
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
      (let ((__tmp151695 (list StackTrace::t Exception::t)))
        (declare (not safe))
        (make-class-type
         'RuntimeException::t
         'RuntimeException
         __tmp151695
         '(exception)
         '((transparent: . #t))
         '#f)))
    (define RuntimeException?
      (let ()
        (declare (not safe))
        (__make-class-predicate RuntimeException::t)))
    (define make-RuntimeException
      (lambda _%$args151597%_
        (apply make-instance RuntimeException::t _%$args151597%_)))
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
      (lambda (_%exn151592%_ _%continue151593%_)
        (let ((_%exn151595%_ (wrap-runtime-exception _%exn151592%_)))
          (declare (not safe))
          (##repl-exception-handler-hook _%exn151595%_ _%continue151593%_))))
    (let ()
      (declare (not safe))
      (##primordial-exception-handler-hook-set! gerbil-exception-handler-hook))
    (define raise
      (lambda (_%exn151588%_)
        (if (let ()
              (declare (not safe))
              (class-instance? StackTrace::t _%exn151588%_))
            (if (let ()
                  (declare (not safe))
                  (unchecked-slot-ref _%exn151588%_ 'continuation))
                '#!void
                (let ((__tmp151696
                       (lambda (_%cont151590%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-slot-set!
                            _%exn151588%_
                            'continuation
                            _%cont151590%_)))))
                  (declare (not safe))
                  (##continuation-capture __tmp151696)))
            '#!void)
        (let () (declare (not safe)) (##raise _%exn151588%_))))
    (define error
      (lambda (_%message151585%_ . _%irritants151586%_)
        (raise (let ((__obj151688
                      (let ()
                        (declare (not safe))
                        (##structure Error::t '#f '#f '#f '#f))))
                 (Error:::init!
                  __obj151688
                  _%message151585%_
                  'irritants:
                  _%irritants151586%_)
                 __obj151688))))
    (define __raise-contract-violation-error__%
      (lambda (_%@@keywords151560%_
               _%$%ctx151555151561%_
               _%$%contract-expr151556151562%_
               _%$%value151557151563%_
               _%message151564%_)
        (let* ((_%ctx151566%_
                (if (eq? _%$%ctx151555151561%_ absent-value)
                    '#f
                    _%$%ctx151555151561%_))
               (_%contract-expr151568%_
                (if (eq? _%$%contract-expr151556151562%_ absent-value)
                    '#f
                    _%$%contract-expr151556151562%_))
               (_%value151570%_
                (if (eq? _%$%value151557151563%_ absent-value)
                    '#f
                    _%$%value151557151563%_)))
          (raise (let ((__obj151689
                        (let ()
                          (declare (not safe))
                          (##structure ContractViolation::t '#f '#f '#f '#f))))
                   (ContractViolation:::init!
                    __obj151689
                    _%message151564%_
                    'where:
                    _%ctx151566%_
                    'irritants:
                    (cons 'contract:
                          (cons _%contract-expr151568%_
                                (cons 'value: (cons _%value151570%_ '())))))
                   __obj151689)))))
    (define __raise-contract-violation-error__@
      (lambda (_%@@keywords151575%_ . _%args151576%_)
        (apply __raise-contract-violation-error__%
               _%@@keywords151575%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151575%_
                  'context:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151575%_
                  'contract:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151575%_
                  'value:
                  absent-value))
               _%args151576%_)))
    (define __raise-contract-violation-error
      (lambda _%$%args151558151582%_
        (apply keyword-dispatch
               '#(context: #f value: contract:)
               __raise-contract-violation-error__@
               _%$%args151558151582%_)))
    (set! raise-contract-violation-error __raise-contract-violation-error)
    (define contract-violation-error? ContractViolation?)
    (define __with-exception-handler
      (lambda (_%handler151529%_ _%thunk151530%_)
        (let* ((_%handler151533%_ _%handler151529%_)
               (_%thunk151541%_ _%thunk151530%_)
               (__tmp151697
                (lambda (_%exn151550%_)
                  (let ((_%exn151552%_ (wrap-runtime-exception _%exn151550%_)))
                    (declare (not safe))
                    (_%handler151533%_ _%exn151552%_)))))
          (declare (not safe))
          (##with-exception-handler __tmp151697 _%thunk151541%_))))
    (define with-exception-handler
      (lambda (_%handler151504%_ _%thunk151505%_)
        (if (procedure? _%handler151504%_)
            (let ((_%handler151509%_ _%handler151504%_))
              (if (procedure? _%thunk151505%_)
                  (let ((_%thunk151519%_ _%thunk151505%_))
                    (__with-exception-handler
                     _%handler151509%_
                     _%thunk151519%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@60.54-60.59"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk151505%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@60.31-60.38"
               'contract:
               'procedure?
               'value:
               _%handler151504%_)
              '#!void))))
    (define __with-catch
      (lambda (_%handler151446%_ _%thunk151447%_)
        (let* ((_%handler151450%_ _%handler151446%_)
               (_%thunk151458%_ _%thunk151447%_)
               (__tmp151698
                (lambda (_%cont151467%_)
                  (let* ((_%handler151471%_
                          (lambda (_%exn151469%_)
                            (let ()
                              (declare (not safe))
                              (##continuation-graft
                               _%cont151467%_
                               _%handler151450%_
                               _%exn151469%_))))
                         (_%thunk151474%_ _%thunk151458%_)
                         (_%handler151479%_ _%handler151471%_)
                         (_%thunk151494%_ _%thunk151474%_))
                    (__with-exception-handler
                     _%handler151479%_
                     _%thunk151494%_)))))
          (declare (not safe))
          (##continuation-capture __tmp151698))))
    (define with-catch
      (lambda (_%handler151421%_ _%thunk151422%_)
        (if (procedure? _%handler151421%_)
            (let ((_%handler151426%_ _%handler151421%_))
              (if (procedure? _%thunk151422%_)
                  (let ((_%thunk151436%_ _%thunk151422%_))
                    (__with-catch _%handler151426%_ _%thunk151436%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/error.ss\"@67.42-67.47"
                     'contract:
                     'procedure?
                     'value:
                     _%thunk151422%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/error.ss\"@67.19-67.26"
               'contract:
               'procedure?
               'value:
               _%handler151421%_)
              '#!void))))
    (define with-exception-catcher with-catch)
    (define wrap-runtime-exception
      (lambda (_%exn151408%_)
        (if (or (heap-overflow-exception? _%exn151408%_)
                (stack-overflow-exception? _%exn151408%_))
            _%exn151408%_
            (if (let ()
                  (declare (not safe))
                  (class-instance? Exception::t _%exn151408%_))
                _%exn151408%_
                (if (macro-exception? _%exn151408%_)
                    (let ((_%rte151416%_
                           (let ((__obj151690
                                  (let ()
                                    (declare (not safe))
                                    (##structure
                                     RuntimeException::t
                                     '#f
                                     '#f))))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-set!
                                __obj151690
                                _%exn151408%_
                                '2
                                '#f
                                '#f))
                             __obj151690)))
                      (let ((__tmp151699
                             (lambda (_%cont151418%_)
                               (let ((__tmp151700
                                      (let ()
                                        (declare (not safe))
                                        (##continuation-next _%cont151418%_))))
                                 (declare (not safe))
                                 (unchecked-slot-set!
                                  _%rte151416%_
                                  'continuation
                                  __tmp151700)))))
                        (declare (not safe))
                        (##continuation-capture __tmp151699))
                      _%rte151416%_)
                    _%exn151408%_)))))
    (define exception? Exception?)
    (define error? Error?)
    (define error-object?
      (lambda (_%obj151403%_)
        (let ((_%$e151405%_
               (let ()
                 (declare (not safe))
                 (class-instance? Error::t _%obj151403%_))))
          (if _%$e151405%_ _%$e151405%_ (error-exception? _%obj151403%_)))))
    (define error-message
      (lambda (_%obj151362%_)
        (let ((_%$e151398%_
               (let* ((_%obj151364%_ _%obj151362%_)
                      (_%slot151367%_ 'message)
                      (_%E151370%_ false)
                      (_%slot151375%_ _%slot151367%_)
                      (_%E151388%_ _%E151370%_))
                 (declare (not safe))
                 (__slot-ref__% _%obj151364%_ _%slot151375%_ _%E151388%_))))
          (if _%$e151398%_
              _%$e151398%_
              (if (error-exception? _%obj151362%_)
                  (error-exception-message _%obj151362%_)
                  '#f)))))
    (define error-irritants
      (lambda (_%obj151357%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj151357%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj151357%_ 'irritants))
            (if (error-exception? _%obj151357%_)
                (error-exception-parameters _%obj151357%_)
                '#f))))
    (define error-trace
      (lambda (_%obj151355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? Error::t _%obj151355%_))
            (let ()
              (declare (not safe))
              (unchecked-slot-ref _%obj151355%_ 'where))
            '#f)))
    (define display-exception__%
      (lambda (_%e151316%_ _%port151317%_)
        (let ((_%$e151339%_
               (let* ((_%obj151319%_ _%e151316%_)
                      (_%id151322%_ 'display-exception)
                      (_%id151327%_ _%id151322%_))
                 (declare (not safe))
                 (__method-ref _%obj151319%_ _%id151327%_))))
          (if _%$e151339%_
              (_%$e151339%_ _%e151316%_ _%port151317%_)
              (let ()
                (declare (not safe))
                (##default-display-exception _%e151316%_ _%port151317%_))))))
    (define display-exception__0
      (lambda (_%e151348%_)
        (let ((_%port151350%_ (current-error-port)))
          (display-exception__% _%e151348%_ _%port151350%_))))
    (define display-exception
      (lambda _g151701_
        (let ((_g151702_ (let () (declare (not safe)) (##length _g151701_))))
          (cond ((let () (declare (not safe)) (##fx= _g151702_ 1))
                 (apply display-exception__0 _g151701_))
                ((let () (declare (not safe)) (##fx= _g151702_ 2))
                 (apply display-exception__% _g151701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-exception
                  _g151701_))))))
    (let ()
      (declare (not safe))
      (##display-exception-hook-set! display-exception))
    (define Error:::init!
      (lambda (_%self151294%_ _%message151295%_ . _%rest151296%_)
        (let* ((_%self151299%_ _%self151294%_)
               (_%message151313%_
                (if (string? _%message151295%_)
                    _%message151295%_
                    (call-with-output-string
                     '""
                     (lambda (_%$%g151308151310%_)
                       (display _%message151295%_ _%$%g151308151310%_))))))
          (let ()
            (declare (not safe))
            (unchecked-slot-set! _%self151299%_ 'message _%message151313%_))
          (apply class-instance-init! _%self151299%_ _%rest151296%_))))
    (define Error:::init!::specialize
      (lambda (__klass151611 __method-table151612)
        (let ((__message151613
               (let ((__slot151614
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151611 'message))))
                 (if __slot151614
                     __slot151614
                     (error '"Unknown slot" 'message)))))
          (lambda (_%self151294%_ _%message151295%_ . _%rest151296%_)
            (let* ((_%self151299%_ _%self151294%_)
                   (_%message151313%_
                    (if (string? _%message151295%_)
                        _%message151295%_
                        (call-with-output-string
                         '""
                         (lambda (_%$%g151308151310%_)
                           (display _%message151295%_ _%$%g151308151310%_))))))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151299%_
                 _%message151313%_
                 __message151613
                 '#f
                 '#f))
              (apply class-instance-init! _%self151299%_ _%rest151296%_))))))
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
      (lambda (_%self150999%_ _%port151000%_)
        (let ((_%self151003%_ _%self150999%_))
          (let ((_%tmp-port151013%_ (open-output-string))
                (_%display-error-newline151014%_
                 (> (output-port-column _%port151000%_) '0)))
            (fix-port-width! _%tmp-port151013%_)
            (let ((__tmp151703
                   (lambda ()
                     (if _%display-error-newline151014%_ (newline) '#!void)
                     (display '"*** ERROR IN ")
                     (let ((_%$e151017%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self151003%_ 'where))))
                       (if _%$e151017%_ (display _%$e151017%_) (display '"?")))
                     (let ((__tmp151704
                            (let ((__tmp151705
                                   (let ((_%obj151021%_ _%self151003%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (object? _%obj151021%_))
                                         (let ((_%obj151026%_ _%obj151021%_))
                                           (declare (not safe))
                                           (__object-class _%obj151026%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/error
                                            'contract:
                                            'object?
                                            'value:
                                            _%obj151021%_)
                                           '#!void)))))
                              (declare (not safe))
                              (##type-name __tmp151705))))
                       (declare (not safe))
                       (display* '" [" __tmp151704 '"]: "))
                     (let ((__tmp151706
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self151003%_ 'message))))
                       (declare (not safe))
                       (displayln __tmp151706))
                     (let ((_%irritants151041%_
                            (let ()
                              (declare (not safe))
                              (unchecked-slot-ref _%self151003%_ 'irritants))))
                       (if (null? _%irritants151041%_)
                           '#!void
                           (begin
                             (display '"--- irritants: ")
                             (for-each
                              (lambda (_%obj151043%_)
                                (if (u8vector? _%obj151043%_)
                                    (let ((__tmp151707
                                           (cons '<u8vector>
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##u8vector-length
                                                          _%obj151043%_))
                                                       '()))))
                                      (declare (not safe))
                                      (##write __tmp151707))
                                    (let ()
                                      (declare (not safe))
                                      (##write _%obj151043%_)))
                                (let ()
                                  (declare (not safe))
                                  (##write-char '#\space)))
                              _%irritants151041%_)
                             (newline))))
                     (if (let () (declare (not safe)) (dump-stack-trace?))
                         (let ((_%$%cont151044151046%_
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _%self151003%_
                                   'continuation))))
                           (if _%$%cont151044151046%_
                               (let ((_%cont151048%_ _%$%cont151044151046%_))
                                 (let ()
                                   (declare (not safe))
                                   (displayln '"--- continuation backtrace:"))
                                 (display-continuation-backtrace
                                  _%cont151048%_))
                               '#f))
                         '#!void))))
              (declare (not safe))
              (call-with-parameters__1
               __tmp151703
               current-output-port
               _%tmp-port151013%_))
            (let ((__tmp151708 (get-output-string _%tmp-port151013%_)))
              (declare (not safe))
              (##write-string __tmp151708 _%port151000%_))))))
    (define Error::display-exception::specialize
      (lambda (__klass151615 __method-table151616)
        (let ((__message151617
               (let ((__slot151621
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151615 'message))))
                 (if __slot151621
                     __slot151621
                     (error '"Unknown slot" 'message))))
              (__where151618
               (let ((__slot151622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151615 'where))))
                 (if __slot151622
                     __slot151622
                     (error '"Unknown slot" 'where))))
              (__continuation151619
               (let ((__slot151623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151615 'continuation))))
                 (if __slot151623
                     __slot151623
                     (error '"Unknown slot" 'continuation))))
              (__irritants151620
               (let ((__slot151624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151615 'irritants))))
                 (if __slot151624
                     __slot151624
                     (error '"Unknown slot" 'irritants)))))
          (lambda (_%self150999%_ _%port151000%_)
            (let ((_%self151003%_ _%self150999%_))
              (let ((_%tmp-port151013%_ (open-output-string))
                    (_%display-error-newline151014%_
                     (> (output-port-column _%port151000%_) '0)))
                (fix-port-width! _%tmp-port151013%_)
                (let ((__tmp151709
                       (lambda ()
                         (if _%display-error-newline151014%_ (newline) '#!void)
                         (display '"*** ERROR IN ")
                         (let ((_%$e151017%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self151003%_
                                   __where151618
                                   '#f
                                   '#f))))
                           (if _%$e151017%_
                               (display _%$e151017%_)
                               (display '"?")))
                         (let ((__tmp151710
                                (let ((__tmp151711
                                       (let ((_%obj151021%_ _%self151003%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (object? _%obj151021%_))
                                             (let ((_%obj151026%_
                                                    _%obj151021%_))
                                               (declare (not safe))
                                               (__object-class _%obj151026%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/error
                                                'contract:
                                                'object?
                                                'value:
                                                _%obj151021%_)
                                               '#!void)))))
                                  (declare (not safe))
                                  (##type-name __tmp151711))))
                           (declare (not safe))
                           (display* '" [" __tmp151710 '"]: "))
                         (let ((__tmp151712
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self151003%_
                                   __message151617
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (displayln __tmp151712))
                         (let ((_%irritants151041%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self151003%_
                                   __irritants151620
                                   '#f
                                   '#f))))
                           (if (null? _%irritants151041%_)
                               '#!void
                               (begin
                                 (display '"--- irritants: ")
                                 (for-each
                                  (lambda (_%obj151043%_)
                                    (if (u8vector? _%obj151043%_)
                                        (let ((__tmp151713
                                               (cons '<u8vector>
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##u8vector-length
                                                              _%obj151043%_))
                                                           '()))))
                                          (declare (not safe))
                                          (##write __tmp151713))
                                        (let ()
                                          (declare (not safe))
                                          (##write _%obj151043%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##write-char '#\space)))
                                  _%irritants151041%_)
                                 (newline))))
                         (if (let () (declare (not safe)) (dump-stack-trace?))
                             (let ((_%$%cont151044151046%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self151003%_
                                       __continuation151619
                                       '#f
                                       '#f))))
                               (if _%$%cont151044151046%_
                                   (let ((_%cont151048%_
                                          _%$%cont151044151046%_))
                                     (let ()
                                       (declare (not safe))
                                       (displayln
                                        '"--- continuation backtrace:"))
                                     (display-continuation-backtrace
                                      _%cont151048%_))
                                   '#f))
                             '#!void))))
                  (declare (not safe))
                  (call-with-parameters__1
                   __tmp151709
                   current-output-port
                   _%tmp-port151013%_))
                (let ((__tmp151714 (get-output-string _%tmp-port151013%_)))
                  (declare (not safe))
                  (##write-string __tmp151714 _%port151000%_))))))))
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
      (lambda (_%self150856%_ _%port150857%_)
        (let* ((_%self150860%_ _%self150856%_)
               (_%tmp-port150870%_ (open-output-string)))
          (fix-port-width! _%tmp-port150870%_)
          (let ((__tmp151715
                 (let ()
                   (declare (not safe))
                   (unchecked-slot-ref _%self150860%_ 'exception))))
            (declare (not safe))
            (##default-display-exception __tmp151715 _%tmp-port150870%_))
          (if (let () (declare (not safe)) (dump-stack-trace?))
              (let ((_%$%cont150871150873%_
                     (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _%self150860%_ 'continuation))))
                (if _%$%cont150871150873%_
                    (let ((_%cont150875%_ _%$%cont150871150873%_))
                      (display '"--- continuation backtrace:"
                               _%tmp-port150870%_)
                      (newline _%tmp-port150870%_)
                      (display-continuation-backtrace
                       _%cont150875%_
                       _%tmp-port150870%_))
                    '#f))
              '#!void)
          (let ((__tmp151716 (get-output-string _%tmp-port150870%_)))
            (declare (not safe))
            (##write-string __tmp151716 _%port150857%_)))))
    (define RuntimeException::display-exception::specialize
      (lambda (__klass151625 __method-table151626)
        (let ((__exception151627
               (let ((__slot151629
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151625 'exception))))
                 (if __slot151629
                     __slot151629
                     (error '"Unknown slot" 'exception))))
              (__continuation151628
               (let ((__slot151630
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151625 'continuation))))
                 (if __slot151630
                     __slot151630
                     (error '"Unknown slot" 'continuation)))))
          (lambda (_%self150856%_ _%port150857%_)
            (let* ((_%self150860%_ _%self150856%_)
                   (_%tmp-port150870%_ (open-output-string)))
              (fix-port-width! _%tmp-port150870%_)
              (let ((__tmp151717
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%self150860%_
                        __exception151627
                        '#f
                        '#f))))
                (declare (not safe))
                (##default-display-exception __tmp151717 _%tmp-port150870%_))
              (if (let () (declare (not safe)) (dump-stack-trace?))
                  (let ((_%$%cont150871150873%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self150860%_
                            __continuation151628
                            '#f
                            '#f))))
                    (if _%$%cont150871150873%_
                        (let ((_%cont150875%_ _%$%cont150871150873%_))
                          (display '"--- continuation backtrace:"
                                   _%tmp-port150870%_)
                          (newline _%tmp-port150870%_)
                          (display-continuation-backtrace
                           _%cont150875%_
                           _%tmp-port150870%_))
                        '#f))
                  '#!void)
              (let ((__tmp151718 (get-output-string _%tmp-port150870%_)))
                (declare (not safe))
                (##write-string __tmp151718 _%port150857%_)))))))
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
      (lambda (_%port150728%_)
        (if (macro-character-port? _%port150728%_)
            (let ((_%old-width150730%_
                   (macro-character-port-output-width _%port150728%_)))
              (macro-character-port-output-width-set!
               _%port150728%_
               (lambda (_%port150732%_) '512))
              _%old-width150730%_)
            '#!void)))
    (define reset-port-width!
      (lambda (_%port150725%_ _%old-width150726%_)
        (if (macro-character-port? _%port150725%_)
            (macro-character-port-output-width-set!
             _%port150725%_
             _%old-width150726%_)
            '#!void)))
    (define datum-parsing-exception-filepos
      (lambda (_%e150723%_)
        (macro-readenv-filepos (datum-parsing-exception-readenv _%e150723%_))))
    (define abandoned-mutex-exception?
      (lambda (_%exn150717%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150717%_))
            (let ((_%e150720%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150717%_ 'exception))))
              (macro-abandoned-mutex-exception? _%e150720%_))
            (macro-abandoned-mutex-exception? _%exn150717%_))))
    (define cfun-conversion-exception?
      (lambda (_%exn150713%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150713%_))
            (let ((_%e150715%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150713%_ 'exception))))
              (macro-cfun-conversion-exception? _%e150715%_))
            (macro-cfun-conversion-exception? _%exn150713%_))))
    (define cfun-conversion-exception-arguments
      (lambda (_%exn150709%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150709%_))
            (let ((_%e150711%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150709%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150711%_)
                  (macro-cfun-conversion-exception-arguments _%e150711%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-arguments
                               (cons _%e150711%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150709%_)
                (macro-cfun-conversion-exception-arguments _%exn150709%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-arguments
                             (cons _%exn150709%_ '())))))))
    (define cfun-conversion-exception-code
      (lambda (_%exn150705%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150705%_))
            (let ((_%e150707%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150705%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150707%_)
                  (macro-cfun-conversion-exception-code _%e150707%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-code
                               (cons _%e150707%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150705%_)
                (macro-cfun-conversion-exception-code _%exn150705%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-code
                             (cons _%exn150705%_ '())))))))
    (define cfun-conversion-exception-message
      (lambda (_%exn150701%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150701%_))
            (let ((_%e150703%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150701%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150703%_)
                  (macro-cfun-conversion-exception-message _%e150703%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-message
                               (cons _%e150703%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150701%_)
                (macro-cfun-conversion-exception-message _%exn150701%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-message
                             (cons _%exn150701%_ '())))))))
    (define cfun-conversion-exception-procedure
      (lambda (_%exn150695%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150695%_))
            (let ((_%e150698%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150695%_ 'exception))))
              (if (macro-cfun-conversion-exception? _%e150698%_)
                  (macro-cfun-conversion-exception-procedure _%e150698%_)
                  (error '"not an instance"
                         'cfun-conversion-exception?
                         (cons 'cfun-conversion-exception-procedure
                               (cons _%e150698%_ '())))))
            (if (macro-cfun-conversion-exception? _%exn150695%_)
                (macro-cfun-conversion-exception-procedure _%exn150695%_)
                (error '"not an instance"
                       'cfun-conversion-exception?
                       (cons 'cfun-conversion-exception-procedure
                             (cons _%exn150695%_ '())))))))
    (define datum-parsing-exception?
      (lambda (_%exn150691%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150691%_))
            (let ((_%e150693%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150691%_ 'exception))))
              (macro-datum-parsing-exception? _%e150693%_))
            (macro-datum-parsing-exception? _%exn150691%_))))
    (define datum-parsing-exception-kind
      (lambda (_%exn150687%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150687%_))
            (let ((_%e150689%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150687%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150689%_)
                  (macro-datum-parsing-exception-kind _%e150689%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-kind
                               (cons _%e150689%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150687%_)
                (macro-datum-parsing-exception-kind _%exn150687%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-kind
                             (cons _%exn150687%_ '())))))))
    (define datum-parsing-exception-parameters
      (lambda (_%exn150683%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150683%_))
            (let ((_%e150685%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150683%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150685%_)
                  (macro-datum-parsing-exception-parameters _%e150685%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-parameters
                               (cons _%e150685%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150683%_)
                (macro-datum-parsing-exception-parameters _%exn150683%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-parameters
                             (cons _%exn150683%_ '())))))))
    (define datum-parsing-exception-readenv
      (lambda (_%exn150677%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150677%_))
            (let ((_%e150680%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150677%_ 'exception))))
              (if (macro-datum-parsing-exception? _%e150680%_)
                  (macro-datum-parsing-exception-readenv _%e150680%_)
                  (error '"not an instance"
                         'datum-parsing-exception?
                         (cons 'datum-parsing-exception-readenv
                               (cons _%e150680%_ '())))))
            (if (macro-datum-parsing-exception? _%exn150677%_)
                (macro-datum-parsing-exception-readenv _%exn150677%_)
                (error '"not an instance"
                       'datum-parsing-exception?
                       (cons 'datum-parsing-exception-readenv
                             (cons _%exn150677%_ '())))))))
    (define deadlock-exception?
      (lambda (_%exn150671%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150671%_))
            (let ((_%e150674%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150671%_ 'exception))))
              (macro-deadlock-exception? _%e150674%_))
            (macro-deadlock-exception? _%exn150671%_))))
    (define divide-by-zero-exception?
      (lambda (_%exn150667%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150667%_))
            (let ((_%e150669%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150667%_ 'exception))))
              (macro-divide-by-zero-exception? _%e150669%_))
            (macro-divide-by-zero-exception? _%exn150667%_))))
    (define divide-by-zero-exception-arguments
      (lambda (_%exn150663%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150663%_))
            (let ((_%e150665%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150663%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e150665%_)
                  (macro-divide-by-zero-exception-arguments _%e150665%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-arguments
                               (cons _%e150665%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn150663%_)
                (macro-divide-by-zero-exception-arguments _%exn150663%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-arguments
                             (cons _%exn150663%_ '())))))))
    (define divide-by-zero-exception-procedure
      (lambda (_%exn150657%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150657%_))
            (let ((_%e150660%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150657%_ 'exception))))
              (if (macro-divide-by-zero-exception? _%e150660%_)
                  (macro-divide-by-zero-exception-procedure _%e150660%_)
                  (error '"not an instance"
                         'divide-by-zero-exception?
                         (cons 'divide-by-zero-exception-procedure
                               (cons _%e150660%_ '())))))
            (if (macro-divide-by-zero-exception? _%exn150657%_)
                (macro-divide-by-zero-exception-procedure _%exn150657%_)
                (error '"not an instance"
                       'divide-by-zero-exception?
                       (cons 'divide-by-zero-exception-procedure
                             (cons _%exn150657%_ '())))))))
    (define error-exception?
      (lambda (_%exn150653%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150653%_))
            (let ((_%e150655%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150653%_ 'exception))))
              (macro-error-exception? _%e150655%_))
            (macro-error-exception? _%exn150653%_))))
    (define error-exception-message
      (lambda (_%exn150649%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150649%_))
            (let ((_%e150651%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150649%_ 'exception))))
              (if (macro-error-exception? _%e150651%_)
                  (macro-error-exception-message _%e150651%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-message
                               (cons _%e150651%_ '())))))
            (if (macro-error-exception? _%exn150649%_)
                (macro-error-exception-message _%exn150649%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-message
                             (cons _%exn150649%_ '())))))))
    (define error-exception-parameters
      (lambda (_%exn150643%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150643%_))
            (let ((_%e150646%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150643%_ 'exception))))
              (if (macro-error-exception? _%e150646%_)
                  (macro-error-exception-parameters _%e150646%_)
                  (error '"not an instance"
                         'error-exception?
                         (cons 'error-exception-parameters
                               (cons _%e150646%_ '())))))
            (if (macro-error-exception? _%exn150643%_)
                (macro-error-exception-parameters _%exn150643%_)
                (error '"not an instance"
                       'error-exception?
                       (cons 'error-exception-parameters
                             (cons _%exn150643%_ '())))))))
    (define expression-parsing-exception?
      (lambda (_%exn150639%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150639%_))
            (let ((_%e150641%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150639%_ 'exception))))
              (macro-expression-parsing-exception? _%e150641%_))
            (macro-expression-parsing-exception? _%exn150639%_))))
    (define expression-parsing-exception-kind
      (lambda (_%exn150635%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150635%_))
            (let ((_%e150637%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150635%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150637%_)
                  (macro-expression-parsing-exception-kind _%e150637%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-kind
                               (cons _%e150637%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150635%_)
                (macro-expression-parsing-exception-kind _%exn150635%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-kind
                             (cons _%exn150635%_ '())))))))
    (define expression-parsing-exception-parameters
      (lambda (_%exn150631%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150631%_))
            (let ((_%e150633%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150631%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150633%_)
                  (macro-expression-parsing-exception-parameters _%e150633%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-parameters
                               (cons _%e150633%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150631%_)
                (macro-expression-parsing-exception-parameters _%exn150631%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-parameters
                             (cons _%exn150631%_ '())))))))
    (define expression-parsing-exception-source
      (lambda (_%exn150625%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150625%_))
            (let ((_%e150628%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150625%_ 'exception))))
              (if (macro-expression-parsing-exception? _%e150628%_)
                  (macro-expression-parsing-exception-source _%e150628%_)
                  (error '"not an instance"
                         'expression-parsing-exception?
                         (cons 'expression-parsing-exception-source
                               (cons _%e150628%_ '())))))
            (if (macro-expression-parsing-exception? _%exn150625%_)
                (macro-expression-parsing-exception-source _%exn150625%_)
                (error '"not an instance"
                       'expression-parsing-exception?
                       (cons 'expression-parsing-exception-source
                             (cons _%exn150625%_ '())))))))
    (define file-exists-exception?
      (lambda (_%exn150621%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150621%_))
            (let ((_%e150623%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150621%_ 'exception))))
              (macro-file-exists-exception? _%e150623%_))
            (macro-file-exists-exception? _%exn150621%_))))
    (define file-exists-exception-arguments
      (lambda (_%exn150617%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150617%_))
            (let ((_%e150619%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150617%_ 'exception))))
              (if (macro-file-exists-exception? _%e150619%_)
                  (macro-file-exists-exception-arguments _%e150619%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-arguments
                               (cons _%e150619%_ '())))))
            (if (macro-file-exists-exception? _%exn150617%_)
                (macro-file-exists-exception-arguments _%exn150617%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-arguments
                             (cons _%exn150617%_ '())))))))
    (define file-exists-exception-procedure
      (lambda (_%exn150611%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150611%_))
            (let ((_%e150614%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150611%_ 'exception))))
              (if (macro-file-exists-exception? _%e150614%_)
                  (macro-file-exists-exception-procedure _%e150614%_)
                  (error '"not an instance"
                         'file-exists-exception?
                         (cons 'file-exists-exception-procedure
                               (cons _%e150614%_ '())))))
            (if (macro-file-exists-exception? _%exn150611%_)
                (macro-file-exists-exception-procedure _%exn150611%_)
                (error '"not an instance"
                       'file-exists-exception?
                       (cons 'file-exists-exception-procedure
                             (cons _%exn150611%_ '())))))))
    (define fixnum-overflow-exception?
      (lambda (_%exn150607%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150607%_))
            (let ((_%e150609%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150607%_ 'exception))))
              (macro-fixnum-overflow-exception? _%e150609%_))
            (macro-fixnum-overflow-exception? _%exn150607%_))))
    (define fixnum-overflow-exception-arguments
      (lambda (_%exn150603%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150603%_))
            (let ((_%e150605%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150603%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e150605%_)
                  (macro-fixnum-overflow-exception-arguments _%e150605%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-arguments
                               (cons _%e150605%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn150603%_)
                (macro-fixnum-overflow-exception-arguments _%exn150603%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-arguments
                             (cons _%exn150603%_ '())))))))
    (define fixnum-overflow-exception-procedure
      (lambda (_%exn150597%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150597%_))
            (let ((_%e150600%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150597%_ 'exception))))
              (if (macro-fixnum-overflow-exception? _%e150600%_)
                  (macro-fixnum-overflow-exception-procedure _%e150600%_)
                  (error '"not an instance"
                         'fixnum-overflow-exception?
                         (cons 'fixnum-overflow-exception-procedure
                               (cons _%e150600%_ '())))))
            (if (macro-fixnum-overflow-exception? _%exn150597%_)
                (macro-fixnum-overflow-exception-procedure _%exn150597%_)
                (error '"not an instance"
                       'fixnum-overflow-exception?
                       (cons 'fixnum-overflow-exception-procedure
                             (cons _%exn150597%_ '())))))))
    (define heap-overflow-exception?
      (lambda (_%exn150591%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150591%_))
            (let ((_%e150594%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150591%_ 'exception))))
              (macro-heap-overflow-exception? _%e150594%_))
            (macro-heap-overflow-exception? _%exn150591%_))))
    (define inactive-thread-exception?
      (lambda (_%exn150587%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150587%_))
            (let ((_%e150589%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150587%_ 'exception))))
              (macro-inactive-thread-exception? _%e150589%_))
            (macro-inactive-thread-exception? _%exn150587%_))))
    (define inactive-thread-exception-arguments
      (lambda (_%exn150583%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150583%_))
            (let ((_%e150585%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150583%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e150585%_)
                  (macro-inactive-thread-exception-arguments _%e150585%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-arguments
                               (cons _%e150585%_ '())))))
            (if (macro-inactive-thread-exception? _%exn150583%_)
                (macro-inactive-thread-exception-arguments _%exn150583%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-arguments
                             (cons _%exn150583%_ '())))))))
    (define inactive-thread-exception-procedure
      (lambda (_%exn150577%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150577%_))
            (let ((_%e150580%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150577%_ 'exception))))
              (if (macro-inactive-thread-exception? _%e150580%_)
                  (macro-inactive-thread-exception-procedure _%e150580%_)
                  (error '"not an instance"
                         'inactive-thread-exception?
                         (cons 'inactive-thread-exception-procedure
                               (cons _%e150580%_ '())))))
            (if (macro-inactive-thread-exception? _%exn150577%_)
                (macro-inactive-thread-exception-procedure _%exn150577%_)
                (error '"not an instance"
                       'inactive-thread-exception?
                       (cons 'inactive-thread-exception-procedure
                             (cons _%exn150577%_ '())))))))
    (define initialized-thread-exception?
      (lambda (_%exn150573%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150573%_))
            (let ((_%e150575%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150573%_ 'exception))))
              (macro-initialized-thread-exception? _%e150575%_))
            (macro-initialized-thread-exception? _%exn150573%_))))
    (define initialized-thread-exception-arguments
      (lambda (_%exn150569%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150569%_))
            (let ((_%e150571%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150569%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e150571%_)
                  (macro-initialized-thread-exception-arguments _%e150571%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-arguments
                               (cons _%e150571%_ '())))))
            (if (macro-initialized-thread-exception? _%exn150569%_)
                (macro-initialized-thread-exception-arguments _%exn150569%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-arguments
                             (cons _%exn150569%_ '())))))))
    (define initialized-thread-exception-procedure
      (lambda (_%exn150563%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150563%_))
            (let ((_%e150566%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150563%_ 'exception))))
              (if (macro-initialized-thread-exception? _%e150566%_)
                  (macro-initialized-thread-exception-procedure _%e150566%_)
                  (error '"not an instance"
                         'initialized-thread-exception?
                         (cons 'initialized-thread-exception-procedure
                               (cons _%e150566%_ '())))))
            (if (macro-initialized-thread-exception? _%exn150563%_)
                (macro-initialized-thread-exception-procedure _%exn150563%_)
                (error '"not an instance"
                       'initialized-thread-exception?
                       (cons 'initialized-thread-exception-procedure
                             (cons _%exn150563%_ '())))))))
    (define invalid-hash-number-exception?
      (lambda (_%exn150559%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150559%_))
            (let ((_%e150561%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150559%_ 'exception))))
              (macro-invalid-hash-number-exception? _%e150561%_))
            (macro-invalid-hash-number-exception? _%exn150559%_))))
    (define invalid-hash-number-exception-arguments
      (lambda (_%exn150555%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150555%_))
            (let ((_%e150557%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150555%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e150557%_)
                  (macro-invalid-hash-number-exception-arguments _%e150557%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-arguments
                               (cons _%e150557%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn150555%_)
                (macro-invalid-hash-number-exception-arguments _%exn150555%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-arguments
                             (cons _%exn150555%_ '())))))))
    (define invalid-hash-number-exception-procedure
      (lambda (_%exn150549%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150549%_))
            (let ((_%e150552%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150549%_ 'exception))))
              (if (macro-invalid-hash-number-exception? _%e150552%_)
                  (macro-invalid-hash-number-exception-procedure _%e150552%_)
                  (error '"not an instance"
                         'invalid-hash-number-exception?
                         (cons 'invalid-hash-number-exception-procedure
                               (cons _%e150552%_ '())))))
            (if (macro-invalid-hash-number-exception? _%exn150549%_)
                (macro-invalid-hash-number-exception-procedure _%exn150549%_)
                (error '"not an instance"
                       'invalid-hash-number-exception?
                       (cons 'invalid-hash-number-exception-procedure
                             (cons _%exn150549%_ '())))))))
    (define invalid-utf8-encoding-exception?
      (lambda (_%exn150545%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150545%_))
            (let ((_%e150547%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150545%_ 'exception))))
              (macro-invalid-utf8-encoding-exception? _%e150547%_))
            (macro-invalid-utf8-encoding-exception? _%exn150545%_))))
    (define invalid-utf8-encoding-exception-arguments
      (lambda (_%exn150541%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150541%_))
            (let ((_%e150543%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150541%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e150543%_)
                  (macro-invalid-utf8-encoding-exception-arguments _%e150543%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-arguments
                               (cons _%e150543%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn150541%_)
                (macro-invalid-utf8-encoding-exception-arguments _%exn150541%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-arguments
                             (cons _%exn150541%_ '())))))))
    (define invalid-utf8-encoding-exception-procedure
      (lambda (_%exn150535%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150535%_))
            (let ((_%e150538%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150535%_ 'exception))))
              (if (macro-invalid-utf8-encoding-exception? _%e150538%_)
                  (macro-invalid-utf8-encoding-exception-procedure _%e150538%_)
                  (error '"not an instance"
                         'invalid-utf8-encoding-exception?
                         (cons 'invalid-utf8-encoding-exception-procedure
                               (cons _%e150538%_ '())))))
            (if (macro-invalid-utf8-encoding-exception? _%exn150535%_)
                (macro-invalid-utf8-encoding-exception-procedure _%exn150535%_)
                (error '"not an instance"
                       'invalid-utf8-encoding-exception?
                       (cons 'invalid-utf8-encoding-exception-procedure
                             (cons _%exn150535%_ '())))))))
    (define join-timeout-exception?
      (lambda (_%exn150531%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150531%_))
            (let ((_%e150533%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150531%_ 'exception))))
              (macro-join-timeout-exception? _%e150533%_))
            (macro-join-timeout-exception? _%exn150531%_))))
    (define join-timeout-exception-arguments
      (lambda (_%exn150527%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150527%_))
            (let ((_%e150529%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150527%_ 'exception))))
              (if (macro-join-timeout-exception? _%e150529%_)
                  (macro-join-timeout-exception-arguments _%e150529%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-arguments
                               (cons _%e150529%_ '())))))
            (if (macro-join-timeout-exception? _%exn150527%_)
                (macro-join-timeout-exception-arguments _%exn150527%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-arguments
                             (cons _%exn150527%_ '())))))))
    (define join-timeout-exception-procedure
      (lambda (_%exn150521%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150521%_))
            (let ((_%e150524%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150521%_ 'exception))))
              (if (macro-join-timeout-exception? _%e150524%_)
                  (macro-join-timeout-exception-procedure _%e150524%_)
                  (error '"not an instance"
                         'join-timeout-exception?
                         (cons 'join-timeout-exception-procedure
                               (cons _%e150524%_ '())))))
            (if (macro-join-timeout-exception? _%exn150521%_)
                (macro-join-timeout-exception-procedure _%exn150521%_)
                (error '"not an instance"
                       'join-timeout-exception?
                       (cons 'join-timeout-exception-procedure
                             (cons _%exn150521%_ '())))))))
    (define keyword-expected-exception?
      (lambda (_%exn150517%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150517%_))
            (let ((_%e150519%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150517%_ 'exception))))
              (macro-keyword-expected-exception? _%e150519%_))
            (macro-keyword-expected-exception? _%exn150517%_))))
    (define keyword-expected-exception-arguments
      (lambda (_%exn150513%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150513%_))
            (let ((_%e150515%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150513%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e150515%_)
                  (macro-keyword-expected-exception-arguments _%e150515%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-arguments
                               (cons _%e150515%_ '())))))
            (if (macro-keyword-expected-exception? _%exn150513%_)
                (macro-keyword-expected-exception-arguments _%exn150513%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-arguments
                             (cons _%exn150513%_ '())))))))
    (define keyword-expected-exception-procedure
      (lambda (_%exn150507%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150507%_))
            (let ((_%e150510%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150507%_ 'exception))))
              (if (macro-keyword-expected-exception? _%e150510%_)
                  (macro-keyword-expected-exception-procedure _%e150510%_)
                  (error '"not an instance"
                         'keyword-expected-exception?
                         (cons 'keyword-expected-exception-procedure
                               (cons _%e150510%_ '())))))
            (if (macro-keyword-expected-exception? _%exn150507%_)
                (macro-keyword-expected-exception-procedure _%exn150507%_)
                (error '"not an instance"
                       'keyword-expected-exception?
                       (cons 'keyword-expected-exception-procedure
                             (cons _%exn150507%_ '())))))))
    (define length-mismatch-exception?
      (lambda (_%exn150503%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150503%_))
            (let ((_%e150505%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150503%_ 'exception))))
              (macro-length-mismatch-exception? _%e150505%_))
            (macro-length-mismatch-exception? _%exn150503%_))))
    (define length-mismatch-exception-arg-id
      (lambda (_%exn150499%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150499%_))
            (let ((_%e150501%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150499%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150501%_)
                  (macro-length-mismatch-exception-arg-id _%e150501%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arg-id
                               (cons _%e150501%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150499%_)
                (macro-length-mismatch-exception-arg-id _%exn150499%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arg-id
                             (cons _%exn150499%_ '())))))))
    (define length-mismatch-exception-arguments
      (lambda (_%exn150495%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150495%_))
            (let ((_%e150497%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150495%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150497%_)
                  (macro-length-mismatch-exception-arguments _%e150497%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-arguments
                               (cons _%e150497%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150495%_)
                (macro-length-mismatch-exception-arguments _%exn150495%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-arguments
                             (cons _%exn150495%_ '())))))))
    (define length-mismatch-exception-procedure
      (lambda (_%exn150489%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150489%_))
            (let ((_%e150492%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150489%_ 'exception))))
              (if (macro-length-mismatch-exception? _%e150492%_)
                  (macro-length-mismatch-exception-procedure _%e150492%_)
                  (error '"not an instance"
                         'length-mismatch-exception?
                         (cons 'length-mismatch-exception-procedure
                               (cons _%e150492%_ '())))))
            (if (macro-length-mismatch-exception? _%exn150489%_)
                (macro-length-mismatch-exception-procedure _%exn150489%_)
                (error '"not an instance"
                       'length-mismatch-exception?
                       (cons 'length-mismatch-exception-procedure
                             (cons _%exn150489%_ '())))))))
    (define mailbox-receive-timeout-exception?
      (lambda (_%exn150485%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150485%_))
            (let ((_%e150487%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150485%_ 'exception))))
              (macro-mailbox-receive-timeout-exception? _%e150487%_))
            (macro-mailbox-receive-timeout-exception? _%exn150485%_))))
    (define mailbox-receive-timeout-exception-arguments
      (lambda (_%exn150481%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150481%_))
            (let ((_%e150483%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150481%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e150483%_)
                  (macro-mailbox-receive-timeout-exception-arguments
                   _%e150483%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-arguments
                               (cons _%e150483%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn150481%_)
                (macro-mailbox-receive-timeout-exception-arguments
                 _%exn150481%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-arguments
                             (cons _%exn150481%_ '())))))))
    (define mailbox-receive-timeout-exception-procedure
      (lambda (_%exn150475%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150475%_))
            (let ((_%e150478%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150475%_ 'exception))))
              (if (macro-mailbox-receive-timeout-exception? _%e150478%_)
                  (macro-mailbox-receive-timeout-exception-procedure
                   _%e150478%_)
                  (error '"not an instance"
                         'mailbox-receive-timeout-exception?
                         (cons 'mailbox-receive-timeout-exception-procedure
                               (cons _%e150478%_ '())))))
            (if (macro-mailbox-receive-timeout-exception? _%exn150475%_)
                (macro-mailbox-receive-timeout-exception-procedure
                 _%exn150475%_)
                (error '"not an instance"
                       'mailbox-receive-timeout-exception?
                       (cons 'mailbox-receive-timeout-exception-procedure
                             (cons _%exn150475%_ '())))))))
    (define module-not-found-exception?
      (lambda (_%exn150471%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150471%_))
            (let ((_%e150473%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150471%_ 'exception))))
              (macro-module-not-found-exception? _%e150473%_))
            (macro-module-not-found-exception? _%exn150471%_))))
    (define module-not-found-exception-arguments
      (lambda (_%exn150467%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150467%_))
            (let ((_%e150469%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150467%_ 'exception))))
              (if (macro-module-not-found-exception? _%e150469%_)
                  (macro-module-not-found-exception-arguments _%e150469%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-arguments
                               (cons _%e150469%_ '())))))
            (if (macro-module-not-found-exception? _%exn150467%_)
                (macro-module-not-found-exception-arguments _%exn150467%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-arguments
                             (cons _%exn150467%_ '())))))))
    (define module-not-found-exception-procedure
      (lambda (_%exn150461%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150461%_))
            (let ((_%e150464%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150461%_ 'exception))))
              (if (macro-module-not-found-exception? _%e150464%_)
                  (macro-module-not-found-exception-procedure _%e150464%_)
                  (error '"not an instance"
                         'module-not-found-exception?
                         (cons 'module-not-found-exception-procedure
                               (cons _%e150464%_ '())))))
            (if (macro-module-not-found-exception? _%exn150461%_)
                (macro-module-not-found-exception-procedure _%exn150461%_)
                (error '"not an instance"
                       'module-not-found-exception?
                       (cons 'module-not-found-exception-procedure
                             (cons _%exn150461%_ '())))))))
    (define multiple-c-return-exception?
      (lambda (_%exn150455%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150455%_))
            (let ((_%e150458%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150455%_ 'exception))))
              (macro-multiple-c-return-exception? _%e150458%_))
            (macro-multiple-c-return-exception? _%exn150455%_))))
    (define no-such-file-or-directory-exception?
      (lambda (_%exn150451%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150451%_))
            (let ((_%e150453%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150451%_ 'exception))))
              (macro-no-such-file-or-directory-exception? _%e150453%_))
            (macro-no-such-file-or-directory-exception? _%exn150451%_))))
    (define no-such-file-or-directory-exception-arguments
      (lambda (_%exn150447%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150447%_))
            (let ((_%e150449%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150447%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e150449%_)
                  (macro-no-such-file-or-directory-exception-arguments
                   _%e150449%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-arguments
                               (cons _%e150449%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn150447%_)
                (macro-no-such-file-or-directory-exception-arguments
                 _%exn150447%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-arguments
                             (cons _%exn150447%_ '())))))))
    (define no-such-file-or-directory-exception-procedure
      (lambda (_%exn150441%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150441%_))
            (let ((_%e150444%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150441%_ 'exception))))
              (if (macro-no-such-file-or-directory-exception? _%e150444%_)
                  (macro-no-such-file-or-directory-exception-procedure
                   _%e150444%_)
                  (error '"not an instance"
                         'no-such-file-or-directory-exception?
                         (cons 'no-such-file-or-directory-exception-procedure
                               (cons _%e150444%_ '())))))
            (if (macro-no-such-file-or-directory-exception? _%exn150441%_)
                (macro-no-such-file-or-directory-exception-procedure
                 _%exn150441%_)
                (error '"not an instance"
                       'no-such-file-or-directory-exception?
                       (cons 'no-such-file-or-directory-exception-procedure
                             (cons _%exn150441%_ '())))))))
    (define noncontinuable-exception?
      (lambda (_%exn150437%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150437%_))
            (let ((_%e150439%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150437%_ 'exception))))
              (macro-noncontinuable-exception? _%e150439%_))
            (macro-noncontinuable-exception? _%exn150437%_))))
    (define noncontinuable-exception-reason
      (lambda (_%exn150431%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150431%_))
            (let ((_%e150434%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150431%_ 'exception))))
              (if (macro-noncontinuable-exception? _%e150434%_)
                  (macro-noncontinuable-exception-reason _%e150434%_)
                  (error '"not an instance"
                         'noncontinuable-exception?
                         (cons 'noncontinuable-exception-reason
                               (cons _%e150434%_ '())))))
            (if (macro-noncontinuable-exception? _%exn150431%_)
                (macro-noncontinuable-exception-reason _%exn150431%_)
                (error '"not an instance"
                       'noncontinuable-exception?
                       (cons 'noncontinuable-exception-reason
                             (cons _%exn150431%_ '())))))))
    (define nonempty-input-port-character-buffer-exception?
      (lambda (_%exn150427%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150427%_))
            (let ((_%e150429%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150427%_ 'exception))))
              (macro-nonempty-input-port-character-buffer-exception?
               _%e150429%_))
            (macro-nonempty-input-port-character-buffer-exception?
             _%exn150427%_))))
    (define nonempty-input-port-character-buffer-exception-arguments
      (lambda (_%exn150423%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150423%_))
            (let ((_%e150425%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150423%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e150425%_)
                  (macro-nonempty-input-port-character-buffer-exception-arguments
                   _%e150425%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-arguments
                               (cons _%e150425%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn150423%_)
                (macro-nonempty-input-port-character-buffer-exception-arguments
                 _%exn150423%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-arguments
                             (cons _%exn150423%_ '())))))))
    (define nonempty-input-port-character-buffer-exception-procedure
      (lambda (_%exn150417%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150417%_))
            (let ((_%e150420%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150417%_ 'exception))))
              (if (macro-nonempty-input-port-character-buffer-exception?
                   _%e150420%_)
                  (macro-nonempty-input-port-character-buffer-exception-procedure
                   _%e150420%_)
                  (error '"not an instance"
                         'nonempty-input-port-character-buffer-exception?
                         (cons 'nonempty-input-port-character-buffer-exception-procedure
                               (cons _%e150420%_ '())))))
            (if (macro-nonempty-input-port-character-buffer-exception?
                 _%exn150417%_)
                (macro-nonempty-input-port-character-buffer-exception-procedure
                 _%exn150417%_)
                (error '"not an instance"
                       'nonempty-input-port-character-buffer-exception?
                       (cons 'nonempty-input-port-character-buffer-exception-procedure
                             (cons _%exn150417%_ '())))))))
    (define nonprocedure-operator-exception?
      (lambda (_%exn150413%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150413%_))
            (let ((_%e150415%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150413%_ 'exception))))
              (macro-nonprocedure-operator-exception? _%e150415%_))
            (macro-nonprocedure-operator-exception? _%exn150413%_))))
    (define nonprocedure-operator-exception-arguments
      (lambda (_%exn150409%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150409%_))
            (let ((_%e150411%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150409%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150411%_)
                  (macro-nonprocedure-operator-exception-arguments _%e150411%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-arguments
                               (cons _%e150411%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150409%_)
                (macro-nonprocedure-operator-exception-arguments _%exn150409%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-arguments
                             (cons _%exn150409%_ '())))))))
    (define nonprocedure-operator-exception-code
      (lambda (_%exn150405%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150405%_))
            (let ((_%e150407%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150405%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150407%_)
                  (macro-nonprocedure-operator-exception-code _%e150407%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-code
                               (cons _%e150407%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150405%_)
                (macro-nonprocedure-operator-exception-code _%exn150405%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-code
                             (cons _%exn150405%_ '())))))))
    (define nonprocedure-operator-exception-operator
      (lambda (_%exn150401%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150401%_))
            (let ((_%e150403%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150401%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150403%_)
                  (macro-nonprocedure-operator-exception-operator _%e150403%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-operator
                               (cons _%e150403%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150401%_)
                (macro-nonprocedure-operator-exception-operator _%exn150401%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-operator
                             (cons _%exn150401%_ '())))))))
    (define nonprocedure-operator-exception-rte
      (lambda (_%exn150395%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150395%_))
            (let ((_%e150398%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150395%_ 'exception))))
              (if (macro-nonprocedure-operator-exception? _%e150398%_)
                  (macro-nonprocedure-operator-exception-rte _%e150398%_)
                  (error '"not an instance"
                         'nonprocedure-operator-exception?
                         (cons 'nonprocedure-operator-exception-rte
                               (cons _%e150398%_ '())))))
            (if (macro-nonprocedure-operator-exception? _%exn150395%_)
                (macro-nonprocedure-operator-exception-rte _%exn150395%_)
                (error '"not an instance"
                       'nonprocedure-operator-exception?
                       (cons 'nonprocedure-operator-exception-rte
                             (cons _%exn150395%_ '())))))))
    (define not-in-compilation-context-exception?
      (lambda (_%exn150391%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150391%_))
            (let ((_%e150393%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150391%_ 'exception))))
              (macro-not-in-compilation-context-exception? _%e150393%_))
            (macro-not-in-compilation-context-exception? _%exn150391%_))))
    (define not-in-compilation-context-exception-arguments
      (lambda (_%exn150387%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150387%_))
            (let ((_%e150389%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150387%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e150389%_)
                  (macro-not-in-compilation-context-exception-arguments
                   _%e150389%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-arguments
                               (cons _%e150389%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn150387%_)
                (macro-not-in-compilation-context-exception-arguments
                 _%exn150387%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-arguments
                             (cons _%exn150387%_ '())))))))
    (define not-in-compilation-context-exception-procedure
      (lambda (_%exn150381%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150381%_))
            (let ((_%e150384%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150381%_ 'exception))))
              (if (macro-not-in-compilation-context-exception? _%e150384%_)
                  (macro-not-in-compilation-context-exception-procedure
                   _%e150384%_)
                  (error '"not an instance"
                         'not-in-compilation-context-exception?
                         (cons 'not-in-compilation-context-exception-procedure
                               (cons _%e150384%_ '())))))
            (if (macro-not-in-compilation-context-exception? _%exn150381%_)
                (macro-not-in-compilation-context-exception-procedure
                 _%exn150381%_)
                (error '"not an instance"
                       'not-in-compilation-context-exception?
                       (cons 'not-in-compilation-context-exception-procedure
                             (cons _%exn150381%_ '())))))))
    (define number-of-arguments-limit-exception?
      (lambda (_%exn150377%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150377%_))
            (let ((_%e150379%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150377%_ 'exception))))
              (macro-number-of-arguments-limit-exception? _%e150379%_))
            (macro-number-of-arguments-limit-exception? _%exn150377%_))))
    (define number-of-arguments-limit-exception-arguments
      (lambda (_%exn150373%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150373%_))
            (let ((_%e150375%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150373%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e150375%_)
                  (macro-number-of-arguments-limit-exception-arguments
                   _%e150375%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-arguments
                               (cons _%e150375%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn150373%_)
                (macro-number-of-arguments-limit-exception-arguments
                 _%exn150373%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-arguments
                             (cons _%exn150373%_ '())))))))
    (define number-of-arguments-limit-exception-procedure
      (lambda (_%exn150367%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150367%_))
            (let ((_%e150370%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150367%_ 'exception))))
              (if (macro-number-of-arguments-limit-exception? _%e150370%_)
                  (macro-number-of-arguments-limit-exception-procedure
                   _%e150370%_)
                  (error '"not an instance"
                         'number-of-arguments-limit-exception?
                         (cons 'number-of-arguments-limit-exception-procedure
                               (cons _%e150370%_ '())))))
            (if (macro-number-of-arguments-limit-exception? _%exn150367%_)
                (macro-number-of-arguments-limit-exception-procedure
                 _%exn150367%_)
                (error '"not an instance"
                       'number-of-arguments-limit-exception?
                       (cons 'number-of-arguments-limit-exception-procedure
                             (cons _%exn150367%_ '())))))))
    (define os-exception?
      (lambda (_%exn150363%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150363%_))
            (let ((_%e150365%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150363%_ 'exception))))
              (macro-os-exception? _%e150365%_))
            (macro-os-exception? _%exn150363%_))))
    (define os-exception-arguments
      (lambda (_%exn150359%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150359%_))
            (let ((_%e150361%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150359%_ 'exception))))
              (if (macro-os-exception? _%e150361%_)
                  (macro-os-exception-arguments _%e150361%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-arguments
                               (cons _%e150361%_ '())))))
            (if (macro-os-exception? _%exn150359%_)
                (macro-os-exception-arguments _%exn150359%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-arguments
                             (cons _%exn150359%_ '())))))))
    (define os-exception-code
      (lambda (_%exn150355%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150355%_))
            (let ((_%e150357%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150355%_ 'exception))))
              (if (macro-os-exception? _%e150357%_)
                  (macro-os-exception-code _%e150357%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-code (cons _%e150357%_ '())))))
            (if (macro-os-exception? _%exn150355%_)
                (macro-os-exception-code _%exn150355%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-code (cons _%exn150355%_ '())))))))
    (define os-exception-message
      (lambda (_%exn150351%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150351%_))
            (let ((_%e150353%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150351%_ 'exception))))
              (if (macro-os-exception? _%e150353%_)
                  (macro-os-exception-message _%e150353%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-message (cons _%e150353%_ '())))))
            (if (macro-os-exception? _%exn150351%_)
                (macro-os-exception-message _%exn150351%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-message
                             (cons _%exn150351%_ '())))))))
    (define os-exception-procedure
      (lambda (_%exn150345%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150345%_))
            (let ((_%e150348%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150345%_ 'exception))))
              (if (macro-os-exception? _%e150348%_)
                  (macro-os-exception-procedure _%e150348%_)
                  (error '"not an instance"
                         'os-exception?
                         (cons 'os-exception-procedure
                               (cons _%e150348%_ '())))))
            (if (macro-os-exception? _%exn150345%_)
                (macro-os-exception-procedure _%exn150345%_)
                (error '"not an instance"
                       'os-exception?
                       (cons 'os-exception-procedure
                             (cons _%exn150345%_ '())))))))
    (define permission-denied-exception?
      (lambda (_%exn150341%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150341%_))
            (let ((_%e150343%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150341%_ 'exception))))
              (macro-permission-denied-exception? _%e150343%_))
            (macro-permission-denied-exception? _%exn150341%_))))
    (define permission-denied-exception-arguments
      (lambda (_%exn150337%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150337%_))
            (let ((_%e150339%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150337%_ 'exception))))
              (if (macro-permission-denied-exception? _%e150339%_)
                  (macro-permission-denied-exception-arguments _%e150339%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-arguments
                               (cons _%e150339%_ '())))))
            (if (macro-permission-denied-exception? _%exn150337%_)
                (macro-permission-denied-exception-arguments _%exn150337%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-arguments
                             (cons _%exn150337%_ '())))))))
    (define permission-denied-exception-procedure
      (lambda (_%exn150331%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150331%_))
            (let ((_%e150334%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150331%_ 'exception))))
              (if (macro-permission-denied-exception? _%e150334%_)
                  (macro-permission-denied-exception-procedure _%e150334%_)
                  (error '"not an instance"
                         'permission-denied-exception?
                         (cons 'permission-denied-exception-procedure
                               (cons _%e150334%_ '())))))
            (if (macro-permission-denied-exception? _%exn150331%_)
                (macro-permission-denied-exception-procedure _%exn150331%_)
                (error '"not an instance"
                       'permission-denied-exception?
                       (cons 'permission-denied-exception-procedure
                             (cons _%exn150331%_ '())))))))
    (define range-exception?
      (lambda (_%exn150327%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150327%_))
            (let ((_%e150329%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150327%_ 'exception))))
              (macro-range-exception? _%e150329%_))
            (macro-range-exception? _%exn150327%_))))
    (define range-exception-arg-id
      (lambda (_%exn150323%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150323%_))
            (let ((_%e150325%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150323%_ 'exception))))
              (if (macro-range-exception? _%e150325%_)
                  (macro-range-exception-arg-id _%e150325%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arg-id
                               (cons _%e150325%_ '())))))
            (if (macro-range-exception? _%exn150323%_)
                (macro-range-exception-arg-id _%exn150323%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arg-id
                             (cons _%exn150323%_ '())))))))
    (define range-exception-arguments
      (lambda (_%exn150319%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150319%_))
            (let ((_%e150321%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150319%_ 'exception))))
              (if (macro-range-exception? _%e150321%_)
                  (macro-range-exception-arguments _%e150321%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-arguments
                               (cons _%e150321%_ '())))))
            (if (macro-range-exception? _%exn150319%_)
                (macro-range-exception-arguments _%exn150319%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-arguments
                             (cons _%exn150319%_ '())))))))
    (define range-exception-procedure
      (lambda (_%exn150313%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150313%_))
            (let ((_%e150316%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150313%_ 'exception))))
              (if (macro-range-exception? _%e150316%_)
                  (macro-range-exception-procedure _%e150316%_)
                  (error '"not an instance"
                         'range-exception?
                         (cons 'range-exception-procedure
                               (cons _%e150316%_ '())))))
            (if (macro-range-exception? _%exn150313%_)
                (macro-range-exception-procedure _%exn150313%_)
                (error '"not an instance"
                       'range-exception?
                       (cons 'range-exception-procedure
                             (cons _%exn150313%_ '())))))))
    (define rpc-remote-error-exception?
      (lambda (_%exn150309%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150309%_))
            (let ((_%e150311%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150309%_ 'exception))))
              (macro-rpc-remote-error-exception? _%e150311%_))
            (macro-rpc-remote-error-exception? _%exn150309%_))))
    (define rpc-remote-error-exception-arguments
      (lambda (_%exn150305%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150305%_))
            (let ((_%e150307%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150305%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150307%_)
                  (macro-rpc-remote-error-exception-arguments _%e150307%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-arguments
                               (cons _%e150307%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150305%_)
                (macro-rpc-remote-error-exception-arguments _%exn150305%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-arguments
                             (cons _%exn150305%_ '())))))))
    (define rpc-remote-error-exception-message
      (lambda (_%exn150301%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150301%_))
            (let ((_%e150303%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150301%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150303%_)
                  (macro-rpc-remote-error-exception-message _%e150303%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-message
                               (cons _%e150303%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150301%_)
                (macro-rpc-remote-error-exception-message _%exn150301%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-message
                             (cons _%exn150301%_ '())))))))
    (define rpc-remote-error-exception-procedure
      (lambda (_%exn150295%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150295%_))
            (let ((_%e150298%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150295%_ 'exception))))
              (if (macro-rpc-remote-error-exception? _%e150298%_)
                  (macro-rpc-remote-error-exception-procedure _%e150298%_)
                  (error '"not an instance"
                         'rpc-remote-error-exception?
                         (cons 'rpc-remote-error-exception-procedure
                               (cons _%e150298%_ '())))))
            (if (macro-rpc-remote-error-exception? _%exn150295%_)
                (macro-rpc-remote-error-exception-procedure _%exn150295%_)
                (error '"not an instance"
                       'rpc-remote-error-exception?
                       (cons 'rpc-remote-error-exception-procedure
                             (cons _%exn150295%_ '())))))))
    (define scheduler-exception?
      (lambda (_%exn150291%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150291%_))
            (let ((_%e150293%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150291%_ 'exception))))
              (macro-scheduler-exception? _%e150293%_))
            (macro-scheduler-exception? _%exn150291%_))))
    (define scheduler-exception-reason
      (lambda (_%exn150285%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150285%_))
            (let ((_%e150288%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150285%_ 'exception))))
              (if (macro-scheduler-exception? _%e150288%_)
                  (macro-scheduler-exception-reason _%e150288%_)
                  (error '"not an instance"
                         'scheduler-exception?
                         (cons 'scheduler-exception-reason
                               (cons _%e150288%_ '())))))
            (if (macro-scheduler-exception? _%exn150285%_)
                (macro-scheduler-exception-reason _%exn150285%_)
                (error '"not an instance"
                       'scheduler-exception?
                       (cons 'scheduler-exception-reason
                             (cons _%exn150285%_ '())))))))
    (define sfun-conversion-exception?
      (lambda (_%exn150281%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150281%_))
            (let ((_%e150283%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150281%_ 'exception))))
              (macro-sfun-conversion-exception? _%e150283%_))
            (macro-sfun-conversion-exception? _%exn150281%_))))
    (define sfun-conversion-exception-arguments
      (lambda (_%exn150277%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150277%_))
            (let ((_%e150279%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150277%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150279%_)
                  (macro-sfun-conversion-exception-arguments _%e150279%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-arguments
                               (cons _%e150279%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150277%_)
                (macro-sfun-conversion-exception-arguments _%exn150277%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-arguments
                             (cons _%exn150277%_ '())))))))
    (define sfun-conversion-exception-code
      (lambda (_%exn150273%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150273%_))
            (let ((_%e150275%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150273%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150275%_)
                  (macro-sfun-conversion-exception-code _%e150275%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-code
                               (cons _%e150275%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150273%_)
                (macro-sfun-conversion-exception-code _%exn150273%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-code
                             (cons _%exn150273%_ '())))))))
    (define sfun-conversion-exception-message
      (lambda (_%exn150269%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150269%_))
            (let ((_%e150271%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150269%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150271%_)
                  (macro-sfun-conversion-exception-message _%e150271%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-message
                               (cons _%e150271%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150269%_)
                (macro-sfun-conversion-exception-message _%exn150269%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-message
                             (cons _%exn150269%_ '())))))))
    (define sfun-conversion-exception-procedure
      (lambda (_%exn150263%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150263%_))
            (let ((_%e150266%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150263%_ 'exception))))
              (if (macro-sfun-conversion-exception? _%e150266%_)
                  (macro-sfun-conversion-exception-procedure _%e150266%_)
                  (error '"not an instance"
                         'sfun-conversion-exception?
                         (cons 'sfun-conversion-exception-procedure
                               (cons _%e150266%_ '())))))
            (if (macro-sfun-conversion-exception? _%exn150263%_)
                (macro-sfun-conversion-exception-procedure _%exn150263%_)
                (error '"not an instance"
                       'sfun-conversion-exception?
                       (cons 'sfun-conversion-exception-procedure
                             (cons _%exn150263%_ '())))))))
    (define stack-overflow-exception?
      (lambda (_%exn150257%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150257%_))
            (let ((_%e150260%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150257%_ 'exception))))
              (macro-stack-overflow-exception? _%e150260%_))
            (macro-stack-overflow-exception? _%exn150257%_))))
    (define started-thread-exception?
      (lambda (_%exn150253%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150253%_))
            (let ((_%e150255%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150253%_ 'exception))))
              (macro-started-thread-exception? _%e150255%_))
            (macro-started-thread-exception? _%exn150253%_))))
    (define started-thread-exception-arguments
      (lambda (_%exn150249%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150249%_))
            (let ((_%e150251%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150249%_ 'exception))))
              (if (macro-started-thread-exception? _%e150251%_)
                  (macro-started-thread-exception-arguments _%e150251%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-arguments
                               (cons _%e150251%_ '())))))
            (if (macro-started-thread-exception? _%exn150249%_)
                (macro-started-thread-exception-arguments _%exn150249%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-arguments
                             (cons _%exn150249%_ '())))))))
    (define started-thread-exception-procedure
      (lambda (_%exn150243%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150243%_))
            (let ((_%e150246%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150243%_ 'exception))))
              (if (macro-started-thread-exception? _%e150246%_)
                  (macro-started-thread-exception-procedure _%e150246%_)
                  (error '"not an instance"
                         'started-thread-exception?
                         (cons 'started-thread-exception-procedure
                               (cons _%e150246%_ '())))))
            (if (macro-started-thread-exception? _%exn150243%_)
                (macro-started-thread-exception-procedure _%exn150243%_)
                (error '"not an instance"
                       'started-thread-exception?
                       (cons 'started-thread-exception-procedure
                             (cons _%exn150243%_ '())))))))
    (define terminated-thread-exception?
      (lambda (_%exn150239%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150239%_))
            (let ((_%e150241%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150239%_ 'exception))))
              (macro-terminated-thread-exception? _%e150241%_))
            (macro-terminated-thread-exception? _%exn150239%_))))
    (define terminated-thread-exception-arguments
      (lambda (_%exn150235%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150235%_))
            (let ((_%e150237%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150235%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e150237%_)
                  (macro-terminated-thread-exception-arguments _%e150237%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-arguments
                               (cons _%e150237%_ '())))))
            (if (macro-terminated-thread-exception? _%exn150235%_)
                (macro-terminated-thread-exception-arguments _%exn150235%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-arguments
                             (cons _%exn150235%_ '())))))))
    (define terminated-thread-exception-procedure
      (lambda (_%exn150229%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150229%_))
            (let ((_%e150232%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150229%_ 'exception))))
              (if (macro-terminated-thread-exception? _%e150232%_)
                  (macro-terminated-thread-exception-procedure _%e150232%_)
                  (error '"not an instance"
                         'terminated-thread-exception?
                         (cons 'terminated-thread-exception-procedure
                               (cons _%e150232%_ '())))))
            (if (macro-terminated-thread-exception? _%exn150229%_)
                (macro-terminated-thread-exception-procedure _%exn150229%_)
                (error '"not an instance"
                       'terminated-thread-exception?
                       (cons 'terminated-thread-exception-procedure
                             (cons _%exn150229%_ '())))))))
    (define type-exception?
      (lambda (_%exn150225%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150225%_))
            (let ((_%e150227%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150225%_ 'exception))))
              (macro-type-exception? _%e150227%_))
            (macro-type-exception? _%exn150225%_))))
    (define type-exception-arg-id
      (lambda (_%exn150221%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150221%_))
            (let ((_%e150223%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150221%_ 'exception))))
              (if (macro-type-exception? _%e150223%_)
                  (macro-type-exception-arg-id _%e150223%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arg-id
                               (cons _%e150223%_ '())))))
            (if (macro-type-exception? _%exn150221%_)
                (macro-type-exception-arg-id _%exn150221%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arg-id
                             (cons _%exn150221%_ '())))))))
    (define type-exception-arguments
      (lambda (_%exn150217%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150217%_))
            (let ((_%e150219%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150217%_ 'exception))))
              (if (macro-type-exception? _%e150219%_)
                  (macro-type-exception-arguments _%e150219%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-arguments
                               (cons _%e150219%_ '())))))
            (if (macro-type-exception? _%exn150217%_)
                (macro-type-exception-arguments _%exn150217%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-arguments
                             (cons _%exn150217%_ '())))))))
    (define type-exception-procedure
      (lambda (_%exn150213%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150213%_))
            (let ((_%e150215%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150213%_ 'exception))))
              (if (macro-type-exception? _%e150215%_)
                  (macro-type-exception-procedure _%e150215%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-procedure
                               (cons _%e150215%_ '())))))
            (if (macro-type-exception? _%exn150213%_)
                (macro-type-exception-procedure _%exn150213%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-procedure
                             (cons _%exn150213%_ '())))))))
    (define type-exception-type-id
      (lambda (_%exn150207%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150207%_))
            (let ((_%e150210%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150207%_ 'exception))))
              (if (macro-type-exception? _%e150210%_)
                  (macro-type-exception-type-id _%e150210%_)
                  (error '"not an instance"
                         'type-exception?
                         (cons 'type-exception-type-id
                               (cons _%e150210%_ '())))))
            (if (macro-type-exception? _%exn150207%_)
                (macro-type-exception-type-id _%exn150207%_)
                (error '"not an instance"
                       'type-exception?
                       (cons 'type-exception-type-id
                             (cons _%exn150207%_ '())))))))
    (define unbound-global-exception?
      (lambda (_%exn150203%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150203%_))
            (let ((_%e150205%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150203%_ 'exception))))
              (macro-unbound-global-exception? _%e150205%_))
            (macro-unbound-global-exception? _%exn150203%_))))
    (define unbound-global-exception-code
      (lambda (_%exn150199%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150199%_))
            (let ((_%e150201%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150199%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150201%_)
                  (macro-unbound-global-exception-code _%e150201%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-code
                               (cons _%e150201%_ '())))))
            (if (macro-unbound-global-exception? _%exn150199%_)
                (macro-unbound-global-exception-code _%exn150199%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-code
                             (cons _%exn150199%_ '())))))))
    (define unbound-global-exception-rte
      (lambda (_%exn150195%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150195%_))
            (let ((_%e150197%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150195%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150197%_)
                  (macro-unbound-global-exception-rte _%e150197%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-rte
                               (cons _%e150197%_ '())))))
            (if (macro-unbound-global-exception? _%exn150195%_)
                (macro-unbound-global-exception-rte _%exn150195%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-rte
                             (cons _%exn150195%_ '())))))))
    (define unbound-global-exception-variable
      (lambda (_%exn150189%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150189%_))
            (let ((_%e150192%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150189%_ 'exception))))
              (if (macro-unbound-global-exception? _%e150192%_)
                  (macro-unbound-global-exception-variable _%e150192%_)
                  (error '"not an instance"
                         'unbound-global-exception?
                         (cons 'unbound-global-exception-variable
                               (cons _%e150192%_ '())))))
            (if (macro-unbound-global-exception? _%exn150189%_)
                (macro-unbound-global-exception-variable _%exn150189%_)
                (error '"not an instance"
                       'unbound-global-exception?
                       (cons 'unbound-global-exception-variable
                             (cons _%exn150189%_ '())))))))
    (define unbound-key-exception?
      (lambda (_%exn150185%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150185%_))
            (let ((_%e150187%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150185%_ 'exception))))
              (macro-unbound-key-exception? _%e150187%_))
            (macro-unbound-key-exception? _%exn150185%_))))
    (define unbound-key-exception-arguments
      (lambda (_%exn150181%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150181%_))
            (let ((_%e150183%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150181%_ 'exception))))
              (if (macro-unbound-key-exception? _%e150183%_)
                  (macro-unbound-key-exception-arguments _%e150183%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-arguments
                               (cons _%e150183%_ '())))))
            (if (macro-unbound-key-exception? _%exn150181%_)
                (macro-unbound-key-exception-arguments _%exn150181%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-arguments
                             (cons _%exn150181%_ '())))))))
    (define unbound-key-exception-procedure
      (lambda (_%exn150175%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150175%_))
            (let ((_%e150178%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150175%_ 'exception))))
              (if (macro-unbound-key-exception? _%e150178%_)
                  (macro-unbound-key-exception-procedure _%e150178%_)
                  (error '"not an instance"
                         'unbound-key-exception?
                         (cons 'unbound-key-exception-procedure
                               (cons _%e150178%_ '())))))
            (if (macro-unbound-key-exception? _%exn150175%_)
                (macro-unbound-key-exception-procedure _%exn150175%_)
                (error '"not an instance"
                       'unbound-key-exception?
                       (cons 'unbound-key-exception-procedure
                             (cons _%exn150175%_ '())))))))
    (define unbound-os-environment-variable-exception?
      (lambda (_%exn150171%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150171%_))
            (let ((_%e150173%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150171%_ 'exception))))
              (macro-unbound-os-environment-variable-exception? _%e150173%_))
            (macro-unbound-os-environment-variable-exception? _%exn150171%_))))
    (define unbound-os-environment-variable-exception-arguments
      (lambda (_%exn150167%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150167%_))
            (let ((_%e150169%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150167%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e150169%_)
                  (macro-unbound-os-environment-variable-exception-arguments
                   _%e150169%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-arguments
                               (cons _%e150169%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn150167%_)
                (macro-unbound-os-environment-variable-exception-arguments
                 _%exn150167%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-arguments
                             (cons _%exn150167%_ '())))))))
    (define unbound-os-environment-variable-exception-procedure
      (lambda (_%exn150161%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150161%_))
            (let ((_%e150164%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150161%_ 'exception))))
              (if (macro-unbound-os-environment-variable-exception?
                   _%e150164%_)
                  (macro-unbound-os-environment-variable-exception-procedure
                   _%e150164%_)
                  (error '"not an instance"
                         'unbound-os-environment-variable-exception?
                         (cons 'unbound-os-environment-variable-exception-procedure
                               (cons _%e150164%_ '())))))
            (if (macro-unbound-os-environment-variable-exception?
                 _%exn150161%_)
                (macro-unbound-os-environment-variable-exception-procedure
                 _%exn150161%_)
                (error '"not an instance"
                       'unbound-os-environment-variable-exception?
                       (cons 'unbound-os-environment-variable-exception-procedure
                             (cons _%exn150161%_ '())))))))
    (define unbound-serial-number-exception?
      (lambda (_%exn150157%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150157%_))
            (let ((_%e150159%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150157%_ 'exception))))
              (macro-unbound-serial-number-exception? _%e150159%_))
            (macro-unbound-serial-number-exception? _%exn150157%_))))
    (define unbound-serial-number-exception-arguments
      (lambda (_%exn150153%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150153%_))
            (let ((_%e150155%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150153%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e150155%_)
                  (macro-unbound-serial-number-exception-arguments _%e150155%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-arguments
                               (cons _%e150155%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn150153%_)
                (macro-unbound-serial-number-exception-arguments _%exn150153%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-arguments
                             (cons _%exn150153%_ '())))))))
    (define unbound-serial-number-exception-procedure
      (lambda (_%exn150147%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150147%_))
            (let ((_%e150150%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150147%_ 'exception))))
              (if (macro-unbound-serial-number-exception? _%e150150%_)
                  (macro-unbound-serial-number-exception-procedure _%e150150%_)
                  (error '"not an instance"
                         'unbound-serial-number-exception?
                         (cons 'unbound-serial-number-exception-procedure
                               (cons _%e150150%_ '())))))
            (if (macro-unbound-serial-number-exception? _%exn150147%_)
                (macro-unbound-serial-number-exception-procedure _%exn150147%_)
                (error '"not an instance"
                       'unbound-serial-number-exception?
                       (cons 'unbound-serial-number-exception-procedure
                             (cons _%exn150147%_ '())))))))
    (define uncaught-exception?
      (lambda (_%exn150143%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150143%_))
            (let ((_%e150145%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150143%_ 'exception))))
              (macro-uncaught-exception? _%e150145%_))
            (macro-uncaught-exception? _%exn150143%_))))
    (define uncaught-exception-arguments
      (lambda (_%exn150139%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150139%_))
            (let ((_%e150141%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150139%_ 'exception))))
              (if (macro-uncaught-exception? _%e150141%_)
                  (macro-uncaught-exception-arguments _%e150141%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-arguments
                               (cons _%e150141%_ '())))))
            (if (macro-uncaught-exception? _%exn150139%_)
                (macro-uncaught-exception-arguments _%exn150139%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-arguments
                             (cons _%exn150139%_ '())))))))
    (define uncaught-exception-procedure
      (lambda (_%exn150135%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150135%_))
            (let ((_%e150137%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150135%_ 'exception))))
              (if (macro-uncaught-exception? _%e150137%_)
                  (macro-uncaught-exception-procedure _%e150137%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-procedure
                               (cons _%e150137%_ '())))))
            (if (macro-uncaught-exception? _%exn150135%_)
                (macro-uncaught-exception-procedure _%exn150135%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-procedure
                             (cons _%exn150135%_ '())))))))
    (define uncaught-exception-reason
      (lambda (_%exn150129%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150129%_))
            (let ((_%e150132%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150129%_ 'exception))))
              (if (macro-uncaught-exception? _%e150132%_)
                  (macro-uncaught-exception-reason _%e150132%_)
                  (error '"not an instance"
                         'uncaught-exception?
                         (cons 'uncaught-exception-reason
                               (cons _%e150132%_ '())))))
            (if (macro-uncaught-exception? _%exn150129%_)
                (macro-uncaught-exception-reason _%exn150129%_)
                (error '"not an instance"
                       'uncaught-exception?
                       (cons 'uncaught-exception-reason
                             (cons _%exn150129%_ '())))))))
    (define uninitialized-thread-exception?
      (lambda (_%exn150125%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150125%_))
            (let ((_%e150127%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150125%_ 'exception))))
              (macro-uninitialized-thread-exception? _%e150127%_))
            (macro-uninitialized-thread-exception? _%exn150125%_))))
    (define uninitialized-thread-exception-arguments
      (lambda (_%exn150121%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150121%_))
            (let ((_%e150123%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150121%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e150123%_)
                  (macro-uninitialized-thread-exception-arguments _%e150123%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-arguments
                               (cons _%e150123%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn150121%_)
                (macro-uninitialized-thread-exception-arguments _%exn150121%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-arguments
                             (cons _%exn150121%_ '())))))))
    (define uninitialized-thread-exception-procedure
      (lambda (_%exn150115%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150115%_))
            (let ((_%e150118%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150115%_ 'exception))))
              (if (macro-uninitialized-thread-exception? _%e150118%_)
                  (macro-uninitialized-thread-exception-procedure _%e150118%_)
                  (error '"not an instance"
                         'uninitialized-thread-exception?
                         (cons 'uninitialized-thread-exception-procedure
                               (cons _%e150118%_ '())))))
            (if (macro-uninitialized-thread-exception? _%exn150115%_)
                (macro-uninitialized-thread-exception-procedure _%exn150115%_)
                (error '"not an instance"
                       'uninitialized-thread-exception?
                       (cons 'uninitialized-thread-exception-procedure
                             (cons _%exn150115%_ '())))))))
    (define unknown-keyword-argument-exception?
      (lambda (_%exn150111%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150111%_))
            (let ((_%e150113%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150111%_ 'exception))))
              (macro-unknown-keyword-argument-exception? _%e150113%_))
            (macro-unknown-keyword-argument-exception? _%exn150111%_))))
    (define unknown-keyword-argument-exception-arguments
      (lambda (_%exn150107%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150107%_))
            (let ((_%e150109%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150107%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e150109%_)
                  (macro-unknown-keyword-argument-exception-arguments
                   _%e150109%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-arguments
                               (cons _%e150109%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn150107%_)
                (macro-unknown-keyword-argument-exception-arguments
                 _%exn150107%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-arguments
                             (cons _%exn150107%_ '())))))))
    (define unknown-keyword-argument-exception-procedure
      (lambda (_%exn150101%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150101%_))
            (let ((_%e150104%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150101%_ 'exception))))
              (if (macro-unknown-keyword-argument-exception? _%e150104%_)
                  (macro-unknown-keyword-argument-exception-procedure
                   _%e150104%_)
                  (error '"not an instance"
                         'unknown-keyword-argument-exception?
                         (cons 'unknown-keyword-argument-exception-procedure
                               (cons _%e150104%_ '())))))
            (if (macro-unknown-keyword-argument-exception? _%exn150101%_)
                (macro-unknown-keyword-argument-exception-procedure
                 _%exn150101%_)
                (error '"not an instance"
                       'unknown-keyword-argument-exception?
                       (cons 'unknown-keyword-argument-exception-procedure
                             (cons _%exn150101%_ '())))))))
    (define unterminated-process-exception?
      (lambda (_%exn150097%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150097%_))
            (let ((_%e150099%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150097%_ 'exception))))
              (macro-unterminated-process-exception? _%e150099%_))
            (macro-unterminated-process-exception? _%exn150097%_))))
    (define unterminated-process-exception-arguments
      (lambda (_%exn150093%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150093%_))
            (let ((_%e150095%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150093%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e150095%_)
                  (macro-unterminated-process-exception-arguments _%e150095%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-arguments
                               (cons _%e150095%_ '())))))
            (if (macro-unterminated-process-exception? _%exn150093%_)
                (macro-unterminated-process-exception-arguments _%exn150093%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-arguments
                             (cons _%exn150093%_ '())))))))
    (define unterminated-process-exception-procedure
      (lambda (_%exn150087%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150087%_))
            (let ((_%e150090%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150087%_ 'exception))))
              (if (macro-unterminated-process-exception? _%e150090%_)
                  (macro-unterminated-process-exception-procedure _%e150090%_)
                  (error '"not an instance"
                         'unterminated-process-exception?
                         (cons 'unterminated-process-exception-procedure
                               (cons _%e150090%_ '())))))
            (if (macro-unterminated-process-exception? _%exn150087%_)
                (macro-unterminated-process-exception-procedure _%exn150087%_)
                (error '"not an instance"
                       'unterminated-process-exception?
                       (cons 'unterminated-process-exception-procedure
                             (cons _%exn150087%_ '())))))))
    (define wrong-number-of-arguments-exception?
      (lambda (_%exn150083%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150083%_))
            (let ((_%e150085%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150083%_ 'exception))))
              (macro-wrong-number-of-arguments-exception? _%e150085%_))
            (macro-wrong-number-of-arguments-exception? _%exn150083%_))))
    (define wrong-number-of-arguments-exception-arguments
      (lambda (_%exn150079%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150079%_))
            (let ((_%e150081%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150079%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e150081%_)
                  (macro-wrong-number-of-arguments-exception-arguments
                   _%e150081%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-arguments
                               (cons _%e150081%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn150079%_)
                (macro-wrong-number-of-arguments-exception-arguments
                 _%exn150079%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-arguments
                             (cons _%exn150079%_ '())))))))
    (define wrong-number-of-arguments-exception-procedure
      (lambda (_%exn150073%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150073%_))
            (let ((_%e150076%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150073%_ 'exception))))
              (if (macro-wrong-number-of-arguments-exception? _%e150076%_)
                  (macro-wrong-number-of-arguments-exception-procedure
                   _%e150076%_)
                  (error '"not an instance"
                         'wrong-number-of-arguments-exception?
                         (cons 'wrong-number-of-arguments-exception-procedure
                               (cons _%e150076%_ '())))))
            (if (macro-wrong-number-of-arguments-exception? _%exn150073%_)
                (macro-wrong-number-of-arguments-exception-procedure
                 _%exn150073%_)
                (error '"not an instance"
                       'wrong-number-of-arguments-exception?
                       (cons 'wrong-number-of-arguments-exception-procedure
                             (cons _%exn150073%_ '())))))))
    (define wrong-number-of-values-exception?
      (lambda (_%exn150069%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150069%_))
            (let ((_%e150071%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150069%_ 'exception))))
              (macro-wrong-number-of-values-exception? _%e150071%_))
            (macro-wrong-number-of-values-exception? _%exn150069%_))))
    (define wrong-number-of-values-exception-code
      (lambda (_%exn150065%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150065%_))
            (let ((_%e150067%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150065%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e150067%_)
                  (macro-wrong-number-of-values-exception-code _%e150067%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-code
                               (cons _%e150067%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn150065%_)
                (macro-wrong-number-of-values-exception-code _%exn150065%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-code
                             (cons _%exn150065%_ '())))))))
    (define wrong-number-of-values-exception-rte
      (lambda (_%exn150061%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150061%_))
            (let ((_%e150063%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150061%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e150063%_)
                  (macro-wrong-number-of-values-exception-rte _%e150063%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-rte
                               (cons _%e150063%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn150061%_)
                (macro-wrong-number-of-values-exception-rte _%exn150061%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-rte
                             (cons _%exn150061%_ '())))))))
    (define wrong-number-of-values-exception-vals
      (lambda (_%exn150055%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150055%_))
            (let ((_%e150058%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150055%_ 'exception))))
              (if (macro-wrong-number-of-values-exception? _%e150058%_)
                  (macro-wrong-number-of-values-exception-vals _%e150058%_)
                  (error '"not an instance"
                         'wrong-number-of-values-exception?
                         (cons 'wrong-number-of-values-exception-vals
                               (cons _%e150058%_ '())))))
            (if (macro-wrong-number-of-values-exception? _%exn150055%_)
                (macro-wrong-number-of-values-exception-vals _%exn150055%_)
                (error '"not an instance"
                       'wrong-number-of-values-exception?
                       (cons 'wrong-number-of-values-exception-vals
                             (cons _%exn150055%_ '())))))))
    (define wrong-processor-c-return-exception?
      (lambda (_%exn150049%_)
        (if (let ()
              (declare (not safe))
              (class-instance? RuntimeException::t _%exn150049%_))
            (let ((_%e150052%_
                   (let ()
                     (declare (not safe))
                     (unchecked-slot-ref _%exn150049%_ 'exception))))
              (macro-wrong-processor-c-return-exception? _%e150052%_))
            (macro-wrong-processor-c-return-exception? _%exn150049%_))))))
