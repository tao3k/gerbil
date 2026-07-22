(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1784758124)
  (define replx
    (lambda ()
      (letrec ((_%write-reason178779%_
                (lambda (_%exn178817%_)
                  (lambda (_%cont178819%_ _%port178820%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn178817%_
                       _%cont178819%_
                       _%port178820%_))
                    '#f))))
        (let* ((_%handler178785%_
                (lambda (_%exn178781%_)
                  (let ((__tmp178821
                         (lambda (_%cont178783%_)
                           (let ((__tmp178822
                                  (_%write-reason178779%_ _%exn178781%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont178783%_
                              __tmp178822
                              _%exn178781%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp178821))))
               (_%thunk178788%_ ##repl)
               (_%handler178793%_ _%handler178785%_))
          (if (procedure? _%thunk178788%_)
              (let ((_%thunk178807%_ _%thunk178788%_))
                (declare (not safe))
                (__with-exception-handler _%handler178793%_ _%thunk178807%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk178788%_)
                '#!void)))))))
