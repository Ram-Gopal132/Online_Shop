<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");
String mobilenumber=request.getParameter("mobilenumber");
String payment_method=request.getParameter("payment_method");
String transaction_id="";
transaction_id=request.getParameter("transaction_id");
String status="processing";

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update users set address=?,city=?,state=?,country=?,mobileNumber=? where email=?");
	ps.setString(1, address);
	ps.setString(2, city);
	ps.setString(3, state);
	ps.setString(4, country);
	ps.setString(5, mobilenumber);
	ps.setString(6, email);
	
	ps.executeUpdate();
	PreparedStatement ps1=con.prepareStatement("update cart set address=?,city=?,state=?,country=?,mobileNumber=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY),payment_method=?,transaction_id=?,status=? where email=? and address is NULL");
	ps1.setString(1, address);
	ps1.setString(2, city);
	ps1.setString(3, state);
	ps1.setString(4, country);
	ps1.setString(5, mobilenumber);
	ps1.setString(6, payment_method);
	ps1.setString(7, transaction_id);
	ps1.setString(8, status);
	ps1.setString(9, email);
	
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
	
	
}

catch(Exception e)
{
	System.out.println(e.getMessage());
	
}
%>