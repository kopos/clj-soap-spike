#!/bin/bash
AXIS_HOME=$HOME/bin/axis-1_4
AXIS_LIB=$AXIS_HOME/lib

export CP=$CP:$AXIS_LIB/axis.jar
export CP=$CP:$AXIS_LIB/commons-discovery-0.2.jar
export CP=$CP:$AXIS_LIB/commons-logging-1.0.4.jar
export CP=$CP:$AXIS_LIB/jaxrpc.jar
export CP=$CP:$AXIS_LIB/log4j-1.2.8.jar
export CP=$CP:$AXIS_LIB/saaj.jar
export CP=$CP:$AXIS_LIB/wsdl4j-1.5.1.jar

java -cp $CP org.apache.axis.client.AdminClient src/in/vume/websvc/ws/generated/deploy.wsdd

