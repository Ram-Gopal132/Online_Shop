
<%@page import="java.sql.Statement"%>

<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String product_id=request.getParameter("id");
String email=request.getParameter("email");
String status="Delivered";

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+product_id+"' and email='"+email+"' and address is not NULL");
	response.sendRedirect("OrderReceived.jsp?msg=delivered");
	
}
catch(Exception e)
{
	System.out.print(e.getMessage());
	response.sendRedirect("OrderReceived.jsp?msg=invalid");

}
%>