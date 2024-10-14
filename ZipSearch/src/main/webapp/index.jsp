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
<%--<form method="get">--%>
<%--    <input type="text" name="pro" value="省份">--%>
<%--    <input type="text" name="city" value="城市">--%>
<%--    <input type="submit" value="提交">--%>
<%--</form>--%>
<%--<%--%>
<%--    pro = request.getParameter("pro");--%>
<%--    String city = request.getParameter("city");--%>
<%--    String Info=null;--%>
<%--    GetZipCodeByAddressResponse.GetZipCodeByAddressResult code = null;--%>
<%--    if (city!=null&&pro!=null) {--%>
<%--        System.out.println(pro+city);--%>
<%--        code = soap.getZipCodeByAddress(pro, city, "", "");--%>
<%--//        Info="<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>单1-41号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo2\" msdata:rowOrder=\"1\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>单1-91号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo3\" msdata:rowOrder=\"2\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>东风西路 单27-41号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo4\" msdata:rowOrder=\"3\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>米市街 单1-9号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo5\" msdata:rowOrder=\"4\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双2-128号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo6\" msdata:rowOrder=\"5\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双2-148号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo7\" msdata:rowOrder=\"6\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双2-188号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo8\" msdata:rowOrder=\"7\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双2-74号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo9\" msdata:rowOrder=\"8\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双2-88号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo10\" msdata:rowOrder=\"9\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双22-42号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo11\" msdata:rowOrder=\"10\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双26-86号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo12\" msdata:rowOrder=\"11\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>双4-24号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo13\" msdata:rowOrder=\"12\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>天 西路 单1-21号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo14\" msdata:rowOrder=\"13\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>铁路四居 1-92号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo15\" msdata:rowOrder=\"14\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>铁西中路 单1-121号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo16\" msdata:rowOrder=\"15\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>盐店口北街 单1-143号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo17\" msdata:rowOrder=\"16\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>盐店口南街</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo18\" msdata:rowOrder=\"17\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>迎宾路 单29-77号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo19\" msdata:rowOrder=\"18\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>竹杆巷 1-51号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253001</ZIP>\n" +--%>
<%--//                "</ZipInfo>\n" +--%>
<%--//                "<ZipInfo diffgr:id=\"ZipInfo20\" msdata:rowOrder=\"19\">\n" +--%>
<%--//                "<PROVINCE>山东</PROVINCE>\n" +--%>
<%--//                "<CITY>德州市</CITY>\n" +--%>
<%--//                "<ADDRESS>东风西路 单43-85号</ADDRESS>\n" +--%>
<%--//                "<ZIP>253002</ZIP>";--%>
<%--    }--%>
<%--%>--%>
<%--<p>结果</p>--%>
<%--<%=Info%>--%>
<%--<% if (code != null) {--%>

<%--} %>--%>
