#!/bin/bash

AXIS_DEPLOY=/var/lib/tomcat9/webapps/axis/WEB-INF/lib

lein uberjar && sudo cp target/uberjar/cljcalc.jar $AXIS_DEPLOY

export AXIS_HOME=$HOME/bin/axis-1_4
export CP=$CP:$AXIS_HOME/lib/axis.jar
export CP=$CP:$AXIS_HOME/lib/commons-discovery-0.2.jar
export CP=$CP:$AXIS_HOME/lib/commons-logging-1.0.4.jar
export CP=$CP:$AXIS_HOME/lib/jaxrpc.jar
export CP=$CP:$AXIS_HOME/lib/log4j-1.2.8.jar
export CP=$CP:$AXIS_HOME/lib/saaj.jar
export CP=$CP:$AXIS_HOME/lib/saaj.jar
export CP=$CP:$AXIS_HOME/lib/wsdl4j-1.5.1.jar

java -cp $CP org.apache.axis.client.AdminClient resources/deploy.wsdd
