;;; -*- Gerbil -*-
;;; system logger lifecycle regressions
(import :std/interface
        :std/list/walist
        :std/log
        :std/sync/channel
        :std/test
        :std/time/precise
        (only-in ./system system-log-lovel))
(export system-test)

(def early-source "/std/log/system-test/early")
(def late-source "/std/log/system-test/late")
(def capture-channel (make-channel 4))

(defclass (capture-sink BasicLogger) () final: #t)
(defmethod {log capture-sink}
  (lambda (self record)
    (when (or (string=? (Record-source record) early-source)
              (string=? (Record-source record) late-source))
      (channel-try-put capture-channel record)))
  interface: Logger)
(defmethod {start! capture-sink} void interface: LogSink)
(defmethod {stop! capture-sink} void interface: LogSink)
(@implement Logger capture-sink)
(@implement LogSink capture-sink)

(def test-sink
  (LogSink
   (capture-sink name: "/std/log/system-test/capture"
                 level: VERBOSE)))

(def (channel-get/bounded channel seconds default)
  (let ((deadline (+ (##current-time-point) seconds))
        (absent (gensym)))
    (let loop ()
      (let (value (channel-try-get channel absent))
        (cond
         ((not (eq? value absent)) value)
         ((>= (##current-time-point) deadline) default)
         (else
          (thread-sleep! .01)
          (loop)))))))

(def (make-record level source message)
  (Record (current-time-coarse) level source message (wanull)))

(def system-test
  (test-suite "system logger lifecycle"
    (test-case "late sources are registered with the running logger"
      (let ((system-level (system-log-lovel))
            (missing (gensym)))
        (try
         (begin
           (set-system-log-level! VERBOSE)
           (let (early (get-logger early-source INFO))
             (add-system-sink! test-sink)
             (Logger-log early
                         (make-record INFO early-source "early-ready"))
             (let (record (channel-get/bounded capture-channel 4 missing))
               (check (eq? record missing) => #f)
               (check (Record-source record) => early-source)
               (check (Record-level record) => INFO)
               (check (Record-msg record) => "early-ready")))
           (let (late (get-logger late-source INFO))
             (check-eq? (get-logger late-source INFO) late)
             (Logger-log late
                         (make-record DEBUG late-source "filtered-debug"))
             (Logger-log late
                         (make-record INFO late-source "late-info"))
             (let (record (channel-get/bounded capture-channel 4 missing))
               (check (eq? record missing) => #f)
               (check (Record-source record) => late-source)
               (check (Record-level record) => INFO)
               (check (Record-msg record) => "late-info"))
             (check-eq? (channel-get/bounded capture-channel .1 missing)
                        missing)))
         (finally
          (set-system-log-level! system-level)))))))
