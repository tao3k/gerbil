;;; -*- Gerbil -*-
;;; © fare
;;; DAG (directed acyclic graph) algorithms

(export walk-dag)

(import
  (only-in :std/hash/misc hash-ensure-ref)
  (only-in :std/list/list push! pop!))

;; Recursively walk the DAG of transitive arrows from a set of nodes,
;; possibly register the visiting paths, and
;; compute a synthetic attribute as we go.
;; Typically, walk is (cut <> start-node), or (cut map <> start-node-list).
;; : ((Node -> Attribute) -> Result) \
;;   arrows: (Node -> Arrows) \
;;   arrow-target: ?(Arrow -> Node) \
;;   synthetic-attribute: ?(Node (List Arrows) (List Attribute) -> Attribute)
;;   register-arrow: ?(Node Arrow -> Unit) \
;; -> Result
(def (walk-dag
      ;; chooses one or many (potentially all) initial nodes from which to start walking
      (walk : :procedure)
      ;; annotated arrows from a node
      arrows: (arrows : :procedure)
      ;; given an arrow, return its node (default: itself, encoding the further down-arrows)
      arrow-target: (arrow-target : :procedure := identity)
      ;; given a node, the list of its down arrows, and a list of their respective attributes,
      ;; synthesize the attribute for the now (default: always return #t)
      synthetic-attribute: (synthetic-attribute : :procedure := true)
      ;; given an arrow, register it (through side-effects) before to visit it (default: void)
      register-arrow: (register-arrow : :procedure := void))
  (def visited-table (hash))
  (def visiting-table (hash))
  (def visiting-list [])
  (def (visit node)
    (when (hash-key? visiting-table node)
      (error "Circularity in expected DAG for" node visiting-list))
    (hash-put! visiting-table node #t)
    (push! node visiting-list)
    (try
     (hash-ensure-ref visited-table node
       (cut let (arrs (arrows node))
            (synthetic-attribute node arrs
                                 (map (lambda (arrow)
                                        (register-arrow node arrow)
                                        (visit (arrow-target arrow))) arrs))))
     (finally (pop! visiting-list)
              (hash-remove! visiting-table node))))
  (walk visit))
