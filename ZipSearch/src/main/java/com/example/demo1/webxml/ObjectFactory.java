
package com.example.demo1.webxml;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each
 * Java content interface and Java element interface
 * generated in the cn.com.webxml package.
 * <p>An ObjectFactory allows you to programatically
 * construct new instances of the Java representation
 * for XML content. The Java representation of XML
 * content can consist of schema derived interfaces
 * and classes representing the binding of schema
 * type definitions, element declarations and model
 * groups.  Factory methods for each of these are
 * provided in this class.
 *
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _DataSet_QNAME = new QName("http://WebXml.com.cn/", "DataSet");
    private final static QName _ArrayOfString_QNAME = new QName("http://WebXml.com.cn/", "ArrayOfString");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: cn.com.webxml
     *
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetAddressByZipCodeResponse }
     *
     */
    public GetAddressByZipCodeResponse createGetAddressByZipCodeResponse() {
        return new GetAddressByZipCodeResponse();
    }

    /**
     * Create an instance of {@link GetSupportProvinceCityResponse }
     *
     */
    public GetSupportProvinceCityResponse createGetSupportProvinceCityResponse() {
        return new GetSupportProvinceCityResponse();
    }

    /**
     * Create an instance of {@link GetZipCodeByAddressResponse }
     *
     */
    public GetZipCodeByAddressResponse createGetZipCodeByAddressResponse() {
        return new GetZipCodeByAddressResponse();
    }

    /**
     * Create an instance of {@link GetSupportProvince }
     *
     */
    public GetSupportProvince createGetSupportProvince() {
        return new GetSupportProvince();
    }

    /**
     * Create an instance of {@link GetSupportProvinceCity }
     *
     */
    public GetSupportProvinceCity createGetSupportProvinceCity() {
        return new GetSupportProvinceCity();
    }

    /**
     * Create an instance of {@link GetAddressByZipCode }
     *
     */
    public GetAddressByZipCode createGetAddressByZipCode() {
        return new GetAddressByZipCode();
    }

    /**
     * Create an instance of {@link GetSupportCity }
     *
     */
    public GetSupportCity createGetSupportCity() {
        return new GetSupportCity();
    }

    /**
     * Create an instance of {@link GetZipCodeByAddress }
     *
     */
    public GetZipCodeByAddress createGetZipCodeByAddress() {
        return new GetZipCodeByAddress();
    }

    /**
     * Create an instance of {@link GetAddressByZipCodeResponse.GetAddressByZipCodeResult }
     *
     */
    public GetAddressByZipCodeResponse.GetAddressByZipCodeResult createGetAddressByZipCodeResponseGetAddressByZipCodeResult() {
        return new GetAddressByZipCodeResponse.GetAddressByZipCodeResult();
    }

    /**
     * Create an instance of {@link DataSet }
     *
     */
    public DataSet createDataSet() {
        return new DataSet();
    }

    /**
     * Create an instance of {@link ArrayOfString }
     *
     */
    public ArrayOfString createArrayOfString() {
        return new ArrayOfString();
    }

    /**
     * Create an instance of {@link GetSupportProvinceCityResponse.GetSupportProvinceCityResult }
     *
     */
    public GetSupportProvinceCityResponse.GetSupportProvinceCityResult createGetSupportProvinceCityResponseGetSupportProvinceCityResult() {
        return new GetSupportProvinceCityResponse.GetSupportProvinceCityResult();
    }

    /**
     * Create an instance of {@link GetSupportProvinceResponse }
     *
     */
    public GetSupportProvinceResponse createGetSupportProvinceResponse() {
        return new GetSupportProvinceResponse();
    }

    /**
     * Create an instance of {@link GetZipCodeByAddressResponse.GetZipCodeByAddressResult }
     *
     */
    public GetZipCodeByAddressResponse.GetZipCodeByAddressResult createGetZipCodeByAddressResponseGetZipCodeByAddressResult() {
        return new GetZipCodeByAddressResponse.GetZipCodeByAddressResult();
    }

    /**
     * Create an instance of {@link GetSupportCityResponse }
     *
     */
    public GetSupportCityResponse createGetSupportCityResponse() {
        return new GetSupportCityResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link DataSet }{@code >}}
     *
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "DataSet")
    public JAXBElement<DataSet> createDataSet(DataSet value) {
        return new JAXBElement<DataSet>(_DataSet_QNAME, DataSet.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfString }{@code >}}
     *
     */
    @XmlElementDecl(namespace = "http://WebXml.com.cn/", name = "ArrayOfString")
    public JAXBElement<ArrayOfString> createArrayOfString(ArrayOfString value) {
        return new JAXBElement<ArrayOfString>(_ArrayOfString_QNAME, ArrayOfString.class, null, value);
    }

}
