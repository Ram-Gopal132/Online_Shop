

<%@page import="java.sql.Statement"%>
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
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'" );
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	
	response.sendRedirect("AllProductedit.jsp?msg=done");
	
	
}
catch(Exception e)
{
	response.sendRedirect("AllProductedit.jsp?msg=wrong");
	
}

%>