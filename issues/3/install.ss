(import :std/misc/process)
(def began (real-time))
(def last-progress began)
(def longest-gap 0)
(def indexing-start #f)
(def completed-tags 0)
(def compiled 0)
(def (progress!)
  (def now (real-time))
  (set! longest-gap (max longest-gap (- now last-progress)))
  (set! last-progress now))
(run-process ["timeout" "--signal=TERM" "--kill-after=5s" "180s"
              "gerbil" "pkg" "deps" "--install"]
  stderr-redirection: #t
  check-status: (lambda (status _)
    (unless (zero? status)
      (displayln "ISSUE-3 completed=false"
                 " phase=" (if indexing-start "tagging" "before-tagging")
                 " elapsed-seconds=" (- (real-time) began)
                 " completed-tags=" completed-tags
                 " process-status=" status)
      (error "gerbil pkg deps --install failed" status)))
  coprocess: (lambda (port)
    (close-output-port port)
    (let loop ()
      (def line (read-line port))
      (unless (eof-object? line)
        (displayln line)
        (cond
          ((string-prefix? "TAG " line)
           (set! completed-tags (1+ completed-tags))
           (progress!))
          ((string-prefix? "... compile " line)
           (set! compiled (1+ compiled))
           (progress!))
          ((string-prefix? "... tagging packages" line)
           (set! indexing-start (real-time))))
        (loop)))))
(def elapsed (- (real-time) began))
(progress!)
(unless (and indexing-start (zero? compiled))
  (error "expected indexing and zero default compilation" compiled))
(displayln "ISSUE-3 completed=true install-seconds=" elapsed
           " tag-to-exit-seconds=" (- (real-time) indexing-start)
           " completed-tags=" completed-tags
           " largest-progress-gap-seconds=" longest-gap
           " crosses-60s-idle=" (if (>= longest-gap 60) "yes" "no"))
