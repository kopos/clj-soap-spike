#!/bin/bash

AXIS_HOME=$HOME/bin/axis-1_4
LIB=$AXIS_HOME/lib

export CP=$CP:$AXIS_HOME/lib/axis.jar
export CP=$CP:$AXIS_HOME/lib/commons-discovery-0.2.jar
export CP=$CP:$AXIS_HOME/lib/commons-logging-1.0.4.jar
export CP=$CP:$AXIS_HOME/lib/jaxrpc.jar
export CP=$CP:$AXIS_HOME/lib/log4j-1.2.8.jar
export CP=$CP:$AXIS_HOME/lib/saaj.jar
export CP=$CP:$AXIS_HOME/lib/wsdl4j-1.5.1.jar

javac -cp ./classes:$CP -d classes src/in/vume/websvc/ws/generated/*.java && \
cd classes && jar cvf ../calculatorServerSide.jar in/vume/websvc/*.class in/vume/websvc/ws/*.class in/vume/websvc/ws/generated/*.class && cd -