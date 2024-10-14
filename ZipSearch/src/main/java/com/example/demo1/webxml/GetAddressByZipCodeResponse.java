
package com.example.demo1.webxml;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAnyElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>anonymous complex type�� Java �ࡣ
 *
 * <p>����ģʽƬ��ָ�������ڴ����е�Ԥ�����ݡ�
 *
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="getAddressByZipCodeResult" minOccurs="0">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;sequence>
 *                   &lt;any/>
 *                 &lt;/sequence>
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "getAddressByZipCodeResult"
})
@XmlRootElement(name = "getAddressByZipCodeResponse")
public class GetAddressByZipCodeResponse {

    protected GetAddressByZipCodeResponse.GetAddressByZipCodeResult getAddressByZipCodeResult;

    /**
     * ��ȡgetAddressByZipCodeResult���Ե�ֵ��
     *
     * @return
     *     possible object is
     *     {@link GetAddressByZipCodeResponse.GetAddressByZipCodeResult }
     *
     */
    public GetAddressByZipCodeResponse.GetAddressByZipCodeResult getGetAddressByZipCodeResult() {
        return getAddressByZipCodeResult;
    }

    /**
     * ����getAddressByZipCodeResult���Ե�ֵ��
     *
     * @param value
     *     allowed object is
     *     {@link GetAddressByZipCodeResponse.GetAddressByZipCodeResult }
     *
     */
    public void setGetAddressByZipCodeResult(GetAddressByZipCodeResponse.GetAddressByZipCodeResult value) {
        this.getAddressByZipCodeResult = value;
    }


    /**
     * <p>anonymous complex type�� Java �ࡣ
     *
     * <p>����ģʽƬ��ָ�������ڴ����е�Ԥ�����ݡ�
     *
     * <pre>
     * &lt;complexType>
     *   &lt;complexContent>
     *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
     *       &lt;sequence>
     *         &lt;any/>
     *       &lt;/sequence>
     *     &lt;/restriction>
     *   &lt;/complexContent>
     * &lt;/complexType>
     * </pre>
     *
     *
     */
    @XmlAccessorType(XmlAccessType.FIELD)
    @XmlType(name = "", propOrder = {
        "any"
    })
    public static class GetAddressByZipCodeResult {

        @XmlAnyElement(lax = true)
        protected Object any;

        /**
         * ��ȡany���Ե�ֵ��
         *
         * @return
         *     possible object is
         *     {@link Object }
         *
         */
        public Object getAny() {
            return any;
        }

        /**
         * ����any���Ե�ֵ��
         *
         * @param value
         *     allowed object is
         *     {@link Object }
         *
         */
        public void setAny(Object value) {
            this.any = value;
        }

    }

}
