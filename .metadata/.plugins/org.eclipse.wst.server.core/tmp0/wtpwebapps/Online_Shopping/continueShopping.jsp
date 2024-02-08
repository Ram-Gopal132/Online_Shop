<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%

String email=session.getAttribute("email").toString();
String status="processing";
try
{
Connection con=ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("update cart set status=? where email=? and status='processing'");
ps.setString(1, status);
ps.setString(2, email);
ps.executeUpdate();
response.sendRedirect("home.jsp");
}

catch(Exception e)
{
	System.out.print(e);
}
%>