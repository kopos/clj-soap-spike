#!/bin/bash

cd classes && \
jar cvf ../calculatorClientSide.jar \
    in/vume/websvc/ws/generated/CalculatorSoapBindingStub.class \
    in/vume/websvc/ws/generated/CalculatorServiceLocator.class \
    in/vume/websvc/ws/generated/CalculatorService.class \
    in/vume/websvc/ws/generated/Calculator.class && \
cd -
