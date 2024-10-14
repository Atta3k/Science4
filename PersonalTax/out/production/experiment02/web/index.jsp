
<%@ page import="example.client.PersonalCalTaxServiceLocator" %>
<%@ page import="example.client.PersonalCalTax_PortType" %>
<%@ page import="javax.xml.rpc.ServiceException" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>个人纳税计算</title>
  </head>
  <body>
  <form method="get">
    <input type="text" name="money">
    <input type="submit" value="计算">
  </form>
  <%
    PersonalCalTaxServiceLocator locator = new PersonalCalTaxServiceLocator();
    PersonalCalTax_PortType service = null;
    String s = null,money=null;
    try {
      service = locator.getCalTax();
      money = request.getParameter("money");
      if (money!=null){
        s = service.calTax(money);
      }
    } catch (ServiceException e) {
      throw new RuntimeException(e);
    }
  %>
  <p> 您需要交税：</p>
  <%=s%>
  </body>
</html>
