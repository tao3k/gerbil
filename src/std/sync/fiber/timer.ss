;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Cooperative Non-Blocking Fiber Sleep (Lazy Per-Scheduler Timer Thread)

(import :std/control
        :gerbil/runtime/util
        ./state
        ./nursery)
(export #t)

(def (%timer-insert sorted entry)
  (let ((dl (##car entry)))
    (if (or (null? sorted) (<= dl (##car (##car sorted))))
      (cons entry sorted)
      (let loop ((prev sorted) (cur (##cdr sorted)))
        (if (or (null? cur) (<= dl (##car (##car cur))))
          (begin
            (set-cdr! prev (cons entry cur))
            sorted)
          (loop cur (##cdr cur)))))))

(def (%sched-timer-loop (sched :- %FiberScheduler))
  (let ((mx sched.timer-mx)
        (cv sched.timer-cv)
        (st sched.state))
    (let loop ()
      (let ((to-wake '())
            (next-dl #f))
        (mutex-lock! mx)
        (let ((now (##current-time-point)))
          (let drain ((q sched.timer-q))
            (cond
             ((null? q)
              (set! sched.timer-q '()))
             ((<= (##car (##car q)) now)
              (set! to-wake (cons (##cdr (##car q)) to-wake))
              (drain (##cdr q)))
             (else
              (set! sched.timer-q q)
              (set! next-dl (##car (##car q)))))))
        (cond
         ((pair? to-wake)
          (mutex-unlock! mx)
          (for-each (lambda (k) (%sched-wake! sched k)) (reverse to-wake))
          (loop))
         ((fx> (:- (__atomic-fx-load st %FS-IDX-STOPPED 1) :fixnum) 0)
          (mutex-unlock! mx)
          (void))
         (next-dl
          (mutex-unlock! mx cv (seconds->time next-dl))
          (loop))
         (else
          (mutex-unlock! mx cv)
          (loop)))))))

(def (%sched-ensure-timer! (sched :- %FiberScheduler))
  (when (fx= (:- (__atomic-fx-cas! sched.state %FS-IDX-TIMER 0 1 3) :fixnum) 0)
    (let ((t (make-thread (lambda () (%sched-timer-loop sched))
                          'fiber-timer)))
      (set! sched.timer-thread t)
      (thread-start! t))))

(def (%park-sleep-waiter! (sched :- %FiberScheduler) k secs)
  (%sched-ensure-timer! sched)
  (let ((dl (+ (##current-time-point) secs)))
    (mutex-lock! sched.timer-mx)
    (set! sched.timer-q (%timer-insert sched.timer-q (cons dl k)))
    (condition-variable-signal! sched.timer-cv)
    (mutex-unlock! sched.timer-mx)))

(def (fiber-sleep! (secs : :real))
  => :void
  (cond
   ((not (in-fiber?))
    (thread-sleep! secs)
    (void))
   ((<= secs 0)
    (fiber-yield)
    (void))
   (else
    (perform %eff-park-sleep secs)
    (void))))
