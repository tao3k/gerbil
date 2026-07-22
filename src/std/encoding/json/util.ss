;;; -*- Gerbil -*-
;;; © vyzo
;;; json utilities
(import :std/error
        :std/format/ioutil
        :std/io
        :std/io/bio/api
        :std/iter
        :std/list/alist
        :std/list/list
        :std/list/list-builder
        :std/list/plist
        :std/list/walist
        (only-in :std/misc/ports read-all-as-string)
        ./env
        ./io
        ./writer
        ./reader)
(export #t)

;;; BufferedReader / BufferedWriter (direct, efficient)

(def* read-json
  ((reader options)
   (with-buffered-reader reader
     (parse-json (open-buffered-reader reader) options)))
  ((reader)
   (read-json reader (current-json-read-options)))
  ((reader . args)
   (read-json reader (apply make-JSONReadOptions args))))

(def* write-json
  ((writer obj ctx)
   (with-buffered-writer writer
     (write-json-object writer obj (json-write-context ctx))))
  ((writer obj)
   (write-json writer obj (json-write-context)))
  ((writer obj . args)
   (write-json writer obj (apply make-JSONWriteOptions args))))

;;; String / bytes convenience

(def (string->json (str : :string)
                   (opt : JSONReadOptions := (current-json-read-options)))
  (u8vector->json (string->utf8 str) opt))

(def (json->string obj . args)
  (apply write-json #f obj args))

(def (u8vector->json (bytes : :u8vector)
                     (opt : JSONReadOptions := (current-json-read-options)))
  (with-buffered-reader (reader bytes)
    (begin0
      (reader.parse-json opt)
      ;; verify trailing content is whitespace-only
      (let lp ()
        (let (char (reader.peek-char-utf8))
          (cond
           ((eof-object? char) (void))
           ((char-whitespace? char)
            (reader.read-char-utf8)
            (lp))
           (else
            (raise-io-error u8vector->json
                            "Unexpected trailing content after JSON value"
                            bytes char))))))))

(def (json->u8vector obj (ctx (json-write-context)))
  => :u8vector
  (: (write-json 'u8vector obj (json-write-context ctx)) :u8vector))

;;; Pretty-print variants

(def (pretty-json writer obj
                  scan: (scan #f)
                  indent: (indent 2)
                  style: (style 'standard)
                  sort-keys: (sort-keys #f))
  ;; standard style is the RFC 8259 / jq style; lisp style is compact Lisp-friendly indentation
  (with-buffered-writer writer
    (let (ctx (json-write-context
               (JSONWriteOptions scan: scan sort-keys: sort-keys pretty: style indent: indent)))
      (write-json-object writer obj ctx)
      (writer.write-newline))))

;;; Simple default handling for objects

(def (json->alist json)
  (cond
   ((AList? json) (walist->list json))
   ((hash-table? json) (hash->list json))
   (else (raise-bad-argument json->alist "AList or hash" json))))

(def (trivial-object->json x)
  (check-argument (##structure? x) "structure" x)
  (let ((type (##structure-type x)))
    (walist (map (match <> ([name . index] (cons name (##structure-ref x index type name))))
                 (class-type-printable-slots type)))))

(def (trivial-json->object strukt json (defaults_ #f))
  (def defaults (or defaults_ (hash)))
  (def offsets (HashTable (class-type-slot-table strukt)))
  (def slots (class-type-slot-vector strukt))
  (def n (vector-length slots))
  (def (get-pos key)
    (def slot
      (cond
       ((symbol? key) key)
       ((string? key) (##find-interned-symbol key))
       (else #f)))
    (or (hash-get offsets slot)
        (raise-bad-argument trivial-json->object "json key for struct" [key strukt json])))
  (def object (new-instance strukt))
  (def bound? (make-vector n #f))
  (vector-set! bound? 0 #t)
  (def (handle-slot k v)
    (let (p (get-pos k))
      (when (vector-ref bound? p)
        (raise-bad-argument trivial-json->object "field uniquely defined" [k strukt json]))
      (vector-set! bound? p #t)
      (##structure-set! object v p strukt 'trivial-json-object->struct)))
  (cond
   ((hash-table? json) (for (((values k v) (in-hash json))) (handle-slot k v)))
   ((AList? json) (for (((cons k v) (walist->list json))) (handle-slot k v)))
   (else (raise-bad-argument trivial-json->object "json object" json)))
  (def unbounds
    (with-list-builder (c)
     (for ((p (in-range 1 n)))
       (let ((b? (vector-ref bound? p))
             (slot (vector-ref slots p)))
         (cond
          (b? (void))
          ((hash-key? defaults slot) (##structure-set! object (hash-ref defaults slot) p strukt 'trivial-json-object->struct))
          (else (c slot)))))))
  (unless (null? unbounds)
    (raise-bad-argument trivial-json->object "unbound fields" [unbounds strukt json (hash->list defaults)]))
  object)

(defmethod {:json :object}
  trivial-object->json)
