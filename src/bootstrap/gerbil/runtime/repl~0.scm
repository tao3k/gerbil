(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1784461443)
  (define replx
    (lambda ()
      (letrec ((_%write-reason178558%_
                (lambda (_%exn178596%_)
                  (lambda (_%cont178598%_ _%port178599%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn178596%_
                       _%cont178598%_
                       _%port178599%_))
                    '#f))))
        (let* ((_%handler178564%_
                (lambda (_%exn178560%_)
                  (let ((__tmp178600
                         (lambda (_%cont178562%_)
                           (let ((__tmp178601
                                  (_%write-reason178558%_ _%exn178560%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont178562%_
                              __tmp178601
                              _%exn178560%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp178600))))
               (_%thunk178567%_ ##repl)
               (_%handler178572%_ _%handler178564%_))
          (if (procedure? _%thunk178567%_)
              (let ((_%thunk178586%_ _%thunk178567%_))
                (declare (not safe))
                (__with-exception-handler _%handler178572%_ _%thunk178586%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk178567%_)
                '#!void)))))))
