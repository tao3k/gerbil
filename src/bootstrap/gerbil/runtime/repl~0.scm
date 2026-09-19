(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1789839225)
  (define replx
    (lambda ()
      (letrec ((_%write-reason180954%_
                (lambda (_%exn180992%_)
                  (lambda (_%cont180994%_ _%port180995%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn180992%_
                       _%cont180994%_
                       _%port180995%_))
                    '#f))))
        (let* ((_%handler180960%_
                (lambda (_%exn180956%_)
                  (let ((__tmp180996
                         (lambda (_%cont180958%_)
                           (let ((__tmp180997
                                  (_%write-reason180954%_ _%exn180956%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont180958%_
                              __tmp180997
                              _%exn180956%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp180996))))
               (_%thunk180963%_ ##repl)
               (_%handler180968%_ _%handler180960%_))
          (if (procedure? _%thunk180963%_)
              (let ((_%thunk180982%_ _%thunk180963%_))
                (declare (not safe))
                (__with-exception-handler _%handler180968%_ _%thunk180982%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk180963%_)
                '#!void)))))))
