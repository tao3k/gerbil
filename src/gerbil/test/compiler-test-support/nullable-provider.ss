;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Cross-module nullable signature producer.
(import :std/interface)
(export #t)
(interface NullableAPI (value))
(defstruct APIValue ())
(defmethod {value APIValue} (lambda (self) 42))
(deftype @NullableAPI NullableAPI)
(def (nullable-result flag) (if flag (NullableAPI (make-APIValue)) #f))
(def (nullable-identity (obj :? @NullableAPI)) obj)
(def (required-api (obj : @NullableAPI)) obj)
(def (guarded-api (obj :? @NullableAPI)) (if obj (obj.value) #f))
