
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("Category");
String price=request.getParameter("price");
String active=request.getParameter("active");


try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, category);
	ps.setString(4, price);
	ps.setString(5, active);
	ps.executeUpdate();
	response.sendRedirect("addnewProduct.jsp?msg=done");
	
	
}
catch(Exception e)
{
	response.sendRedirect("addnewProduct.jsp?msg=wrong");
	
}

%>