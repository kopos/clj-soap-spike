/**
 * CalculatorService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package in.vume.websvc.ws.generated;

public interface CalculatorService extends javax.xml.rpc.Service {
    public java.lang.String getcalculatorAddress();

    public in.vume.websvc.ws.generated.Calculator getcalculator() throws javax.xml.rpc.ServiceException;

    public in.vume.websvc.ws.generated.Calculator getcalculator(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
