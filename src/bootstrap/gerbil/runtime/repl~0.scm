(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1789188907)
  (define replx
    (lambda ()
      (letrec ((_%write-reason178762%_
                (lambda (_%exn178800%_)
                  (lambda (_%cont178802%_ _%port178803%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn178800%_
                       _%cont178802%_
                       _%port178803%_))
                    '#f))))
        (let* ((_%handler178768%_
                (lambda (_%exn178764%_)
                  (let ((__tmp178804
                         (lambda (_%cont178766%_)
                           (let ((__tmp178805
                                  (_%write-reason178762%_ _%exn178764%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont178766%_
                              __tmp178805
                              _%exn178764%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp178804))))
               (_%thunk178771%_ ##repl)
               (_%handler178776%_ _%handler178768%_))
          (if (procedure? _%thunk178771%_)
              (let ((_%thunk178790%_ _%thunk178771%_))
                (declare (not safe))
                (__with-exception-handler _%handler178776%_ _%thunk178790%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk178771%_)
                '#!void)))))))
