
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
 *         &lt;element name="getSupportProvinceCityResult" minOccurs="0">
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
    "getSupportProvinceCityResult"
})
@XmlRootElement(name = "getSupportProvinceCityResponse")
public class GetSupportProvinceCityResponse {

    protected GetSupportProvinceCityResponse.GetSupportProvinceCityResult getSupportProvinceCityResult;

    /**
     * ��ȡgetSupportProvinceCityResult���Ե�ֵ��
     *
     * @return
     *     possible object is
     *     {@link GetSupportProvinceCityResponse.GetSupportProvinceCityResult }
     *
     */
    public GetSupportProvinceCityResponse.GetSupportProvinceCityResult getGetSupportProvinceCityResult() {
        return getSupportProvinceCityResult;
    }

    /**
     * ����getSupportProvinceCityResult���Ե�ֵ��
     *
     * @param value
     *     allowed object is
     *     {@link GetSupportProvinceCityResponse.GetSupportProvinceCityResult }
     *
     */
    public void setGetSupportProvinceCityResult(GetSupportProvinceCityResponse.GetSupportProvinceCityResult value) {
        this.getSupportProvinceCityResult = value;
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
    public static class GetSupportProvinceCityResult {

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
