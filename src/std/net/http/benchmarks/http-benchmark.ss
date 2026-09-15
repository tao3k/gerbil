;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;;
;;; Requires a built checkout, GNU timeout, and Vegeta v12.13.0 on PATH (or set VEGETA). Keep 127.0.0.1:8080 free.
;;; Vegeta: https://github.com/tsenart/vegeta/releases/tag/v12.13.0
;;; Compile and run from the checkout root; the measured server and handlers run in-process:
;;;
;;;   out=$(mktemp -d)
;;;   ./run.sh gxc -O -exe -d "$out" -o "$out/http-benchmark" src/std/net/http/benchmarks/http-benchmark.ss
;;;   ./run.sh "$out/http-benchmark"
;;;
;;; Simple, chunked, small-echo and 1 MiB-echo workloads each use a 5-second warm-up and 30-second measurement at 50 requests/second.
;;; The printed results directory retains targets, bodies, Vegeta's version, binary results and text reports.
;;; Check status codes and errors before comparing runs: Vegeta's exit code alone does not indicate request success. Bodies are drained but not saved, so Bytes In is zero.
;;; Keep Vegeta, settings and machine placement unchanged between revisions.
(import
  :std/io
  :std/io/tempfile
  :std/iter
  :std/log
  :std/misc/process
  :std/net/http/server
  :std/os/error
  :std/os/signal
  :std/os/signal-handler)
(export
  main)

(def greeting (string->utf8 "hello there!"))

(def (simple-handler (req :- Request)
                     (res :- ResponseHandler))
  => :void
  (res.write! OK '(("Content-Type" . "text/plain")) greeting))

(def (chunked-handler (req :- Request)
                      (res :- ResponseHandler))
  => :void
  (using (writer (res.begin! OK '(("Content-Type" . "text/plain")))
                 : BufferedWriter)
    (writer.write-string-utf8 "hello ")
    ;; Flush so the two writes produce two HTTP chunks, not one buffered chunk.
    (writer.flush)
    (writer.write-string-utf8 "there!")
    (writer.close)))

(def (echo-handler (req :- Request)
                   (res :- ResponseHandler))
  => :void
  (using (writer (res.begin! OK '(("Content-Type" . "application/octet-stream")))
                 : Writer)
    (io-copy! req.body writer)
    (writer.close)))

(def (write-target! (out    : :string)
                    (name   : :string)
                    (target : :string))
  => :void
  (call-with-output-file (path-expand (string-append name ".targets") out)
    (lambda ((output : :port)) => :void
      (display target output))))

(def (prepare-workloads! (out : :string))
  => :void
  (call-with-output-file (path-expand "small.body" out)
    (lambda ((output : :port)) => :void
      (write-u8vector greeting output)))
  (call-with-output-file (path-expand "large.body" out)
    (lambda ((output : :port)) => :void
      (display (make-string 1048576 #\x) output)))
  (for (path ["simple" "chunked"] :- :string)
    (write-target! out path
                   (string-append "GET http://127.0.0.1:8080/" path "\n")))
  (for (size ["small" "large"] :- :string)
    (write-target! out (string-append "echo-" size)
                   (string-append "POST http://127.0.0.1:8080/echo\nContent-Type: application/octet-stream\n@"
                                  (path-expand (string-append size ".body") out) "\n"))))

;; A child may finish between observing its PID and sending a signal.
(def (signal-process! (pid   : :fixnum)
                      (signo : :fixnum))
  => :boolean
  (try
   (kill pid signo)
   #t
   (catch (e)
     (if (and (os-error? e) (fx= (OSError-errno e) ESRCH))
       #f
       (raise e)))))

;; Drain concurrently with process-status: descendants can retain the pipe after
;; their parent exits. The owner kills the process group before joining this worker.
(def (copy-process-output! (input  : :port)
                           (output : :port))
  => :void
  (try
   (let loop ()
     => :void
     (let (line (read-line input #\newline #t))
       (unless (eof-object? line)
         (display line output)
         (force-output output)
         (display line)
         (force-output)
         (loop))))
   (finally
    (close-input-port input))))

(def (run-benchmark! (server : Server)
                     (out    : :string)
                     (vegeta : :string))
  => :fixnum
  (let ((mx (make-mutex 'http-benchmark-process))
        (child #f)
        (interrupted 0))
    ;; Record cancellation even when no child is published yet.
    (def (stop! (code : :fixnum))
      => :void
      (do-with-lock mx
        (when (fxzero? interrupted)
          (set! interrupted code))
        (when child
          (signal-process! child SIGTERM))))
    (let (result
          (let/cc return
            ;; Retain output and reap each owned process group before returning.
            (def (run-vegeta! (arguments : :list)
                              (output    : :string)
                              (deadline  : :string))
              => :void
              (unless (fxzero? interrupted)
                (return interrupted))
              (let ((status 0) (leftovers? #f))
                (call-with-output-file (path-expand output out)
                  (lambda ((output : :port)) => :void
                    (run-process
                     ["timeout" "--kill-after=5s" deadline vegeta arguments ...]
                     stderr-redirection: #t
                     check-status: #f
                     coprocess:
                     (lambda ((process : :port)) => :void
                       (close-output-port process)
                       (let (pid (process-pid process))
                         (do-with-lock mx
                           (set! child pid)
                           (unless (fxzero? interrupted)
                             (signal-process! pid SIGTERM)))
                         (let (reader (spawn-thread (cut copy-process-output! process output)))
                           (try
                            (set! status (process-status process))
                            (finally
                             (try
                              (do-with-lock mx
                                (set! child #f)
                                (set! leftovers? (signal-process! (fx- pid) SIGKILL)))
                              (finally
                               (thread-join! reader)))))))))))
                (when leftovers?
                  (display "Forced cleanup of subprocess descendants.\n" (current-error-port)))
                (cond
                 ((fxpositive? interrupted) (return interrupted))
                 ((not (fxzero? (fxand status #x7f)))
                  (return (fx+ 128 (fxand status #x7f))))
                 ((not (fxzero? status)) (return (fxarithmetic-shift-right status 8)))
                 (leftovers? (return 1)))))
            (try
             (add-signal-handler! SIGINT (lambda () => :void (stop! 130)))
             (add-signal-handler! SIGTERM (lambda () => :void (stop! 143)))
             (displayln "Results: " out)
             (force-output)
             ;; Stop the server before removing signal handlers, including when
             ;; a failed command escapes through RETURN.
             (try
              (run-vegeta! ["-version"] "vegeta-version.txt" "30s")
              (server.start!)
              (prepare-workloads! out)
              (for (workload ["simple" "chunked" "echo-small" "echo-large"] :- :string)
                (for (duration ["5s" "30s"] :- :string)
                  (let* ((name (string-append workload "-" duration))
                         (binary (path-expand (string-append name ".bin") out)))
                    (displayln "\n>>> " workload " (" duration ")")
                    (run-vegeta! ["-cpus=1" "attack"
                                  (string-append "-targets=" (path-expand (string-append workload ".targets") out))
                                  "-format=http" "-rate=50/s" (string-append "-duration=" duration)
                                  "-timeout=5s" "-workers=4" "-max-workers=4" "-connections=4" "-max-connections=4"
                                  "-http2=false" "-h2c=false" "-keepalive=false" "-chunked=false" "-redirects=0"
                                  "-max-body=0" (string-append "-output=" binary)]
                                 (string-append name ".log") "40s")
                    (run-vegeta! ["report" binary] (string-append name ".txt") "30s"))))
              (finally
               (server.stop!)))
             interrupted
             (finally
              (remove-signal-handler! SIGINT)
              (remove-signal-handler! SIGTERM)))))
      (if (fxpositive? interrupted) interrupted result))))

(def (main)
  => :void
  (let ((out (make-temporary-file-name "gerbil-http-benchmark."))
        (vegeta (getenv "VEGETA" "vegeta")))
    (create-directory out)
    (using (log (stderr-log-sink) : LogSink)
      (log.set-level! ERROR)
      (using (server (new-http-server
                     (ServerConfig
                      mux: (new-static-mux
                            path: "/simple" (new-closure-handler simple-handler)
                            path: "/chunked" (new-closure-handler chunked-handler)
                            path: "/echo" (new-closure-handler echo-handler))
                      log: log
                      listen: ["inet4:127.0.0.1:8080"]))
                     : Server)
        (exit (run-benchmark! server out vegeta))))))
