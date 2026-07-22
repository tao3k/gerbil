;;; -*- Gerbil -*-
;;; © vyzo
;;; json io environment
(import :std/serde/scan :std/error)
(export #t)

;;; Reader options: control JSON → Scheme decoding
(defclass JSONReadOptions
  ((key-as-symbol   : :boolean := #f)   ; read JSON keys as symbols; default: #f (strings)
   (array-as-vector : :boolean := #f)   ; read JSON arrays as vectors; default: #f (lists)
   (object-as-hash  : :boolean := #f))  ; read JSON objects as hash-tables; default: #f (walist)
  final: #t)

(def default-json-read-options
  (JSONReadOptions key-as-symbol: #f array-as-vector: #f object-as-hash: #f))

(def current-json-read-options
  (make-parameter default-json-read-options))

;;; Writer options: control Scheme → JSON encoding
(defclass JSONWriteOptions
  ((sort-keys :  :boolean := #f)   ; sort keys when writing
   (pretty    :? :symbol := #f)    ; pretty-print style: #f | 'standard | 'lisp
   (indent    :  :fixnum := 2)     ; spaces per indent level when pretty-printing
   (scan      :  :boolean := #f))  ; whether to scan for circularities while printing
  final: #t)

(def default-json-write-options
  (JSONWriteOptions sort-keys: #f pretty: #f indent: 2 scan: #f))

(def current-json-write-options
  (make-parameter default-json-write-options))

;;; Write context: bundles writer options + optional cycle detection + mutable indent level
(defclass JSONWriteContext
  ((opt  :  JSONWriteOptions)
   (scan :? ScanContext)     ; optional ScanContext for cycle detection; #f = no detection
   (ind  :  :fixnum))        ; current indentation level for pretty-printing (mutable)
  constructor: :init!
  final: #t)

(defmethod {:init! JSONWriteContext}
  (lambda (self (opt : JSONWriteOptions))
    (set! self.opt  opt)
    (set! self.scan (and opt.scan (ScanContext #f #f #f)))
    ;; lisp-style starts at -1 so first-level indent = (-1 + indent) = typically 1 space
    (set! self.ind  (if (eq? opt.pretty 'lisp) -1 0))))

(def (json-write-context (x (current-json-write-options)))
  => JSONWriteContext
  (cond
   ((JSONWriteContext? x) x)
   ((JSONWriteOptions? x) (JSONWriteContext x))
   (else (raise-bad-argument json-write-context "invalid argument" x))))
