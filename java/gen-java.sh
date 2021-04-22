#!/bin/bash

AXIS_HOME=$HOME/bin/axis-1_4
AXIS_LIB=$AXIS_HOME/lib

export CLASSPATH=$CLASSPATH:$AXIS_LIB/axis.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/commons-discovery-0.2.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/commons-logging-1.0.4.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/jaxrpc.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/log4j-1.2.8.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/saaj.jar
export CLASSPATH=$CLASSPATH:$AXIS_LIB/wsdl4j-1.5.1.jar

java -cp ./classes:$CLASSPATH -Dlog4j.configuration=$LIB/log4j.properties org.apache.axis.wsdl.WSDL2Java -o src -p in.vume.websvc.ws.generated -s ./calculator.wsdl
