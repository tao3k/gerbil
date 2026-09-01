(export tal-test)

(import :std/test :std/text/markup/tal)

; define-TAL creates a top-level function that writes to current-tal-output-port.
; All define-TAL calls must be at module top-level.

(define-TAL (render-static)
  "<p>Hello, world!</p>")

(define-TAL (render-content greeting)
  "<p><span tal:content=\"greeting\">placeholder</span></p>")

(define-TAL (render-escaped markup)
  "<p tal:content=\"markup\">x</p>")

(define-TAL (render-raw markup)
  "<p tal:content=\"raw: markup\">x</p>")

(define-TAL (render-replace name)
  "<span tal:replace=\"name\">x</span>")

(define-TAL (render-when flag)
  "<p tal:condition=\"flag\">shown</p>")

(define-TAL (render-define)
  "<p tal:define=\"(x 42)\" tal:content=\"x\">y</p>")

(define-TAL (render-error)
  "<p tal:content=\"(error &quot;oops&quot;)\">x</p>")

(def (capture-tal thunk)
  (utf8->string
   (call-with-output-u8vector #u8()
     (lambda (port)
       (parameterize ((current-tal-output-port port))
         (thunk))))))

(def tal-test
  (test-suite "test :std/text/markup/tal"
    (test-case "static template produces literal html"
      (check (capture-tal render-static) => "<p>Hello, world!</p>"))

    (test-case "tal:content substitutes element body"
      (check (capture-tal (cut render-content "hi")) => "<p><span>hi</span></p>")
      ; numbers are stringified
      (check (capture-tal (cut render-content 42)) => "<p><span>42</span></p>"))

    (test-case "tal:content escapes html by default"
      (check (capture-tal (cut render-escaped "<b>bold</b>"))
             => "<p>&lt;b&gt;bold&lt;/b&gt;</p>"))

    (test-case "tal:content raw: skips escaping"
      (check (capture-tal (cut render-raw "<b>bold</b>"))
             => "<p><b>bold</b></p>"))

    (test-case "tal:replace replaces entire element"
      (check (capture-tal (cut render-replace "Alice")) => "Alice"))

    (test-case "tal:condition renders element only when true"
      (check (capture-tal (cut render-when #t)) => "<p>shown</p>")
      (check (capture-tal (cut render-when #f)) => ""))

    (test-case "tal:define binds local variables"
      (check (capture-tal render-define) => "<p>42</p>"))

    (test-case "current-tal:on-error catches template errors"
      (let (errors [])
        (parameterize ((current-tal:on-error
                        (lambda (e) (set! errors (cons (error-message e) errors)))))
          (let (out (capture-tal render-error))
            ; on-error handler called, not the default error output
            (check errors => '("oops"))))))

    (test-case "tal:write writes to current-tal-output-port"
      (check (capture-tal (lambda ()
                            (tal:write "hello")
                            (tal:write " ")
                            (tal:write "world")))
             => "hello world"))))
