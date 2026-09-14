(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/repl::timestamp 1789371528)
  (define replx
    (lambda ()
      (letrec ((_%write-reason180792%_
                (lambda (_%exn180830%_)
                  (lambda (_%cont180832%_ _%port180833%_)
                    (let ()
                      (declare (not safe))
                      (##display-exception-in-context
                       _%exn180830%_
                       _%cont180832%_
                       _%port180833%_))
                    '#f))))
        (let* ((_%handler180798%_
                (lambda (_%exn180794%_)
                  (let ((__tmp180834
                         (lambda (_%cont180796%_)
                           (let ((__tmp180835
                                  (_%write-reason180792%_ _%exn180794%_)))
                             (declare (not safe))
                             (##repl-within
                              _%cont180796%_
                              __tmp180835
                              _%exn180794%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp180834))))
               (_%thunk180801%_ ##repl)
               (_%handler180806%_ _%handler180798%_))
          (if (procedure? _%thunk180801%_)
              (let ((_%thunk180820%_ _%thunk180801%_))
                (declare (not safe))
                (__with-exception-handler _%handler180806%_ _%thunk180820%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/repl
                 'contract:
                 'procedure?
                 'value:
                 _%thunk180801%_)
                '#!void)))))))
