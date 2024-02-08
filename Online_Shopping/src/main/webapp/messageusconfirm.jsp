
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%

String email=session.getAttribute("email").toString();
String title=request.getParameter("title");
String body=request.getParameter("body");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into message(email,title,body)values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2,title);
	ps.setString(3, body);
	
	ps.executeUpdate();
	response.sendRedirect("Messageus.jsp?msg=valid");
}

catch(Exception e)
{
	System.out.println(e.getMessage());
	response.sendRedirect("Messageus.jsp?msg=invalid");

}
%>