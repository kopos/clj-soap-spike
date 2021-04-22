(ns in.vume.websvc.ws.impl.CalculatorSoapBindingCljImpl
  (:gen-class
     :implements [in.vume.websvc.ws.generated.Calculator]))

(defn -add [this in0 in1]
  (* 10 (+ in0 in1)))

(defn -sub [this in0 in1]
  (* 2 (- in0 in1)))