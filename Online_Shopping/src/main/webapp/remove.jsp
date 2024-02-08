
<%@page import="java.sql.Statement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' or product_id='"+product_id+"' and address is NULL ");
	response.sendRedirect("Mycart.jsp?msg=removed");
}

catch(Exception e)
{
	System.out.println(e.getMessage());
}

%>