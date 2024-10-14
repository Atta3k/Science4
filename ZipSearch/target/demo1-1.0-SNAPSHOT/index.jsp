<%@ page import="com.example.demo1.webxml.ChinaZipSearchWebService" %>
<%@ page import="com.example.demo1.webxml.ChinaZipSearchWebServiceSoap" %>
<%@ page import="com.example.demo1.webxml.ArrayOfString" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo1.webxml.GetZipCodeByAddressResponse" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>可支持邮政信息城市查询</title>
</head>
<body>
<p>支持的省份</p>
<%  ChinaZipSearchWebService service=new ChinaZipSearchWebService();
    ChinaZipSearchWebServiceSoap soap=service.getChinaZipSearchWebServiceSoap();
    ArrayOfString province = soap.getSupportProvince();
%>
<%=province.getString()%>

<form method="get">
    <input type="text" name="pro" value="省份">
    <input type="submit" value="提交">
</form>

<%String pro = request.getParameter("pro");
    List<String> list=null;
    if (pro!=null){
   list = soap.getSupportCity(pro).getString();
}
%>
<p>城市</p>
<%=list%>
</body>
</html>
