;;; -*- Gerbil -*-
;;; © vyzo
;;; high level format api
(import :std/serde/interface
	:std/serde/serialize
	:std/serde/deserialize
        :std/io/interface
        :std/io/bio/api
        :std/io/bio/buffer
        :std/io/interface/bio
        ./env
        ./ioutil
        ./io
        ./writer
        ./format
        ./reader
	(for-syntax ./format-string))
(export #t
        (import: :std/io/bio/api)
        (import: :std/io/interface/bio)
        (import: ./ioutil)
        (import: ./writer))

(import (for-syntax integer-conversions))

(begin-syntax
  (def (fold-format-string-for-stx stx fmt args)
    (let* ((fold-char
            (lambda ((char   :- :char)
                (result :- :list))
              (cons `(char ,char)
                    result)))
           (fold-int
            (lambda (arg how flags width precision result)
              (cons `(int ,arg ,how ,flags ,width ,precision)
                    result)))
           (fold-float
            (lambda (arg how flags width precision result)
              (cons `(float ,arg ,how ,flags ,width ,precision)
                    result)))
           (fold-object
            (lambda (arg how result)
              (cons `(object ,arg ,how)
                    result)))
           (error!
            (lambda (msg . args)
              (raise-syntax-error #f msg stx args)))
           (folder
            (FormatFolder
             fold-char
             fold-int
             fold-float
             fold-object
             error!)))
      (fold-format-string folder fmt [] args)))

  (def (fold-format-ops-for-stx stx writer ctx ops)
    (with-identifiers ((writer.write-char writer writer ".write-char-utf8")
                       (writer.format-float writer writer ".format-float"))
      (let loop ((rest ops) (result []))
	(match rest
	  ([op . rest]
	   (match op
	     (['char arg]
	      (with-syntax ((arg arg))
		(loop rest
                      (cons #'(writer.write-char arg)
		            result))))
	     (['int arg how flags width precision]
	      (with ([prefix-char base upper-case?]
                     (or (agetq how __integer-conversions)
		         (raise-syntax-error #f "integer format specifier" stx how)))
		(loop rest
		      (cons
		       (with-syntax ((writer writer) (arg arg) (flags flags)
			             (width width) (precision precision)
                                     (prefix prefix-char)
                                     (base base) (upper-case? upper-case?))
                         #'(do-write-integer writer (: arg :integer) 'flags
                                             width precision prefix base upper-case?))
		       result))))
	     (['float arg how flags width precision]
	      (loop rest
		    (cons (with-syntax ((writer writer) (arg arg) (flags flags)
                                        (width width) (precision precision)
                                        (how (char->integer how)))
                            #'(writer.format-float (: arg :flonum) 'flags width precision how))
                          result)))
             (['object arg how]
              (with-syntax ((writer writer) (ctx ctx) (arg arg))
                (loop rest
                      (cons (case how
                              ((#\a) #'(format-display writer arg ctx))
                              ((#\s) #'(format-write writer arg ctx))
                              ((#\q) #'(format-debug writer arg ctx))
                              (else
                               (raise-syntax-error #f "object format specifier: %a, %s, or %q" stx how #'arg)))
                            result))))
             (else
              (raise-syntax-error #f "unexpected format operation" stx op))))
          (else result))))))

;; writer
(defsyntax-case format ()
  ((_ fmt-string arg ...)
   (stx-string? #'fmt-string)
   (let* ((ops    (fold-format-string-for-stx stx (stx-e #'fmt-string) #'(arg ...)))
          (writer (syntax-local-temp '$writer))
          (ctx    (syntax-local-temp '$ctx))
          (ops    (fold-format-ops-for-stx stx writer ctx ops)))
     (with-syntax ((writer writer) (ctx ctx) ((op ...) ops))
       #'(let (ctx (format-context))
           (using (writer (open-buffered-writer #f very-small-buffer-size)
                          :- BufferedWriter)
             op ...
             (get-memory-output-string-utf8 writer))))))
  ((_ fmt-string arg ...)
   #'(apply-formatter
      (make-formatter fmt-string)
      arg ...))
  (id (identifier? #'id)
      #'(lambda (fmt-string . args)
          (apply apply-formatter
            (make-formatter fmt-string)
            args))))

(defsyntax-case fprintf ()
  ((_ output-target fmt-string arg ...)
   (stx-string? #'fmt-string)
   (let* ((ops    (fold-format-string-for-stx stx (stx-e #'fmt-string) #'(arg ...)))
          (writer (syntax-local-temp '$writer))
          (ctx    (syntax-local-temp '$ctx))
          (ops    (fold-format-ops-for-stx stx writer ctx ops)))
     (with-syntax ((writer writer) (ctx ctx) ((op ...) ops))
       #'(let ((output output-target)
               (ctx    (format-context)))
           (cond
            ((try-BufferedWriter output)
             => (lambda ((writer :- BufferedWriter))
                  => :fixnum
                  (do-write (wr 0) op ... wr)))
            (else
             (using (writer (open-buffered-writer output very-small-buffer-size)
                            :- BufferedWriter)
               (begin0
                   (do-write (wr 0) op ... wr)
                 (buffer-detach! writer)))))))))
  ((_ output fmt-string arg ...)
   #'(apply-formatter-to-output
      (make-formatter fmt-string)
      output arg ...))
  (id (identifier? #'id)
      #'(lambda (output fmt-string . args)
          (apply apply-formatter-to-output
            (make-formatter fmt-string)
            output args))))

(defrule (printf fmt-string arg ...)
  (fprintf (current-output-port) fmt-string arg ...))

(defrule (eprintf fmt-string arg ...)
  (fprintf (current-error-port) fmt-string arg ...))

;; writer
(def (write-object (writer : BufferedWriter) obj (ctx (format-context) : WriteContext))
  (format-write writer obj ctx))

;; reader
(def (read-object (reader : BufferedReader) (env (reader-environment) : ReaderEnv))
  (format-read reader env))

(def (read-object-from-string (str : :string) (env (reader-environment) : ReaderEnv))
  (read-object (open-buffered-reader (string->utf8 str))
	       env))
