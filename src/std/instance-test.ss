;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Instance tests — interface binding, receiver hygiene, and rebinding.

(export instance-test)

(import :std/test
        :std/instance)

(interface LeftLabel
  (label))

(interface RightLabel
  (label))

(defstruct tagged (value))

(instance LeftLabel (self tagged)
  ((label) (cons 'left self.value)))

(instance RightLabel (self tagged)
  ((label) (cons 'right self.value)))

(interface Arithmetic
  (increment value)
  (increment-twice value))

(defstruct arithmetic ())

(instance (ops Arithmetic) arithmetic
  ((increment value) (1+ value))
  ((increment-twice value)
   (ops.increment (ops.increment value))))

(interface ReceiverScope
  (receiver-scope))

(def self 'outer-self)
(defstruct implicit-receiver ())

(instance ReceiverScope implicit-receiver
  ((receiver-scope) self))

(interface Rebindable
  (rebound-value))

(defstruct rebound ())

(instance Rebindable rebound
  ((rebound-value) 42)
  rebind: #t)

(def instance-test
  (test-suite "test :std/instance"
    (test-case "interface-qualified methods"
      (def obj (tagged 'value))
      (check (using (left obj : LeftLabel)
               (left.label))
             => '(left . value))
      (check (using (right obj : RightLabel)
               (right.label))
             => '(right . value)))

    (test-case "interface object binding"
      (check (using (ops (arithmetic) : Arithmetic)
               (ops.increment-twice 40))
             => 42))

    (test-case "implicit receiver is hygienic"
      (check (using (obj (implicit-receiver) : ReceiverScope)
               (obj.receiver-scope))
             => 'outer-self))

    (test-case "rebind option"
      (check (using (obj (rebound) : Rebindable)
               (obj.rebound-value))
             => 42))))
