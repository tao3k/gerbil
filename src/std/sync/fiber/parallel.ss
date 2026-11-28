;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Structured Parallel Combinators (Work-Stealing across SMP Cores)

(import ./state
        ./nursery
        ./scheduler)
(export parallel-for-each
        parallel-map)

(def (%parallel-for-each-in-fiber f lst)
  (with-nursery
   (lambda (n)
     (for-each (lambda (x)
                 (fiber-spawn (lambda () (f x)) n))
               lst))))

(def (parallel-for-each (f : :procedure) (lst : :list)
                        workers: (workers : :t := (##current-vm-processor-count)))
  => :void
  (if (in-fiber?)
    (%parallel-for-each-in-fiber f lst)
    (run-fibers (lambda () (%parallel-for-each-in-fiber f lst))
                workers: workers))
  (void))

(def (%parallel-map-in-fiber f lst)
  (let* ((items (list->vector lst))
         (len (vector-length items))
         (out (make-vector len #f)))
    (with-nursery
     (lambda (n)
       (let loop ((i 0))
         (when (fx< i len)
           (let ((idx i)
                 (item (vector-ref items i)))
             (fiber-spawn (lambda () (vector-set! out idx (f item))) n))
           (loop (fx+ i 1))))))
    (vector->list out)))

(def (parallel-map (f : :procedure) (lst : :list)
                   workers: (workers : :t := (##current-vm-processor-count)))
  => :list
  (:- (if (in-fiber?)
        (%parallel-map-in-fiber f lst)
        (run-fibers (lambda () (%parallel-map-in-fiber f lst))
                    workers: workers))
      :list))
