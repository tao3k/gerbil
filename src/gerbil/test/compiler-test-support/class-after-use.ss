(def (use-it)
  (lambda ((obj : A))
    => A
    (: obj.x A)))

(deftype @A A)
(defclass A ((x :? @A)))
