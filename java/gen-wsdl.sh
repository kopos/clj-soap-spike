#!/bin/bash

AXIS_HOME=$HOME/bin/axis-1_4
AXIS_LIB=$AXIS_HOME/lib

# CLASSPATH
export CP=$CP:$AXIS_LIB/axis.jar
export CP=$CP:$AXIS_LIB/commons-discovery-0.2.jar
export CP=$CP:$AXIS_LIB/commons-logging-1.0.4.jar
export CP=$CP:$AXIS_LIB/jaxrpc.jar
export CP=$CP:$AXIS_LIB/log4j-1.2.8.jar
export CP=$CP:$AXIS_LIB/saaj.jar
export CP=$CP:$AXIS_LIB/saaj.jar
export CP=$CP:$AXIS_LIB/wsdl4j-1.5.1.jar

java -cp ./classes:$CP -Dlog4j.configuration=$LIB/log4j.properties org.apache.axis.wsdl.Java2WSDL -o ./calculator.wsdl -n urn:in.vume.websvc -l http://localhost:8080/axis/services/calculator in.vume.websvc.ws.Calculator
