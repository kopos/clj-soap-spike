# clj-soap-spike
Demonstrate build and deploy a SOAP Service via Clojure

The objective of this repo is to create an implementation of a SOAP Service Spec using Clojure.

## Limitations

* WSDL was generated with Axis 1.4 (since it uses RPC encoding)
* The implementation has to be in Clojure

## java dir 
* Create a WSDL in Java (https://www.digizol.com/2008/07/web-service-axis-tutorial-client-server.html)
* All the steps to build the WSDL, server and client jars are covered in the above link and the `java` dir has all the shell scripts and code to complete the above step

## cljcalc dir
* The cljcalc dir holds the clojure code to implement the Service
* The generated dir in the clojure repo is a copy of the `java/src/in/vume/websvc/ws/generated/` dir in the `java` dir
* `cljcalc/src/clj/in/vume/websvc/ws/impl/CalculatorSoapBindingCljImpl.clj` is the service implementation
* The resources holds the `deploy.wsdd` and `undeploy.wsdd` to deploy the clj class to AXIS1.4

## axis_libs
* Holds the core and extra libs required to pass the happyaxis.jsp test (https://axis.apache.org/axis/java/install.html#Step_4:_Validate_the_Installation)
